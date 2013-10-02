//if uninstall not called from WordPress exit
if ( !defined( 'WP_UNINSTALL_PLUGIN' ) )
    exit();

// For Single site
if ( !is_multisite() )
{
    delete_option('wpcm_lecturer_page');
    delete_option('wpcm_course_page');
    delete_option('wpcm_schedule_page');
    delete_option('wpcm_registration_address');
}

global $wpdb;

$table_name_1 = $wpdb->prefix . "wpcm_lecturers";
$table_name_2 = $wpdb->prefix . "wpcm_courses";
$table_name_3 = $wpdb->prefix . "wpcm_course_holders";
$table_name_4 = $wpdb->prefix . "wpcm_schedule";

$sql_1 = "DROP TABLE IF EXISTS" . $table_name_1";
$sql_2 = "DROP TABLE IF EXISTS" . $table_name_2";
$sql_3 = "DROP TABLE IF EXISTS" . $table_name_3";
$sql_4 = "DROP TABLE IF EXISTS" . $table_name_4";

$wpdb->query($sql_1);
$wpdb->query($sql_2);
$wpdb->query($sql_3);
$wpdb->query($sql_4);
