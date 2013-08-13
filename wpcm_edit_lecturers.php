<?PHP

//This page holds the code for editing Lecturers.
//The function WPCM_edit_lecturers() is called from the file wpcm_plugin_options.php.


function WPCM_edit_lecturers() {
	if (!current_user_can('manage_options'))  {
		wp_die( __('You do not have sufficient permissions to access this page.') );
	}

	$action = $_REQUEST['action'];
	$id = $_REQUEST['id'];
	$save = $_REQUEST['save'];
	//echo "action &amp; id &amp; save: ".$action." ".$id." ".$save."</br>";

	echo '<div class="WPCM_manager_wrap">';

	echo "<h1>".__('WP Course Manager')." - ".__('Manage Lecturers')."</h1>";
	
	if ($action=='update_lecturer') {
		update_lecturer($id, $save);
	}
	else if ($action=='delete_lecturer') {
		remove_lecturer($id);
	}
	else if ($action=='add_lecturer') {
		add_lecturer($save);
	}
	else {
		list_all_lecturers();
	}
		
	echo '</div>';

}

function list_all_lecturers() {


	//get all the lecturers from the DB. 
	//get_lecturers() can be found in wpcm_db_access.php
	$lecturers = get_lecturers();
	
	echo "<h2>".__('Manage Lecturers')."</h2>";
	echo "<p>+ <a href=\"admin.php?page=".$_GET['page']."&amp;action=add_lecturer\">".__('Add Lecturer')."</a></p>";

	echo "<table>";
	
	foreach ($lecturers as $lecturer){
		echo "<tr><td><a href=\"admin.php?page=".$_GET['page']."&amp;action=update_lecturer&amp;id=$lecturer->id\" title=\"".__('Edit')." $lecturer->name\">$lecturer->name</a></td>";
		echo "<td><a href=\"admin.php?page=".$_GET['page']."&amp;action=delete_lecturer&amp;id=$lecturer->id\" onclick=\"return confirm('".__('Do you really want to delete the lecturer?')."');\" title=\"".__('Delete')." $lecturer->name\">".__('Delete')."</a></td>";
	}

	echo "</table>";

}

function update_lecturer($id, $save) {
		
	if ($save==1) {	
				
		$name = $_REQUEST['name'];
		$description = $_REQUEST['description'];
		$url = $_REQUEST['url'];
		$image = $_REQUEST['image'];
				
		$data = array(
						'id'=>$id,
						'name'=>htmlspecialchars(stripslashes($name)),
						'description'=>htmlspecialchars(stripslashes($description)),
						'url'=>htmlspecialchars(stripslashes($url)),
						'image'=>htmlspecialchars(stripslashes($image))
					);		

		//set_lecturer() can be found in wpcm_db_access.php
		$id = set_lecturer( $data );
	}
	

	$l = get_lecturers($id);
	$lecturer = $l[0];	
	//print_r($lecturer);
	//echo "</br>NAMN: $lecturer->name";
	?>

	<form id="wpcm_update_lecturer" name="update_lecturer" action="admin.php?page=<?PHP echo $_GET['page']."&amp;action=update_lecturer&amp;id=$lecturer->id"; ?>" method="post">

		<table class="wpcm_admin_update_table">
			<tr>
				<td><?PHP _e('Name:') ?></td><td><input type="text" name="name" maxlength=255 value="<?PHP echo stripslashes($lecturer->name); ?>" /></td>
			</tr>
			<tr>
				<td><?PHP _e('Description:') ?></td><td><textarea name="description" rows="15" cols="40"><?PHP echo stripslashes($lecturer->description); ?></textarea></td>
			</tr>
			<tr>
				<td><?PHP _e('Home page:') ?></td><td><input type="text" name="url" maxlength=255 value="<?PHP echo stripslashes($lecturer->url); ?>" /></td>
			</tr>
			<tr> 
				<td><?PHP _e('Image:') ?></td><td><input type="text" name="image" maxlength=255 value="<?PHP echo stripslashes($lecturer->image); ?>" /></td>
			</tr>
			
		</table>
<!--		<input type="hidden" name="id" value="<?PHP echo $lecturer->id;?>" />-->
		<input type="hidden" name="save" value="1" />
		<input type="submit" value="<?PHP _e('Save'); ?>" />

	</form>


<?PHP	

	echo "<p><a href='admin.php?page=".$_GET['page']."'>" . __('Cancel') . " (" . __('Go back to all lecturers').")</a></p>";
		
}


function remove_lecturer($id) {

	$l = get_lecturers($id);
	$lecturer = $l[0];	
	
	echo "<h2>".__('Deleting Lecturer ').stripslashes($lecturer->name)."</h2>";
	
	
	//Check if the lecturer has scheduled courses?	
	
	delete_lecturer($id);
	
	
	echo '<p class="information">'.__('Done')."</p>";	
	
	list_all_lecturers();
	
}


function add_lecturer() { 
	echo "<h2>".__('Add a new Lecturer')."</h2>";
	
?>
	<form id="wpcm_update_lecturer" name="update_lecturer" action="admin.php?page=<?PHP echo $_GET['page']."&amp;action=update_lecturer"; ?>" method="post">

		<table class="wpcm_admin_update_table">
			<tr>
				<td><?PHP _e('Name:') ?></td><td><input type="text" name="name" maxlength=255 value="<?PHP echo stripslashes($lecturer->name); ?>" /></td>
			</tr>
			<tr>
				<td><?PHP _e('Description:') ?></td><td><textarea name="description" rows="15" cols="40"><?PHP echo stripslashes($lecturer->description); ?></textarea></td>
			</tr>
			<tr>
				<td><?PHP _e('Home page:') ?></td><td><input type="text" name="url" maxlength=255 value="<?PHP echo stripslashes($lecturer->url); ?>" /></td>
			</tr>
			<tr> 
				<td><?PHP _e('Image:') ?></td><td><input type="text" name="image" maxlength=255 value="<?PHP echo stripslashes($lecturer->image); ?>" /></td>
			</tr>
			
		</table>
<!--		<input type="hidden" name="id" value="<?PHP echo $lecturer->id;?>" />-->
		<input type="hidden" name="save" value="1" />
		<input type="submit" value="<?PHP _e('Save'); ?>" />

	</form>
<?PHP

}

?>
