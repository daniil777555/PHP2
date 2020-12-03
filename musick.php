<?php

    class Musick extends Product
    {
        protected $quantity;
        protected $price;
        public function __construct($name, $price, $quantity)
        {
            parent:: __construct($name);
            $this->quantity = $quantity;
            $this->price = $price / 2;
        }

        public function sumPrice()
        {
            return $this->quantity * $this->price;
        }
    }
    