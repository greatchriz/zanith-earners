<!DOCTYPE html>
<html
    lang="en"
    class="dark scroll-smooth"
    dir="ltr"
>

    <head>
        <meta charset="UTF-8" />
        <title>Techwind - Tailwind CSS Multipurpose Landing Page Template</title>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <meta
            name="description"
            content="Tailwind CSS Saas & Software Landing Page Template"
        />
        <meta
            name="keywords"
            content="agency, application, business, clean, creative, cryptocurrency, it solutions, modern, multipurpose, nft marketplace, portfolio, saas, software, tailwind css"
        />
        <meta
            name="author"
            content="Shreethemes"
        />
        <meta
            name="website"
            content="https://shreethemes.in"
        />
        <meta
            name="email"
            content="support@shreethemes.in"
        />
        <meta
            name="version"
            content="1.8.0"
        />
        <meta
            http-equiv="X-UA-Compatible"
            content="IE=edge"
        />

        <!-- favicon -->
        <link
            rel="shortcut icon"
            href="assets/images/favicon.ico"
        />

        <!-- Css -->
        <link
            href="assets/libs/tobii/css/tobii.min.css"
            rel="stylesheet"
        >
        <link
            href="assets/libs/tiny-slider/tiny-slider.css"
            rel="stylesheet"
        >
        <!-- Main Css -->
        <link
            href="assets/libs/@iconscout/unicons/css/line.css"
            type="text/css"
            rel="stylesheet"
        />
        <link
            rel="stylesheet"
            href="assets/css/icons.css"
        />
        <link
            rel="stylesheet"
            href="assets/css/tailwind.css"
        />
        <link
            href="assets/libs/@mdi/font/css/materialdesignicons.min.css"
            rel="stylesheet"
            type="text/css"
        >

    </head>

    <body class="font-nunito text-base text-black dark:text-white dark:bg-slate-900">
        <!-- Loader Start -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader End -->




        <!-- Start Navbar -->
        <nav
            id="topnav"
            class="defaultscroll is-sticky"
        >
            <div class="container relative">
                <!-- Logo container-->
                <a
                    class="logo"
                    href="index.html"
                >
                    <span class="inline-block dark:hidden">
                        <img
                            src="assets/images/logo-dark.png"
                            class="l-dark"
                            height="24"
                            alt=""
                        >
                        <img
                            src="assets/images/logo-light.png"
                            class="l-light"
                            height="24"
                            alt=""
                        >
                    </span>
                    <img
                        src="assets/images/logo-light.png"
                        height="24"
                        class="hidden dark:inline-block"
                        alt=""
                    >
                </a>

                <!-- End Logo container-->
                <div class="menu-extras">
                    <div class="menu-item">
                        <!-- Mobile menu toggle-->
                        <a
                            class="navbar-toggle"
                            id="isToggle"
                            onclick="toggleMenu()"
                        >
                            <div class="lines">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </a>
                        <!-- End mobile menu toggle-->
                    </div>
                </div>

                <div id="navigation">
                    <div class="block lg:flex items-center justify-between">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu nav-light">
                            {include file="front/nav_item.tpl" link="?a=home" title="Home"}

                            {include file="front/nav_item.tpl" link="?a=about" title="About Us"}

                            {include file="front/nav_item.tpl" link="?a=services" title="Services"}

                            {include file="front/nav_item.tpl" link="?a=plans" title="Investment Plans"}

                        </ul>
                        <!--end navigation menu-->

                        <div class="mx-4 my-4">
                            <a href="?a=signup" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md">Sign Up</a>
                            <a href="?a=login" class="btn bg-transparent hover:bg-indigo-600 border-indigo-600 text-indigo-600 hover:text-white rounded-md ms-2">Login</a>
                        </div>
                    </div>
                </div>
                <!--end navigation-->
            </div>
            <!--end container-->
        </nav>
        <!--end header-->
        <!-- End Navbar -->
