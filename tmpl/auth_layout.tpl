<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Meta tags  -->
        <meta charset="UTF-8" />
        <meta
            http-equiv="X-UA-Compatible"
            content="IE=edge"
        />
        <meta
            name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
        />

        <title>Lineone - Sign In v2</title>
        <link
            rel="icon"
            type="image/png"
            href="images/favicon.png"
        />

        <!-- CSS Assets -->
        <link
            rel="stylesheet"
            href="css/app.css"
        />

        <!-- Javascript Assets -->
        <script
            src="js/app.js"
            defer
        ></script>

        <!-- Fonts -->
        <link
            rel="preconnect"
            href="https://fonts.googleapis.com"
        />
        <link
            rel="preconnect"
            href="https://fonts.gstatic.com"
            crossorigin
        />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
        />
        <script>
            /**
             * THIS SCRIPT REQUIRED FOR PREVENT FLICKERING IN SOME BROWSERS
             */
            localStorage.getItem("_x_darkMode_on") === "true" &&
                document.documentElement.classList.add("dark");
        </script>
    </head>

    <body
        x-data
        class="is-header-blur"
        x-bind="$store.global.documentBody"
    >
        <!-- App preloader-->
        <div class="app-preloader fixed z-50 grid h-full w-full place-content-center bg-slate-50 dark:bg-navy-900">
            <div class="app-preloader-inner relative inline-block h-48 w-48"></div>
        </div>

        <!-- Page Wrapper -->
        <div
            id="root"
            class="min-h-100vh flex grow bg-slate-50 dark:bg-navy-900"
            x-cloak
        >
            <div class="fixed top-0 hidden p-6 lg:block lg:px-12">
                <a
                    href="#"
                    class="flex items-center space-x-2"
                >
                    <img
                        class="h-12 w-12"
                        src="images/app-logo.svg"
                        alt="logo"
                    />
                    <p class="text-xl font-semibold uppercase text-slate-700 dark:text-navy-100">
                        lineone
                    </p>
                </a>
            </div>
            <div class="hidden w-full place-items-center lg:grid">
                <div class="w-full max-w-lg p-6">
                    <img
                        class="w-full"
                        x-show="!$store.global.isDarkModeEnabled"
                        src="images/illustrations/dashboard-check.svg"
                        alt="image"
                    />
                    <img
                        class="w-full"
                        x-show="$store.global.isDarkModeEnabled"
                        src="images/illustrations/dashboard-check-dark.svg"
                        alt="image"
                    />
                </div>
            </div>
            {block name=content}

            {/block}
    
        </div>

        <!-- 
            This is a place for Alpine.js Teleport feature 
            @see https://alpinejs.dev/directives/teleport
          -->
        <div id="x-teleport-target"></div>
        <script>
            window.addEventListener("DOMContentLoaded", () => Alpine.start());
        </script>
    </body>

</html>
