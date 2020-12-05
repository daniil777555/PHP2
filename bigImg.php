<?php
  $imgName = $_GET["name"];
  include "./connectToDB/oneImg.php";
  require "vendor/autoload.php";


  $loader = new Twig\Loader\FilesystemLoader("temp");
  $twig = new Twig\Environment($loader);

  echo $twig->render("oneImg.twig", [
    "image" => $path["path"],
  ]);