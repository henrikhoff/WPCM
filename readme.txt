=== WP Course Manager ===
Contributors: henrikhoff
Donate link: https://github.com/henrikhoff/WPCM
Tags: course, schedule, education, event, events, teacher, lecture, lecturer
Requires at least: 3.0.0
Tested up to: 3.6.1
Stable tag: trunk
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

WordPress Course Manager - a WordPress Plugin to handle courses, lecturers and a schedule of dates when courses are held with one or more lecturer(s).

== Description ==
WordPress Course Manager - a WordPress Plugin to handle courses, lecturers and a schedule of dates when courses are held with one or more lecturer(s).

The plugin lets you manage:

* Lecturers - Name, biography, picture and homepage url.
* Courses - Name, description, lecturers
* Schedule - Course, date, place, url to page/file with more information.

This plugin was developed since I couldn't find any other plugin that provided this functionality, and I needed it for the home page of the Swedish educational company Utbildningsglädje (http://www.utbildningsgladje.nu).

What I needed was to manage lecturers that can hold different courses and create a schedule with courses to be held at different locations.



== Installation ==

How to install WP Course Manager:

1. Upload the folder `WP Course Manager` to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Add information about lecturers, courses and their scheduled events in WP Course Manager settings. 
4. Create 3 pages where the following shortcodes should be placed:
   * [wpcm_lecturers] to list all lecturers
   * [wpcm_courses] to list all courses
   * [wpcm_schedule] to list the schedule
5. In the plugin settings, set what pages contain the different shortcodes.

== Frequently Asked Questions ==

= Why is the FAQ almost empty? =

I haven't received any questions yet...


== Screenshots ==

1. This screen shot description corresponds to screenshot-1.(png|jpg|jpeg|gif). Note that the screenshot is taken from
the directory of the stable readme.txt, so in this case, `/tags/4.3/screenshot-1.png` (or jpg, jpeg, gif)
2. This is the second screen shot

== Changelog ==


= 1.0 =
* Project created
* Basic administrative features, manage lecturers, courses and a schedule.
* Show info about lecturers, courses and the schedule with shortcodes in pages.

== Upgrade Notice ==

No upgrade info for version 1.0.
