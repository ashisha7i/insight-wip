<span class="heading24">Generate Reports</span><br>
<style>
td {
	padding: 5px;
}
</style>
<table border="0">
	<tr>
		<td style="width:200px;">Report Type:</td>
		<td>
			<select name="reportType" id="">
			    <option value="">-- Select One --</option>
			    <option value="">Attendance</option>
			    <option value="">Grades</option>
			    <option value="">Library</option>
			</select>
		</td>
		<td style="width:200px;">Class/Grade:</td>
		<td>
			<select name="reportGrades">
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
		<td style="width:200px;">Student:</td>
		<td>
			<select>
				<option>--- Select One ---</option>
				<option>Rennie</option>
				<option>Kimberley</option>
				<option>Dacota</option>
				<option>Manoj</option>
				<option>Savir</option>
				<option>Jamie</option>
				<option>Pranav</option>
				<option>Wyatt</option>
				<option>Hiroshi</option>
			</select>
		</td>
	</tr>
	<tr>
		<td style="width:200px;">Start Date</td>
		<td><input type="date" name="userStartDate"></td>
		<td style="width:200px;">End Date</td>
		<td><input type="date" name="userEndDate"></td>
	</tr>
	<tr>
		<td style="width:200px; vertical-align: top;">Notes/Description</td>
		<td><textarea name="userComments" rows="5" cols="40"></textarea></td>
	</tr>
	<tr>
		<td>Report Type:</td>
		<td><input type="radio" value="VIEW" checked>On Screen</input>&nbsp;<input type="radio" value="VIEW">Excel</input></td>
	<tr>
	<td>&nbsp;</td>
	<!-- <td>&nbsp;</td> -->
	<td>
		<button value="" class="btn-small" onClick='goToContact()'>Generate</button>&nbsp;
		<button value="" class="btn-small" onClick='goToContact()'>Reset</button>&nbsp;
	</td>
	</tr>
</table>