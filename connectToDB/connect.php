<?php
  include "config.php";
  
  $res;

  try{
    $sql = "select * from img";
    $res = mysqli_query($connect,$sql);
  } catch(Throwable $e){
    print_r($e);
  }
    
    $imgArr = Array();
    while($data = mysqli_fetch_assoc($res)){
      array_push($imgArr, $data);
    }