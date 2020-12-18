<?php

  namespace App;

  class Db
  {

    private $link;

    public function __construct($config)
    {
        try {
          $this->link = new \PDO(
            $config['dsn'],
            $config['user'],
            $config['pwd']
          );
        }catch (\PDOException $e) {
          die('Подключение не удалось: ' . $e->getMessage());
        }
    }

    public function getLink(): \PDO
    {
      return $this->link;
    }

    public function checkUser($login, $link)
    {
      try {
        return $link
          ->query("SELECT * FROM users_info WHERE login='$login'")
          ->fetch(\PDO::FETCH_ASSOC);
      } catch (\Throwable $e) {
        return null;
      }
    }

    public function getTableData($tableName)
    {
      try {
        return $this->link
          ->query("SELECT * FROM {$tableName}")
          ->fetchAll(\PDO::FETCH_ASSOC);
      }catch (\Throwable $e) {
        return null;
      }
    }

    public function getById($tableName, $id)
    {
      try {
        return $this->link
          ->query("SELECT * FROM {$tableName} WHERE id = " . (int)$id)
          ->fetch(\PDO::FETCH_ASSOC);
      } catch (\Throwable $e) {
        return null;
      }
    }

    public function getPicsByIds(array $ids)
    {
      if (empty($ids)) {
        return [];
      }
      $stmt = $this->link->query('SELECT * FROM img WHERE id IN (' . implode(',', $ids) . ')');
      return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

  }
