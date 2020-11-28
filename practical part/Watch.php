<?php
  class Watch extends Product{
    private $price;
    private $name;
    private $description;
    private $brend;
    private $characteristics;

    public function __construct($name, $brend, $description, $price, $characteristics){
      parent:: __construct($name, $brend, $description, $price);
      $this->characteristics = $characteristics;
    }

    public function getArr(){
       $arr = parent::getArr();
      return $arr += ["characteristics" => $this->characteristics];

    }
  }
?>