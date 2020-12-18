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

      session_start();

      $this->db = new DB($this->config['db']);

      [$uri] = explode('?', $_SERVER['REQUEST_URI']);
      $router = new Router($this->config['routing']);

      if(null !== $route = $router->route($uri)){
        [$controllerName, $action, $params] = $route;
      } else{
        $controllerName = 'index';
        $action = 'index';
      }

      $controllerClass = "App\Controllers\\" . ucfirst($controllerName);
      if($action === ""){
        $action = "index";
      }
      $method = $action;
      // echo $controllerName. " " . $action;
      //$this->checkCockie();

      if(class_exists($controllerClass)){
        $controller = new $controllerClass;
        if(method_exists($controller, $method)){
          $controller->$method($params);
          return;
        }
      }

      (new Index())->error();
    }

    // public function checkCockie()
    // {
    //   if(isset($_COOKIE["Login"]) && isset($_COOKIE["Pass"])){
    //     $_GET["isProfile"] = true;
    //   }
    // }

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