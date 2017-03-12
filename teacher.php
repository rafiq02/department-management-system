<?php require_once'header.php';?>
<?php include('db_con.php');?>

<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">


<form action="teacher.php" method="post" name="myForm" role="form">
<div class="form-group">
	<h3>Click button to see all teachers of CSE-RU</h3>
	<input type="submit" name="btn_submit" value="all teachers" class="btn btn-danger">
</div>
</form><br/>



<?php
error_reporting(E_ERROR||E_WARNING);
	$ty=$_REQUEST['type'];
	$op=mysqli_query($conn,"SELECT DISTINCT type FROM teacher");
	$c=mysqli_query($conn,"SELECT COUNT(*) FROM teacher WHERE type='$ty'");
	while ($cp=mysqli_fetch_array($c)) {
		//echo "<b>Total: </b><b style='color:#0B610B;'>".$cp['COUNT(*)']."</b>";
	
?>

<form action="teacher.php" method="post" name="myForm" role="form">
<div class="form-group">
<label for="type">
   	Select Type:
</label>
	<SELECT name="type" id="type" >
	<option>Select One</option>
<?php 	  
	    while ($t=mysqli_fetch_array($op)){ 
	    		$type=$t['type'];
	    		if(strcmp ($type,$ty) == 0){
	    			$isSelected="selected";
	    		}
	    		else{
	    			$isSelected="";
	    		}
	    	?>
		
		<option value="<?php echo $type; ?>"  <?=$isSelected; ?>   ><?php echo $type; ?></option>
<?php } ?>
	</SELECT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<?php echo "<b>Total: </b><b style='color:#0B610B;'>".$cp['COUNT(*)']."</b>"; } ?><br/>
	<input type="submit" name="submit" value="Search" class="btn btn-danger">
</div>
</form>


<?php
	$st=$_REQUEST['status'];
	$op1=mysqli_query($conn,"SELECT DISTINCT status FROM teacher");
	$c1=mysqli_query($conn,"SELECT COUNT(*) FROM teacher WHERE status='$st'");
	while ($cp1=mysqli_fetch_array($c1)) {
		//echo "<b>Total: </b><b style='color:#0B610B;'>".$cp1['COUNT(*)']."</b>";
	
?>

<form action="teacher.php" method="post" name="myForm" role="form">
<div class="form-group">
<label for="status">
   	Select Status:
</label>
	<SELECT name="status" id="status" >
	<option>Select One</option>
<?php 	  
	    while ($s=mysqli_fetch_array($op1)){ 
	    		$status=$s['status'];
	    		print_r($s);
	    		if(strcmp ($status,$st) == 0){
	    			$isSelected="selected";
	    		}
	    		else{
	    			$isSelected="";
	    		}
	    	?>
		
		<option  value="<?php echo $status; ?>"  <?=$isSelected; ?>   ><?php echo $status; ?></option>
<?php } ?>
	</SELECT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<?php echo "<b>Total: </b><b style='color:#0B610B;'>".$cp1['COUNT(*)']."</b>"; } ?><br/>
	<input type="submit" name="submit" value="Search" class="btn btn-danger">
</div>
</form>



<?php

if(isset($_POST['btn_submit'])){
	$result=mysqli_query($conn,"SELECT * FROM teacher");
	while($row=mysqli_fetch_array($result)){
		echo "<hr>";
		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-md-6'>";
		echo "<br/>";
		echo "<b style='font-size:16px; color:#088A85;'>".$row['name']."</b><br/>";
		echo "<b>".$row['type']."</b><br/>";
		echo "</div>";
		echo "<div class='col-md-6'>";
		echo '<a href="teacherinfo.php?id=' . $row['t_id'] . '"><b class="btn btn-info">Details</b></a>' ; 
	    echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";

	}
}


//search by type
if($ty!='Select One'){
$query=mysqli_query($conn,"SELECT * FROM teacher WHERE type='$ty'");

while($row=mysqli_fetch_array($query)){
		echo "<hr>";
		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-md-6'>";
		echo "<br/>";
		echo "<b style='font-size:16px; color:#088A85;'>".$row['name']."</b><br/>";
		echo "<b>".$row['type']."</b><br/>";
		echo "</div>";
		echo "<div class='col-md-6'>";
		echo '<a href="teacherinfo.php?id=' . $row['t_id'] . '"><b class="btn btn-info">Details</b></a>' ; 
	    echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
}else {
echo "<i style='color:red;'>Select at least one Type</i>";
}


//search by status
if($st!='Select One'){
$query=mysqli_query($conn,"SELECT * FROM teacher WHERE status='$st'");

while($row=mysqli_fetch_array($query)){
		echo "<hr>";
		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-md-6'>";
		echo "<br/>";
		echo "<b style='font-size:16px; color:#088A85;'>".$row['name']."</b><br/>";
		echo "<b>".$row['type']."</b><br/>";
		echo "</div>";
		echo "<div class='col-md-6'>";
		echo '<a href="teacherinfo.php?id=' . $row['t_id'] . '"><b class="btn btn-info">Details</b></a>' ; 
	    echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";
}
}else {
echo "<i style='color:red;'>Select at least one Status</i>";
}
?>

</div>
</div>
</div>
</div>
</div>