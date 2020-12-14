<?php

namespace App\Models;

class AddUser
{
  public static function reg($login, $pass)
  {
    $mdPass = md5($pass);
    $link = \App\App::getInstance()->getDb()->getLink();
    $isuser = \App\App::getInstance()->getDb()->checkUser($login, $link);
    
    if(!$isuser["login"]){
      $stmt = $link->prepare('INSERT INTO users.users_info SET login=:login, pass=:pass');
      $stmt->bindParam(':login', $login, \PDO::PARAM_STR);
      $stmt->bindParam(':pass', $mdPass, \PDO::PARAM_STR);
      $stmt->execute();
      setcookie("Login", $login, time()+3600 * 24 * 49, '/');
      setcookie("Pass", $mdPass, time()+3600 * 24 * 49, '/');
      return true;
    } else return false;
  }
}
