<?php
  include "config.php";

 // function getImgPath($name) 
 //пытался сделать функцией, поскульку получать имя из массива гет в самом начале файла мне казалось не правильным,
 // но почему то $res ровнялся NULL(если что в строку sql передовал name как в парамерах функции) а без функции все работает
 // {
    try{
      $sql = "select path from img where name='$imgName'";
      $res = mysqli_query($connect, $sql);
    } catch(Throwable $e){
        print_r($e);
    }
  
    $path = mysqli_fetch_assoc($res);
    //var_dump($res);
  //  return $data;
 // }
  