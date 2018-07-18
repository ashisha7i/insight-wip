<span class="heading24">Manage Grades/Attendance</span><br><br>	
<style>
td {
	padding: 5px;
}
</style>
<table border="0" style="width:100%">
	<tr>
		<td style="width:100px;">Class/Grade:</td>
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
		<td style="width:100px;">&nbsp;</td>
		<td style="width:100px;">Date</td>
		<td><input type="date" name="userStartDate"></td>
	</tr>
	<tr>
		<td><input type="button"  class="btn-small" value="Search"></input></td>
	</tr>
</table>
<hr/>
<div id="gridbox" style="width:100%;height:400px;"></div>  
<div style="width:99.6%; text-align: right; padding-top:10px; padding-bottom:10px;">
<button value="" class="btn-small" onClick='goToContact()'>Save</button>&nbsp;
<button value="" class="btn-small" onClick='goToContact()'>Cancel</button>&nbsp;
</div>
<script>
	mygrid = new dhtmlXGridObject('gridbox');
	
	//the path to images required by grid 
    // mygrid.setImagePath("./css/codebase/imgs/");                 
    mygrid.setImagePath("./css/skins/web/imgs/dhxgrid_web/");                 
    mygrid.setHeader("First Name,Last Name, Present, Absent, Absence<br>Excused?, Notes, Assignment 1 Marks, Assignment 2 Marks, Grade, Action");//the headers of columns  
    mygrid.setInitWidths("200,200,60,60,100,*,100,100,100,100");          //the widths of columns  
    mygrid.setColAlign("left,left,left,left");       //the alignment of columns   
    mygrid.setColTypes("ro,ro,ch,ch,coro,ed,ed,ed,ed,link");                //the types of columns  
    mygrid.setColSorting("int,str,str,int,na,na,na,na,na,na");          //the sorting types   
  //set values for select box in 5th column
	var combobox = mygrid.getCombo(4);
	combobox.put("-","--");
    combobox.put("Y","Yes");
	combobox.put("N","No");
	
    
    mygrid.init();      //finishes initialization and renders the grid on the page
  
    data={
    	    rows:[
    	        { id:1, data: ["John", "Grisham", "0","0","","","20","20","A+","Edit^javascript:alert(1);^_top"]},
    	        { id:2, data: ["Stephen", "King", "0","0","","",20,20,'A+',"Edit^javascript:alert(1);^_top"]},
    	        { id:3, data: ["Theo", " Tijora", "0","0","","",20,20,'A+',"Edit^javascript:alert(1);^_top"]}
    	    ]
    	};
   	mygrid.parse(data,"json"); //takes the name and format of the data source
</script>
