<?php

namespace App\Controller;

use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    /**
     * @Route("/product/{slug}", name="product", methods={"GET"})
     */
    public function index($slug)
    {
        $repositoryP = $this->getDoctrine()->getRepository((Product::class));
        $product = $repositoryP->findOneBy([
            'slug' => $slug
        ]);

        if (!$product instanceof Product)
        {
            throw new NotFoundHttpException('PRODUCT NOT FOUND');
        }

        return $this->render('product/index.html.twig', [
            'product' => $product
        ]);
    }

    /**
     * @Route("/products", name="product_list", methods={"GET"})
     */
    public function listProducts()
    {
        $repositoryP = $this->getDoctrine()->getRepository(Product::class);
        $products = $repositoryP->findAll();
        return $this->render('product/show.html.twig', [
            'products' => $products
        ]);
    }
}
