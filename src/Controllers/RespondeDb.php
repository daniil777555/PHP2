<?php

namespace App\Controllers;


class RespondeDb extends Controller
{
  public function index()
  {
    $id = file_get_contents("php://input");
    $data = \App\App::getInstance()->getDb()-> getById("img", $id);
    $res = json_encode(["path" => $data["path"], "price" => $data["price"]]);
    \App\Controllers\Basket::add2Basket($id);
    echo $res;
  }
}
