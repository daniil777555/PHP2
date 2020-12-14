<?php

namespace App\Models;

class Images
{
  public static function getAll(){
    return \App\App::getInstance()->getDb()->getTableData("img");
  }
}
