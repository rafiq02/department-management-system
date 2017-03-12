<?php require_once'header.php';?>
<?php include('db_con.php');?>


<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">
 
<?php
	error_reporting(E_ERROR||E_WARNING);
	$co=$_REQUEST['year'];
	$op=mysqli_query($conn,"SELECT DISTINCT year FROM course");
?>

<form action="course.php" method="post" name="myForm" role="form">
<div class="form-group">
<label for="year">
   Select One Year:
</label>
	<SELECT name="year">
	<option>Select One</option>
<?php 	  
	    while ($c=mysqli_fetch_array($op)){ 
	    		$course=$c['year'];
	    		if(strcmp ($course,$co) == 0){
	    			$isSelected="selected";
	    		}
	    		else{
	    			$isSelected="";
	    		}
	    	?>
		
		<option value="<?php echo $course; ?>"  <?=$isSelected; ?>   ><?php echo $course; ?></option>
<?php } ?>
	</SELECT><br/>
	<input type="submit" name="submit" value="Search" class="btn btn-danger">
</div><br/>
</form>


<?php
$sum=0;
if($co!='Select One'){
$query=mysqli_query($conn,"SELECT * FROM course WHERE year='$co'");
$toql=mysqli_query($conn,"SELECT credit FROM course WHERE year='$co'");
while ($count=mysqli_fetch_array($toql)) {
	$sum=$sum+$count['credit'];
	
}
echo "<b>Total Credit: </b><b style='color:#0B610B; font-size:16px;'>".$sum."</b>";
while($row=mysqli_fetch_array($query)){
	echo "<hr>";
  	echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
	echo "<div class='row'>";
	echo "<div class='col-sm-12'>";
	echo "<br/>";
	echo "<b>Course ID: &nbsp;</b><b style='font-size:16px; color:#088A85;'>".$row['course_id']."</b><br/>";
    echo "<b>Course Name: &nbsp;</b><i>".$row['name']."</i><br/>";
    echo "<b>Theory/Lab: &nbsp;</b>".$row['type']."<br/>";
    echo "<b>Year: &nbsp;</b>".$row['year']."<br/>";
    echo "<b>Credit: &nbsp;</b><b style='color:#0B610B; font-size:16px;'>".$row['credit']."</b>";
    echo "</div>";
	echo "</div>";
	echo "<br/>";
	echo "</div>";


}
}else {
echo "<i style='color:red;'>Select at least one Year</i>";
}

?>