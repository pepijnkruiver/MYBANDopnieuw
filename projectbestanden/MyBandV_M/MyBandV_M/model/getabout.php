<?php

$result_list_abt = array();

$sql = "SELECT * FROM about";

$result =$mysqli->query($sql); 

while ($item=$result->fetch_assoc()){
    $result_list_abt[]=$item;
}
?>