<?php

namespace App\Controller\Admin;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

/**
 * @Route("/admin/pages")
 */
class PageController extends AbstractController
{
    /**
     * @Route("/basic-table", name="admin_page_basic-table")
     */
    public function basicTable()
    {
        return $this->render('Admin/pages/basic-table.html.twig');
    }

    /**
     * @Route("/blank-table", name="admin_page_blank")
     */
    public function blankPage()
    {
        return $this->render('Admin/pages/blank-page.html.twig');
    }

    /**
     * @Route("/font-awesome", name="admin_page_font-awesome")
     */
    public function fontAwesome()
    {
        return $this->render('Admin/pages/fontawesome.html.twig');
    }

    /**
     * @Route("/profile", name="admin_page_profile")
     */
    public function profile()
    {
        return $this->render('Admin/pages/profile.html.twig');
    }

    /**
     * @Route("/google-map", name="admin_page_google-map")
     */
    public function googleMap()
    {
        return $this->render('Admin/pages/google-map.html.twig');
    }
}
