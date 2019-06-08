<?php

namespace App\Controller;

use App\Entity\Collection;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;

class CollectionController extends AbstractController
{
    /**
     * @Route("/collections", name="collection_list", methods={"GET"})
     */
    public function listCollections()
    {
        $repositoryC = $this->getDoctrine()->getRepository(Collection::class);
        $collections = $repositoryC->findAll();
        return $this->render('collection/show.html.twig', [
            'collections' => $collections
        ]);
    }

    /**
     * @Route("/collection/{slug}", name="collection_show", methods={"GET"})
     */
    public function show($slug)
    {
        $repositoryC = $this->getDoctrine()->getRepository((Collection::class));
        $collection = $repositoryC->findOneBy([
            'slug' => $slug
        ]);

        if (!$collection instanceof Collection)
        {
            throw new NotFoundHttpException('COLLECTION NOT FOUND');
        }

        return $this->render('collection/index.html.twig', [
            'collection' => $collection
        ]);
    }
}
