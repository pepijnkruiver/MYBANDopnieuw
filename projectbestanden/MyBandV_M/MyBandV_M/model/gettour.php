<?php

$result_list_member = array();

$sql = "SELECT * FROM tour";

$result =$mysqli->query($sql); 

while ($item=$result->fetch_assoc()){
    $result_list_tour[]=$item;
}
?>