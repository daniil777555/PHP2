<?php
  require "connectToDB/GetData.php";
  require_once 'vendor/autoload.php';

  $limit = $_GET["limit"] ? $_GET["limit"] : 5;

  $arr = GetData::getInstance()->queryData($limit, 0);
  $num = GetData::getInstance()->getQuantity();

  $loader = new \Twig\Loader\FilesystemLoader("templates");
  $twig = new \Twig\Environment($loader);

echo $twig->render('index.twig', [
  "arr" => $arr,
  "num" => $num["count"]
]);