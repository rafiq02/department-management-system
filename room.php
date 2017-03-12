<?php require_once'header.php';?>
<?php include('db_con.php');?>


<div class="container-fluid">
	<div class="row" id="wrapper">
	<?php require_once'menubar.php';?>
	<div class="col-sm-12">
		<div class="panel panel-default">
		<div class="panel-body">

<form action="room.php" method="post">
<div class="form-group">
	<h3>Click button to see room details of the Department</h3>
	<input type="submit" name="btn_submit" value="All Rooms" class="btn btn-danger">
</div>
</form><br/>

<?php
	error_reporting(E_ERROR||E_WARNING);

	if(isset($_POST['btn_submit'])){
	$result=mysqli_query($conn,"SELECT * FROM room");
	while($row=mysqli_fetch_array($result)){
		echo "<hr>";
		echo "<div class='container-fluid' style='background-color:#D8D8D8;'>";
		echo "<div class='row'>";
		echo "<div class='col-sm-12'>";
		echo "<br/>";
		echo "<b>Room NO: &nbsp;</b>".$row['room_no']."<br/>";
		echo "<b>Room Name: &nbsp;</b>".$row['room_name']."<br/>";
		echo "<b>Room Type: &nbsp;</b>".$row['room_type']."<br/>";
		echo "<b>Capacity: &nbsp;</b>".$row['room_capacity'];
		echo "</div>";
		echo "</div>";
		echo "<br/>";
		echo "</div>";

	}
}

?>

</div>
</div>
</div>
</div>
</div>