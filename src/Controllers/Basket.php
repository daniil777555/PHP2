<?php

namespace App\Controllers;


class Basket extends Controller
{
  public function index()
  {
    $basket = $this->getBasket();
    $ids = array_keys($basket['pics']);
    $pics = \App\App::getInstance()->getDb()->getPicsByIds($ids);
    $sum = 0;
    foreach ($pics as $key => $val) {
        $count = $basket['pics'][$val['id']];
        $pics[$key]['count'] = $count;
        $sum += $pics[$key]['sum'] = $count * $val['price'];
    }
    $this->render("basket.twig", [
      'sum' => $sum,
      'pics' => $pics,
    ]);
  }

  public static function getBasket()
  {
    if (!isset($_SESSION['basket'])) {
      $_SESSION['basket'] = [];
    }
    return [
      'count' => array_sum($_SESSION['basket']),
      'pics' => $_SESSION['basket'],
    ];
  }

  public static function cleanBasket()
  {
    $_SESSION['basket'] = [];
    self::redirect("/");
  }

  public static function add2Basket($id)
  {
    if (!isset($_SESSION['basket'])) {
      $_SESSION['basket'] = [];
    }

    $_SESSION['basket'][$id]++;
  }

  public static function getBasketData()
  {

  }
}