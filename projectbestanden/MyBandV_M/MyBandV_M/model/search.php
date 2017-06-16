<?php
$q = ($_GET['q']);
$con = mysqli_connect('127.0.0.1','kutbandje','kutbandje','20313_myband');
//mysqli_connect('localhost','root','','myband');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}
 
mysqli_select_db($con,"myband");
$sql="SELECT * FROM newsarticles WHERE title LIKE '%$q%'";
$result = mysqli_query($con,$sql);
 
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo '<h3>'. $row['title'] . '</h3>';
    echo "<td>" . $row['content'] . "</td><br><br>";
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>