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
?>
<div class="WPCM_manager_wrap">
	<h2><?PHP _e('WordPress Course Manager');?></h2>

    <?PHP	
	if (isset($_REQUEST['lecturer_page']) || isset($_REQUEST['course_page']) || isset($_REQUEST['schedule_page']) || isset($_REQUEST['registration_address']) )
	{
		$lecturer_page = $_REQUEST['lecturer_page'];
		$course_page = $_REQUEST['course_page'];
		$schedule_page = $_REQUEST['schedule_page'];
		$registration_address =  $_REQUEST['registration_address'];

		update_option('wpcm_lecturer_page',$lecturer_page);
		update_option('wpcm_course_page',$course_page);
		update_option('wpcm_schedule_page',$schedule_page);
		update_option('wpcm_registration_address',$registration_address);

		echo '<p class="information">Options saved!</p>';

	}


	$lecturer_page = get_option('wpcm_lecturer_page');
	$course_page = get_option('wpcm_course_page');
	$schedule_page = get_option('wpcm_schedule_page');
	$registration_address = get_option('wpcm_registration_address');
	
	?>
    <div class="WPCM_options_plugin_content_instructions">
        <h3><?PHP _e('Plugin content');?></h3>
        <p><?PHP _e('To manage the plugin content, use the links under WP Course Manager in the menu to the left.');?></p>
    </div>
    <div class="WPCM_options_plugn_setup_instructions">
        <h3><?PHP _e('How to use the plugin');?></h3>
        <p><?PHP _e('To set up the plugin to work as intended, you need to create three pages where the shortcodes will be placed.');?></p>
   
        <ul>
            <li><?PHP _e('One page lists all lecturers, and also displays detailed info about each lecturer. '); _e('Shortcode to put on that page:'); ?> [wpcm_lecturers]</li>
            <li><?PHP _e('One page lists all courses, and also displays detailed info abou each course. '); _e('Shortcode to put on that page:');?> [wpcm_courses]</li>
            <li><?PHP _e('One page lists the schedule, i.e. the dates for all planned course opportunities. '); _e('Shortcode to put on that page:');?> [wpcm_schedule]</li>
        </ul>
        <p>
            <?PHP _e('')?>
        </p>
    </div>
    <div class="WPCM_options_section_1">
        <h3><?PHP _e('Plugin settings');?></h3>
        <form id="wpcm_options" method="post" action="admin.php?page=<?PHP echo $_GET['page'];?>">
            <fieldset>
                <legend><?PHP _e("Select the pages below that are used to display the plugin content.")?></legend>
                <p>
                    <label><?PHP _e("Page that displays");?> <strong> <?PHP _e("lecturers");?></strong>: </label>
                    <select name="lecturer_page">
                        <option value=""><?PHP _e("Select page");?></option>
	
                        <?PHP
                        $all_pages = get_pages();
                        foreach ($all_pages as $page)
                        {
                            $option = '<option value="' . $page->post_name . '" '. ($page->post_name == $lecturer_page ? 'selected' : '') .'>';
                            $option .= $page->post_title;
                            $option .= '</option>';
                            echo $option;
                        }
                        ?>
                    </select>
                    <br/>
                    <?PHP _e("This page should only contain this shortcode: ");?>[wpcm_lecturers]
                </p>
	            <p>
                    <label> <?PHP _e("Page that displays");?> <strong> <?PHP _e("courses")?></strong>: </label>
                    <select name="course_page">
                        <option value=""><?PHP _e("Select page");?></option>
                        <?PHP
                            foreach ($all_pages as $page)
                            {
                                $option = '<option value="' . $page->post_name . '" '. ($page->post_name == $course_page ? 'selected' : '') .'>';
                                $option .= $page->post_title;
                                $option .= '</option>';
                                echo $option;
                            }
                        ?>
                    </select>
                    <br/><?PHP _e("This page should only contain this shortcode: ");?>[wpcm_courses]
                </p>

                <p>
                    <label><?PHP _e("Page that displays");?> <strong><?PHP _e("the schedule");?></strong>: </label>
                    <select name="schedule_page">';
                        <option value=""><?PHP _e("Select page");?></option>
                        <?PHP
                            foreach ($all_pages as $page)
                            {
                                $option = '<option value="' . $page->post_name . '" '. ($page->post_name == $schedule_page ? 'selected' : '') .'>';
                                $option .= $page->post_title;
                                $option .= '</option>';
                                echo $option;
                            }
                        ?>
                    </select>
                    <br/><?PHP _e("This page should only contain this shortcode: ");?>[wpcm_schedule]
                </p>

                <p>
                    <label><?PHP _e("E-mail address to be used when registering for a scheduled course event.");?></label>
                    <input type="email" name="registration_address" value="<?PHP echo $registration_address; ?>" /><br/>
                    <?PHP _e("Leave blank to disable the registration link in the event details."); ?>
                </p>

                <p>
                    <button type="submit"><?PHP _e("Save");?></button>
                </p>

            </fieldset>
        </form>
    </div>
</div>

<?PHP
}
?>
