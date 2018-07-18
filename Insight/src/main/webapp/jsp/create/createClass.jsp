<span class="heading24">Create Grade/Class</span><br>
<style>
td {
	padding: 5px;
}
</style>
<table border="0">
	<tr>
		<td style="width:200px;">Grade Name</td>
		<td><input type="text" name="gradeName"></td>
	</tr>
	<tr>
		<td style="width:200px;">Room Teacher</td>
		<td>
			<select name="roomTeacher" id="">
			    <option value="">-- Select One --</option>
			    <option value="">Mr. Travajo</option>
			    <option value="">Miss. Janine</option>
			    <option value="">Miss. Donna</option>
			    <option value="">Miss. Ryzerski</option>
			</select>
		</td>
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
		<td style="width:200px; vertical-align: top;">Notes/Description</td>
		<td><textarea name="userComments" rows="5" cols="40"></textarea></td>
	</tr>
	<tr>
	<td>&nbsp;</td>
	<!-- <td>&nbsp;</td> -->
	<td>
		<button value="" class="btn-small" onClick='goToContact()'>Save</button>&nbsp;
		<button value="" class="btn-small" onClick='goToContact()'>Cancel</button>&nbsp;
		<button value="" class="btn-small" onClick='goToContact()'>Delete</button>&nbsp
	</td>
	</tr>
</table>