<?php
  require "trait/singleton.php";

  class Connect
  {
    

    private const TABLE_PRODUCTS = "products";

    public static $config = [
      "dsn" => "mysql:dbname=products; host=localhost",
      "user" => "root",
      "pwd" => "dan777555",
    ]; 

    private $link;

    use Singleton;

    public function getLink()
    {
      return $this->link;
    }

    private function __construct()
      {
        try {
          return $this->link = new PDO(
            self::$config["dsn"],
            self::$config["user"],
            self::$config["pwd"],
          );
      } catch (PDOException $e) {
          echo 'Подключение не удалось: ' . $e->getMessage();
      }
      }
  }

