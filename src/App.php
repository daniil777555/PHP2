<?php
  namespace App;

  use App\Controllers\Index;
  use \App\traits\Singleton;

  class App
  {
    use Singleton;

    private $config;

    public function run()
    {
      $this->db = new DB($this->config['db']);

      [$uri] = explode('?', $_SERVER['REQUEST_URI']);
      [$controllerName, $action, $param] = explode('/', trim($uri, '/'));

      if (empty($controllerName)) {
        $controllerName = 'index';
      }

      if (empty($action)) {
        $action = 'index';
      }

      $controllerClass = "App\Controllers\\" . ucfirst($controllerName);
      $method = $action;

      $this->checkCockie();

      if(class_exists($controllerClass)){
        $controller = new $controllerClass;
        if(method_exists($controller, $method)){
          $controller->$method($param);
          return;
        }
      }

      (new Index())->error();
    }

    public function checkCockie(){
      if(isset($_COOKIE["Login"]) && isset($_COOKIE["Pass"])){
        $_GET["isProfile"] = true;
      }
    }

    public function getDb(): DB
    {
        return $this->db;
    }

    public function setConfig($cofig)
    {
      $this->config = $cofig;
    }

    public function getConfig()
    {
      return $this->config;
    }
  }