<?php

$result_list_contact1 = array();

$sql = "SELECT * FROM contact1";

$result =$mysqli->query($sql); 

while ($item=$result->fetch_assoc()){
    $result_list_contact1[]=$item;
}
?>