<?php
  require "vendor/autoload.php";
  include "./connectToDB/connect.php";

  $loader = new Twig\Loader\FilesystemLoader("temp");
  $twig = new Twig\Environment($loader);

  echo $twig->render("index.twig", [
    "images" => $imgArr,
  ]);