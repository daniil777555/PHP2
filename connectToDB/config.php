<?php
  const SERVER = "localhost";
  const DB = "galary";
  const LOGIN = "root";
  const PASS = "dan777555";
  
  try{
    $connect = mysqli_connect(SERVER, LOGIN, PASS, DB)
    or die("Ошибка при подключении к базе данных");
  } catch(Throwable $e){
    print_r($e);
  }
    
