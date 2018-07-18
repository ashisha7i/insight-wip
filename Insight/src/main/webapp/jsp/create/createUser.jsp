<span class="heading24">Create User</span><br>
<style>
td {
	padding: 5px;
}
</style>
<table border="0">
	<tr>
		<td style="width:200px;">First Name</td>
		<td><input type="text" name="userFName"></td>
	</tr>
	<tr>
		<td style="width:200px;">Last Name</td>
		<td><input type="text" name="userLName"></td>
	</tr>
	<tr>
		<td style="width:200px;">Email</td>
		<td><input type="text" name="userEmail"></td>
	</tr>
	<tr>
		<td style="width:200px; vertical-align: top;">Notes/Description</td>
		<td><textarea name="userComments" rows="5" cols="40"></textarea></td>
	</tr>
	<tr>
		<td style="width:200px;">Start Date</td>
		<td><input type="date" name="userStartDate"></td>
	</tr>
	<tr>
		<td style="width:200px;">End Date</td>
		<td><input type="date" name="userEndDate"></td>
	</tr>
	<tr>
		<td style="width:200px;">Roles</td>
		<td>
			<select name="userRoles">
				<option>--- Select One ---</option>
				<option>ADMIN</option>
				<option>TEACHER</option>
				<option>STUDENT</option>
			</select>
		</td>
	</tr>
	<tr>
		<td style="width:200px;">Grades Assigned</td>
		<td>
			<select name="userGrades">
				<option>--- Select One ---</option>
				<option>Kindergarten 1</option>
				<option>Kindergarten 2</option>
				<option>Preperatory 1</option>
				<option>Preperatory 2</option>
				<option>Early Childhood Class</option>
			</select>
		</td>
	</tr>
	<tr>
	<td>&nbsp;</td>
	<!-- <td>&nbsp;</td> -->
	<td>
		<button value="" class="btn-small" onClick='goToContact()'>Create</button>&nbsp;
		<button value="" class="btn-small" onClick='goToContact()'>Modify/Save</button>&nbsp;
		<!-- <button value="" class="btn-small" onClick='goToContact()'>Contact Us</button>&nbsp; -->
	</td>
	</tr>
</table>