<?php

    class Grechka extends Product
    {
        protected $weight;
        protected $price;

        public function __construct($name, $price, $weight)
        {
            parent:: __construct($name);
            $this->weight = $weight;
            $this->price = $price;
        }

        public function sumPrice()
        {
            return $this->weight * $this->price;
        }
    }
    