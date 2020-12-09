<?php
  require "Connect.php";


  class GetData 
  {

    private $data;
    // private $limit;
    // private $offset;

    use Singleton;
    private $link;

    private function __construct()
    {
      $this->link = Connect::getInstance()->getLink();
    }

    public function queryData($limit, $offset)
    {
      try {
        return $this->link
          ->query("SELECT products.products.id, products.name.name, products.description.desc FROM products.products inner join products.name on products.products.name_id = products.name.id inner join products.description on products.products.name_id = products.description.id LIMIT $limit OFFSET $offset")
          ->fetchAll(PDO::FETCH_ASSOC);
      } catch (PDOException $e) {
        echo 'Подключение не удалось: ' . $e->getMessage();
      }
    }

    public function getQuantity()
    {
      try {
        return $this->link
          ->query("SELECT count(*) as count from products.products")
          ->fetch(PDO::FETCH_ASSOC);
      } catch (PDOException $e) {
        echo 'Подключение не удалось: ' . $e->getMessage();
      }
    }

  }
