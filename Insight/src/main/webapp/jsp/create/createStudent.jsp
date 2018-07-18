<span class="heading24">Create Student</span><br>
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
		<td style="width:200px;">Parent First Name</td>
		<td><input type="text" name="userParentFName"></td>
	</tr>
	<tr>
		<td style="width:200px;">Parent Last Name</td>
		<td><input type="text" name="userParentLName"></td>
	</tr>
	<tr>
		<td style="width:200px;">Parent's Email</td>
		<td><input type="text" name="userParentEmail"></td>
	</tr>
	<tr>
		<td style="width:200px;">Student Birth Date</td>
		<td><input type="date" name="userBirthDate"></td>
	</tr>
	<tr>
		<td style="width:200px;">Class/Grade Assigned</td>
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
		<td style="width:200px;">Teacher Assigned</td>
		<td><input type="text" name="userTeacher"></td>
	</tr>
	<tr>
		<td style="width:200px; vertical-align: top;">Notes/Description</td>
		<td><textarea name="userComments" rows="5" cols="40"></textarea></td>
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