<?php

namespace App\Controller\Admin;

use App\Entity\Collection;
use App\Entity\Product;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/error")
 */
class ErrorController extends AbstractController
{
    /**
     * @Route("/404", name="admin_error_404")
     */
    public function error404()
    {
        return $this->render('Admin/errors/404.html.twig');
    }
}
