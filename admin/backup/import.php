
<div style="">
<?php


// new data
$file=$_FILES['image']['tmp_name'];
	$image= addslashes(file_get_contents($_FILES['image']['tmp_name']));
	$image_name= addslashes($_FILES['image']['name']);
	$image_size= getimagesize($_FILES['image']['tmp_name']);

	
		move_uploaded_file($_FILES["image"]["tmp_name"],"" . $_FILES["image"]["name"]);

$filename=$_FILES["image"]["name"];

$mysqli_host = 'localhost';
$mysqli_username = 'root';
$mysqli_password = '';
$mysqli_database = 'onlinevoting';

// Connect to MySQL server
$conn = mysqli_connect($mysqli_host, $mysqli_username, $mysqli_password,$mysqli_database);
if(!$conn){
    echo "Database Connection Failed. ". mysqli_error($conn);
    exit;
}


mysqli_query($conn,"SET NAMES 'utf8'");
// Temporary variable, used to store current query

$tbls = mysqli_query($conn,"SELECT table_name FROM information_schema.tables WHERE table_schema = '{$mysqli_database}'");
while($row = mysqli_fetch_assoc($tbls)){
    // echo "DROP TABLE IF EXISTS {$row['table_name']}";
    mysqli_query($conn,"DROP TABLE IF EXISTS {$row['table_name']}");
}
$templine = '';
// Read in entire file
$lines = file($filename);
// Loop through each line
foreach ($lines as $line)
{
// Skip it if it's a comment
if (substr($line, 0, 2) == '--' || $line == '')
    continue;

// Add this line to the current segment
$templine .= $line;
// If it has a semicolon at the end, it's the end of the query
if (substr(trim($line), -1, 1) == ';')
{
    // Perform the query
    mysqli_query($conn,$templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($conn) . '<br /><br />');
    // Reset temp variable to empty
    $templine = '';
}
}
?>
</div>
<div style="text-align: center; margin-top: 50px;">
 Tables imported successfully<br>
 <a href="../admin.php">Back</a>
 </div>