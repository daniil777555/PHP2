<?php

namespace App\Controllers;


class Order extends Controller
{
  const STATUS_NEW = 1;
  const STATUS_DELIVERY = 2;
  const STATUS_DONE = 3;
  const STATUS_REJECTED = 4;

  public function index()
  {
    if(isset($_COOKIE["Login"], $_COOKIE["Pass"])){
      $l = $_COOKIE['Login'];
      $userId =  \App\App::getInstance()->getDb()->getLink()
        ->query("SELECT id FROM users_info WHERE login='$l'")
        ->fetchColumn();

        \App\App::getInstance()->getDb()->getLink()
        ->exec("INSERT INTO orders SET user_id=" . (int)$userId . ", status=" . self::STATUS_NEW);

        $orderId = \App\App::getInstance()->getDb()->getLink()->lastInsertId();

        $ids = array_keys($_SESSION["basket"]);
        $pics = \App\App::getInstance()->getDb()->getPicsByIds($ids);

        foreach($pics as $key => $val){
          \App\App::getInstance()->getDb()->getLink()->exec("INSERT INTO orders_pics SET order_id=$orderId, price=" . $val['price'] . ", `count`=" . $_SESSION["basket"][$val['id']]);
        }

        $_SESSION["basket"] = [];
        $this->redirect("/basket");
      
    } else $this->redirect("/login");
  }
}
