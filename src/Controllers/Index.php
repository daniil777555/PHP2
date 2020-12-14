<?php

namespace App\Controllers;


class Index extends Controller
{

    public function index()
    {
        $this->render('index.twig', ["isProfile" => $isProfile,]);
    }

    public function error()
    {
        $this->render('error.twig');
    }
}
