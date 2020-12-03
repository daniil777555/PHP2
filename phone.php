<?php

class Phone extends Product
{
    protected $quantity;
    protected $price;
    public function __construct($name, $price, $quantity)
    {
        parent:: __construct($name);
        $this->quantity = $quantity;
        $this->price = $price;
    }

    public function getPrice()
    {
        return $this->price;
    }

    public function sumPrice()
    {
        return $this->quantity * $this->price;
    }
}
