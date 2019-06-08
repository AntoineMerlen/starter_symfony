<?php

namespace App\Controller\Admin;

use App\Entity\Collection;
use App\Form\CollectionType;
use App\Repository\CollectionRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/collection")
 */
class CollectionController extends AbstractController
{
    /**
     * @Route("/list", name="admin_collection_list", methods={"GET"})
     */
    public function index(CollectionRepository $collectionRepository): Response
    {
        return $this->render('Admin/collection/index.html.twig', [
            'collections' => $collectionRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="admin_collection_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $collection = new Collection();
        $form = $this->createForm(CollectionType::class, $collection);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($collection);
            $entityManager->flush();

            return $this->redirectToRoute('admin_collection_list');
        }

        return $this->render('Admin/collection/new.html.twig', [
            'collection' => $collection,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_collection_show", methods={"GET"})
     */
    public function show(Collection $collection): Response
    {
        return $this->render('Admin/collection/show.html.twig', [
            'collection' => $collection,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="admin_collection_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Collection $collection): Response
    {
        $form = $this->createForm(CollectionType::class, $collection);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_collection_list', [
                'id' => $collection->getId(),
            ]);
        }

        return $this->render('Admin/collection/edit.html.twig', [
            'collection' => $collection,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_collection_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Collection $collection): Response
    {
        if ($this->isCsrfTokenValid('delete'.$collection->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($collection);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_collection_list');
    }
}
