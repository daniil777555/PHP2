<?php 
  require "Watch.php";


  class Product{
    private $price;
    private $name;
    private $description;
    private $brend;

    public function __construct($name, $brend, $description, $price){
      $this->name = $name;
      $this->brend = $brend;
      $this->description = $description;
      $this->price = $price;
    }

    public function getArr(){
      return array(
        "name" => $this->name,
        "brend" => $this->brend,
        "description" => $this->description,
        "price" => $this->price
      );
      
    }
  }

  $arr = [
    new Product("strap", "Hublot", "any text", "200"),
    new Watch("Watch", "Hublot", "any text", "10000", "something")
  ];
  
  foreach($arr as $el){
    print_r($el->getArr());
  }
    
?>