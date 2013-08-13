=== WP Course Manager ===
Contributors: henrikhoff
Donate link: https://github.com/henrikhoff/WPCM
Tags: course, schedule, education, event, events, teacher, lecture, lecturer
Requires at least: 3.0.0
Tested up to: 3.4.1
Stable tag: trunk
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

WordPress Course Manager - a WordPress Plugin to handle courses, lecturers and a schedule of dates when courses are held with one or more lecturer(s).

== Description ==
This plugin was developed since I couldn't fins any other plugin that provided this functionality, and I needed it for the home page of the Swedish educational company Utbildningsglädje (http://www.utbildningsgladje.nu).

What I needed was to manage lecturers that can hold different courses and create a schedule with courses to be held at different locations.

The plugin lets you manage:
*   Lecturers - Name, biography, picture and homepage url.
*   Courses - Name, description, lecturers
*   Schedule - Course, date, place, url to page/file with more information.



== Installation ==

How to install WP Course Manager:

1. Upload the folder `WP Course Manager` to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Add information about lecturers, courses and their scheduled events in WP Course Manager settings. 
4. Place the following shortcodes in your pages or posts:
   * [wpcm_lecturers] to list all lecturers
   * [wpcm_courses] to list all courses
   * [wpcm_schedule] to list the schedule

== Frequently Asked Questions ==

= Why is the FAQ almost empty? =

I haven't received any questions yet...


== Screenshots ==

1. This screen shot description corresponds to screenshot-1.(png|jpg|jpeg|gif). Note that the screenshot is taken from
the directory of the stable readme.txt, so in this case, `/tags/4.3/screenshot-1.png` (or jpg, jpeg, gif)
2. This is the second screen shot

== Changelog ==


= 0.1 =
* Project created
* Basic administrative features, manage lecturers, courses and a schedule.

== Upgrade Notice ==


= 0.2 =
This version fixes a security related bug.  Upgrade immediately.

== Arbitrary section ==

You may provide arbitrary sections, in the same format as the ones above.  This may be of use for extremely complicated
plugins where more information needs to be conveyed that doesn't fit into the categories of "description" or
"installation."  Arbitrary sections will be shown below the built-in sections outlined above.

== A brief Markdown Example ==

Ordered list:

1. Some feature
1. Another feature
1. Something else about the plugin

Unordered list:

* something
* something else
* third thing

Here's a link to [WordPress](http://wordpress.org/ "Your favorite software") and one to [Markdown's Syntax Documentation][markdown syntax].
Titles are optional, naturally.

[markdown syntax]: http://daringfireball.net/projects/markdown/syntax
            "Markdown is what the parser uses to process much of the readme file"

Markdown uses email style notation for blockquotes and I've been told:
> Asterisks for *emphasis*. Double it up  for **strong**.

`<?php code(); // goes in backticks ?>`
 
