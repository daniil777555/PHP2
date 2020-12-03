<?php
    require "phone.php";
    require "grechka.php";
    require "musick.php";

    abstract class Product
    {
        public $name;

        public function __construct($name)
        {
            $this->name = $name;
        }

        abstract function sumPrice();

        public function amountSale($arr)
        {
            $sum;
            foreach($arr as $el){
                $sum += $el->sumPrice();
            }
            return $sum;
        }
    }

    $gr = new Grechka("Grechka", 300, 1.5);
    $ph = new Phone("Phone", 10000, 2);
    $mu = new Musick("Mus", $ph->getPrice(), 2); //Можете ,пожалуйста, дать совет, как мне не передавать в конструктор класса цену телефона, а в самом конструкторе взять эту цену и сделать с ней все необходимые операци, если это конечно возможно.
    $arr = [$gr, $ph, $mu];

    foreach($arr as $el){
        echo $el->name." ".$el->sumPrice()."\n";
    }

    echo Product::amountSale($arr)."\n";