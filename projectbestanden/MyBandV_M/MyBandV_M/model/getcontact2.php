<?php

$result_list_contact2 = array();

$sql = "SELECT * FROM contact2";

$result =$mysqli->query($sql); 

while ($item=$result->fetch_assoc()){
    $result_list_contact2[]=$item;
}
?>