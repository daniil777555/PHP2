<?php
  error_reporting(E_ALL & ~E_NOTICE);

  require '../vendor/autoload.php';
  
  $config = require '../config/config.php';
  
  \App\App::getInstance()->setConfig($config);
  \App\App::getInstance()->run();