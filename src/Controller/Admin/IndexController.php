<?php

namespace App\Controller\Admin;

use App\Entity\Collection;
use App\Entity\Product;
use App\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class IndexController extends AbstractController
{
    /**
     * @Route("/admin", name="index_admin")
     */
    public function index()
    {
        $repository  = $this->getDoctrine()->getRepository(Collection::class);
        $collections = $repository->findAll();

        $repositoryP = $this->getDoctrine()->getRepository(Product::class);
        $products = $repositoryP->findAll();

        $userRepository  = $this->getDoctrine()->getRepository(User::class);
        $users = $userRepository->findAll();

        return $this->render('Admin/index.html.twig', [
            'collections' => $collections,
            'products'    => $products,
            'users'       => $users
        ]);
    }

    /**
     * @Route("/empty", name="empty")
     */
    public function empty()
    {
        return $this->render('empty.html.twig');
    }
}
