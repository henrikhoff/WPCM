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
	echo '<div class="wrap">';
	echo '<h2>'.__('WordPress Course Manager').'</h2>';
	echo '<p>'.__('Here is where any plugin settings should be changed if there where any.').'</p>';
	echo '<p>'.__('To manage the plugin content, use the links under WP Course Manager in the menu to the left.').'</p>';
	echo '</div>';

}


?>