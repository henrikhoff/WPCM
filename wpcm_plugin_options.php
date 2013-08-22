<?PHP

function WPCM_options_menu() {
	//Plugin settings page. The Code is below, in this file.
	add_menu_page(__('WP Course Manager'), __('WP Course Manager'), 'manage_options', 'WPCM_top_options_page', 'WPCM_plugin_options');
	
	//Submenu page to edit Lecturers. The code is in the file wpcm_edit_lecturers.php	
	add_submenu_page( 'WPCM_top_options_page', __('WP Course Manager - Edit Lecturers'), __('Edit Lecturers'), 'manage_options', 'WPCM_edit_lecturers', 'WPCM_edit_lecturers');

	//Submenu page to edit Courses. The code is in the file wpcm_edit_courses.php
	add_submenu_page( 'WPCM_top_options_page', __('WP Course Manager - Edit Courses'), __('Edit Courses'), 'manage_options', 'WPCM_edit_courses', 'WPCM_edit_courses');
	
	//Submenu page to edit the schedule. The code is in the file wpcm_edit_schedule.php	
	add_submenu_page( 'WPCM_top_options_page', __('WP Course Manager - Edit Schedule'), __('Edit Schedule'), 'manage_options', 'WPCM_edit_schedule', 'WPCM_edit_schedule');
}
			

function WPCM_plugin_options() {
	if (!current_user_can('manage_options'))  {
		wp_die( __('You do not have sufficient permissions to access this page.') );
	}

	echo '<div class="WPCM_manager_wrap">';
	echo '<h2>'.__('WordPress Course Manager').'</h2>';
	
	if (isset($_REQUEST['lecturer_page']) || isset($_REQUEST['course_page']) || isset($_REQUEST['schedule_page']) )
	{
		$lecturer_page = $_REQUEST['lecturer_page'];
		$course_page = $_REQUEST['course_page'];
		$schedule_page = $_REQUEST['schedule_page'];

		update_option('wpcm_lecturer_page',$lecturer_page);
		update_option('wpcm_course_page',$course_page);
		update_option('wpcm_schedule_page',$schedule_page);

		echo '<p class="information">Options saved!</p>';

	}


	$lecturer_page = get_option('wpcm_lecturer_page');
	$course_page = get_option('wpcm_course_page');
	$schedule_page = get_option('wpcm_schedule_page');
	
	
	echo '<p>'.__('To manage the plugin content, use the links under WP Course Manager in the menu to the left.').'</p>';
	
	$all_pages = get_pages();
	
	echo '<form id="wpcm_options" method="post" action="admin.php?page='. $_GET['page'].'">';
	echo '<fieldset>';
	echo '<legend>'.__("Select the pages below that are used to display the plugin content.").'</legend>';	
	
	echo '<p><label>'.__("Page that displays").' <strong>' .__("lecturers").'</strong>: </label>';
	echo '<select name="lecturer_page">';
	echo '<option value="">'.__("Select page").'</option>';
	foreach ($all_pages as $page)
	{
		$option = '<option value="' . $page->post_name . '" '. ($page->post_name == $lecturer_page ? 'selected' : '') .'>';
		$option .= $page->post_title;
		$option .= '</option>';
		echo $option;
	}
	echo '</select>';
	echo '<br/>'.__("This page should only contain this shortcode: ") . '[wpcm_lecturers]';
	echo '</p>';
	
	echo '<p><label>'.__("Page that displays").' <strong>' .__("courses").'</strong>: </label>';
	echo '<select name="course_page">';
	echo '<option value="">'.__("Select page").'</option>';
	foreach ($all_pages as $page)
	{
		$option = '<option value="' . $page->post_name . '" '. ($page->post_name == $course_page ? 'selected' : '') .'>';
		$option .= $page->post_title;
		$option .= '</option>';
		echo $option;
	}
	echo '</select>';
	echo '<br/>'.__("This page should only contain this shortcode: ") . '[wpcm_courses]';
	echo '</p>';
	
	
	echo '<p><label>'.__("Page that displays").' <strong>' .__("the schedule").'</strong>: </label>';
	echo '<select name="schedule_page">';
	echo '<option value="">'.__("Select page").'</option>';
	foreach ($all_pages as $page)
	{
		$option = '<option value="' . $page->post_name . '" '. ($page->post_name == $schedule_page ? 'selected' : '') .'>';
		$option .= $page->post_title;
		$option .= '</option>';
		echo $option;
	}
	echo '</select>';
	echo '<br/>'.__("This page should only contain this shortcode: ") . '[wpcm_schedule]';
	echo '</p>';
	
	
	echo '<p><button type="submit">'.__("Save").'</button></p>';	
	
	echo '</fieldset></form>';
	echo '</div>';

}

?>
