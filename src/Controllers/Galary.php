<?php

namespace App\Controllers;

use App\Models\Images;

class Galary extends Controller
{
  public function index()
  {
    $this->render('galary.twig', [
      'images' => Images::getAll(),
    ]);
  }

}
