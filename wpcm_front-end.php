<?PHP


//Triggered by shortcode wpcm_lecturers (defined in wp-course-manager.php)
function WPCM_list_lecturers($content=null) {
	$lecturer = $_REQUEST['lecturer'];	
	
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
		$output .= "<li><a href='?lecturer=$l->id'>$l->name</a></li>";		
		
		}

	$output .= "</ul>";
	$output .= "</div>";	
	
	return $output;
	}
	
function WPCM_show_one_lecturer($id) {
	$lecturers = get_lecturers($id);
	
	$output = "<div class='WPCM_content WPCM_lecturers'>";
	
	$output .= "<h2>".$lecturers[0]->name."</h2>";		
	$output .= "<div id='WPCM_lecturer_image'>";
	$output .= "<img src='".$lecturers[0]->image."' alt='Porträtt av föreläsaren' label='".$lecturers[0]->name."' />";
	$output .= "</div>";
	$output .= "<p>";
	$output .= $lecturers[0]->description;
	$output .= "</p>";
	$output .= "</div>";	
	
	return $output;
	
	}	
	
//Triggered by shortcode wpcm_courses (defined in wp-course-manager.php)
function WPCM_list_courses($conten=null){
	return "ToDo: List all courses.";	
	}	

//Triggered by shortcode wpcm_schedule (defined in wp-course-manager.php)
function WPCM_list_schedule($content=null){
	return "ToDo: List the schedule.";
	
	}
	
	
?>