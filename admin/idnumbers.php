<?php 
session_start();
if(!isset($_SESSION['SESS_MEMBER_ID']) || (isset($_SESSION['SESS_MEMBER_ID']) && $_SESSION['SESS_MEMBER_ID'] <= 0))
header('location:../index.php');
?>
<html>
<head>
<title>
	School Admin Panel
</title>
<link rel="icon" type="image/png" href="../Nemsu_logo.png" />
<!-- CSS Style -->
<link rel="stylesheet" href="admin.css">
<script src="argiepolicarpio.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<!--sa poip up-->
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
</head>
<body>
	<div id="top">
		<div class="logo">
			<img src="../Nemsu_logo.png" style="width: 44px;">
		</div>
		<div class="welcome">
			<img alt="" src="img/admin.png" height="24px" width="24px">
			<span>Admin</span>
		</div>
	</div>
	<div class="container  clearfix">
		<div class="one-third1 column">
			<ul>
				<li><a href="index.php"><img alt="" ><span>Dash Board</span></a></li>
				<li><a href="winner.php"><img alt="" ><span>Winner</span></a></li>
				<li><a href="candidates.php"><img alt="" ><span>Candidates</span></a></li>
				<li><a href="parties.php"><img alt="" ><span>Parties</span></a></li>
				<li><a href="students.php"><img alt="" ><span>Voters</span></a></li>
				<li class="active"><a href="idnumbers.php"><img alt="" ><span>Student Information</span></a></li>
				<li><a href="admin.php"><img alt="" ><span>Admin Acount</span></a></li>
				<li><a href="course.php"><img alt="" ><span>Course</span></a></li>
				<li><a href="position.php"><img alt="" ><span>Position</span></a></li>
				<li><a href="../index.php"><img alt="" ><span>Logout</span></a></li>
			</ul>
		</div>
		<div class="two-thirds1 column">
			<div class="thewraper">
			<div id="formdesign"><input type="text" name="filter" value="" id="filter" placeholder="search..." autocomplete="off" /></div>
			<a rel="facebox" href="addidnum.php"> Add ID Number </a>
			<table id="resultTable" data-responsive="table">
				<thead>
					<tr>
						<th> ID Number </th>
						<th> Name </th>
						<th> Course </th>
						<th> Status </th>
						<th> Action </th>
					</tr>
				</thead>
				<tbody>
					<?php
						include('../connect.php');
						$result = $db->prepare("SELECT * FROM list_stu_num");
						$result->execute();
						for($i=0; $row = $result->fetch(); $i++){
					?>
					<tr class="record">
						<td><?php echo $row['id_number']; ?></td>
						<td><?php echo $row['name']; ?></td>
						<td><?php echo $row['course']; ?></td>
						<td><?php echo $row['status']; ?></td>
						<td><a href="#" id="<?php echo $row['id']; ?>" class="delbutton" title="Click To Delete">Delete</a></td>
					</tr>
					<?php
						}
					?>
				</tbody>
			</table>
			</div>
		</div>
	</div>
	<div id="footer">
		<div class="copyrights">North Easthern Mindanao State University</div>
	</div>
	<script src="js/jquery.js"></script>
  <script type="text/javascript">
$(function() {


$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
 if(confirm("Sure you want to delete this update? There is NO undo!"))
		  {

 $.ajax({
   type: "GET",
   url: "deleteidnum.php",
   data: info,
   success: function(){
   
   }
 });
         $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");

 }

return false;

});

});
</script>
</body>
</html>