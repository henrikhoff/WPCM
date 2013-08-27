<?PHP

//replaces one (1) new-line in a text with <br> tag
//replaces two (2) new-lines in a text with </p><p> tags.
//this assumes that the text will be put inside <p> tags in the page where it will be displayed.
function text2html($text)
{
	$text = str_replace("\r\n\r\n","</p><p>",$text);
	$text = str_replace("\r\n","<br/>",$text);
	return $text;
}

//Triggered by shortcode wpcm_lecturers (defined in wp-course-manager.php)
function WPCM_list_lecturers($content=null) {
	$lecturer = $_REQUEST['id'];	
	
	if ($lecturer) {
		$output = WPCM_show_one_lecturer($lecturer);
	}
	else {
		$output = WPCM_list_all_lecturers();
	}
	return $output;
}	


function WPCM_list_all_lecturers() {
	$lecturers = get_lecturers();

	$output = "<div class='WPCM_content WPCM_lecturers'>";	
	$output .= "<ul>";
	
	foreach ($lecturers as $l) {
		$output .= "<li><a href='?id=$l->id'>$l->name</a></li>";		
		
		}

	$output .= "</ul>";
	$output .= "</div>";	
	
	return $output;
	}
	
function WPCM_show_one_lecturer($id) {
	
	$lecturers = get_lecturers($id);
	$courses = get_lecturers_courses($id);
	
	$courses_page = get_option('wpcm_course_page');
	
	$name = stripslashes($lecturers[0]->name);
	$image = $lecturers[0]->image;
	$description = text2html(stripslashes($lecturers[0]->description));
	$url = $lecturers[0]->url;
	
	
	$output = "<div class='WPCM_content WPCM_lecturers'>";
	
	$output .= "<h2>".$name."</h2>";		
	$output .= "<div id='WPCM_lecturer_image'>";
	$output .= "<img src='".$image."' alt='".__("Portrait of the lecturer")."' title='".$name."' />";
	$output .= "</div>";
	$output .= "<p>";
	$output .= $description;
	$output .= "</p>";
	$output .= "<div>";
	$output .= __("Home page").": <a href='". $url ."' target='_blank' title='".$url."'>".$url."</a>";
	$output .= "</div>";
	
	$output .= "<h3>".__("Courses")."</h3>";
	$output .= "<p>" . $name . " " . __("holds the following courses:") ."</p>";
	$output .= "<ul>";
	
	//$courses_page holds the short-hand url to the page where the shortcode for the courses is placed. 
	//This is saved with set_option() in the plugin settings, and if that setting is not set by the user, 
	//this value will be empty. In that case, we will not create any links to the courses.
	if($courses_page != '')		
	{
			foreach ($courses as $course)
			{
				$output .= "<li><a href=\"".$courses_page."?id=$course->id\" title=\"$course->title\">$course->title</a></li>";
			}
	}
	else
	{
			foreach ($courses as $course)
			{
				$output .= "<li>$course->title</li>";
			}
	}

	$output .= "</ul>";
	
	$output .= "</div>";	
		
	return $output;
	
	}	
	
//Triggered by shortcode wpcm_courses (defined in wp-course-manager.php)
function WPCM_list_courses($conten=null){
	$course = $_REQUEST['id'];	
	
	if ($course) {
		$output = WPCM_show_one_course($course);
	}
	else {
		$output = WPCM_list_all_courses();
	}
	return $output;	
	
}

function WPCM_list_all_courses(){
	
	$courses = get_courses();
	
	$output = "<div class='WPCM_content WPCM_courses'>";
	$output .= "<ul>";
	
	foreach ($courses as $course)
	{
		$output .= "<li><a href='?id=".$course->id."' >".$course->title."</a></li>";	
	}

	$output .= "</ul></div>";

	return $output;

}	

function WPCM_show_one_course($id) {
	$course = get_courses($id);
	$lecturers = get_course_holders($id);
	$dates = get_schedule($id);
	
	$lecturer_page = get_option('wpcm_lecturer_page');	
	
	$title = stripslashes($course[0]->title);
	$short_descr = text2html(stripslashes($course[0]->short_description));
	$description = text2html(stripslashes($course[0]->description));
	$target = stripslashes($course[0]->target);
	
	$output .= "<div class='WPCM_content WPCM_courses'>";
	
	$output .= "<h2>".$course[0]->title."</h2>";
	$output .= "<div class='WPCM_course_ingress'><p>".$short_descr."</p></div>";
	
	$output .= "<h3>".__('Lecturers')."</h3>";
	
	foreach ( $lecturers as $lecturer)
	{
		$output .= "<div class='WPCM_course_holder'>";
		$output .= "<a href='".$lecturer_page."?id=".$lecturer->id."'>";
		$output .= "<img src='".$lecturer->image."' alt='".stripslashes($lecturer->name)."' /><br/>";
		$output .= stripslashes($lecturer->name)."</a>";
		$output .= "</div>";
	}
	 
	
	$output .= "<h3>".__('Description')."</h3>";
	$output .= "<div class='WPCM_course_description'><p>".$description."</p></div>";

	$output .= "<h3>".__('Target group')."</h3>";	
	$output .= "<p class='WPCM_course_target'>".$target."</p>";
	
	$output .= "<h3>".__('Dates')."</h3>";
	$output .= "<ul>";
	
	if (isset($dates[0]))
	{
		foreach ( $dates as $date )
		{
			$output .= "<li>".$date->date. ", ".$date->city."</li>";
		}
	
	}
	else
	{
		$output .= "<li>".__('No scheduled dates for this course')."</li>"; 	
	}
	
	
	
	$output .= "</ul>";	
	
	$output .= "</div>";
	
	return $output;	
	
}

//Triggered by shortcode wpcm_schedule (defined in wp-course-manager.php)
function WPCM_list_schedule($content=null){
	return "ToDo: List the schedule.";
	
	}
	
	
?>