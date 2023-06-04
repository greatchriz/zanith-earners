
<!DOCTYPE html>
   <html lang="en" class="dark scroll-smooth" dir="ltr">
       <head>
           <meta charset="UTF-8" />
           <title>Techwind - Tailwind CSS Multipurpose Landing Page Template</title>
           <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
           <meta name="description" content="Tailwind CSS Saas & Software Landing Page Template" />
           <meta name="keywords" content="agency, application, business, clean, creative, cryptocurrency, it solutions, modern, multipurpose, nft marketplace, portfolio, saas, software, tailwind css" />
           <meta name="author" content="Shreethemes" />
           <meta name="website" content="https://shreethemes.in" />
           <meta name="email" content="support@shreethemes.in" />
           <meta name="version" content="1.8.0" />
           <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   
           <!-- favicon -->
           <link rel="shortcut icon" href="assets/images/favicon.ico" />
   
           <!-- Css -->
           <link href="assets/libs/tobii/css/tobii.min.css" rel="stylesheet">
           <link href="assets/libs/tiny-slider/tiny-slider.css" rel="stylesheet">
           <!-- Main Css -->
           <link href="assets/libs/@iconscout/unicons/css/line.css" type="text/css" rel="stylesheet" />
           <link rel="stylesheet" href="assets/css/icons.css" />
           <link rel="stylesheet" href="assets/css/tailwind.css" />
   
       </head>
       
       <body class="font-nunito text-base text-black dark:text-white dark:bg-slate-900">
           <!-- Loader Start -->
           <!-- <div id="preloader">
               <div id="status">
                   <div class="spinner">
                       <div class="double-bounce1"></div>
                       <div class="double-bounce2"></div>
                   </div>
               </div>
           </div> -->
           <!-- Loader End -->
   
           
           <!-- Start Navbar -->
           <nav id="topnav" class="defaultscroll is-sticky">
               <div class="container">
                   <!-- Logo container-->
                   <a class="logo" href="index.html">
                       <span class="inline-block dark:hidden">
                           <img src="assets/images/logo-dark.png" class="l-dark" height="24" alt="">
                           <img src="assets/images/logo-light.png" class="l-light" height="24" alt="">
                       </span>
                       <img src="assets/images/logo-light.png" height="24" class="hidden dark:inline-block" alt="">
                   </a>
   
                   <!-- End Logo container-->
                   <div class="menu-extras">
                       <div class="menu-item">
                           <!-- Mobile menu toggle-->
                           <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
                               <div class="lines">
                                   <span></span>
                                   <span></span>
                                   <span></span>
                               </div>
                           </a>
                           <!-- End mobile menu toggle-->
                       </div>
                   </div>
   
                   <!--Login button Start-->
                   <ul class="buy-button list-none mb-0">
                       <li class="inline mb-0">
                           <a href="">
                               <span class="login-btn-primary"><span class="btn btn-icon rounded-full bg-indigo-600/5 hover:bg-indigo-600 border-indigo-600/10 hover:border-indigo-600 text-indigo-600 hover:text-white"><i data-feather="settings" class="h-4 w-4"></i></span></span>
                               <span class="login-btn-light"><span class="btn btn-icon rounded-full bg-gray-50 hover:bg-gray-200 dark:bg-slate-900 dark:hover:bg-gray-700 hover:border-gray-100 dark:border-gray-700 dark:hover:border-gray-700"><i data-feather="settings" class="h-4 w-4"></i></span></span>
                           </a>
                       </li>
               
                       <li class="inline ps-1 mb-0">
                           <a href="https://1.envato.market/techwind" target="_blank">
                               <div class="login-btn-primary"><span class="btn btn-icon rounded-full bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white"><i data-feather="shopping-cart" class="h-4 w-4"></i></span></div>
                               <div class="login-btn-light"><span class="btn btn-icon rounded-full bg-gray-50 hover:bg-gray-200 dark:bg-slate-900 dark:hover:bg-gray-700 hover:border-gray-100 dark:border-gray-700 dark:hover:border-gray-700"><i data-feather="shopping-cart" class="h-4 w-4"></i></span></div>
                           </a>
                       </li>
                   </ul>
                   <!--Login button End-->
   
                   <div id="navigation">
                       <!-- Navigation Menu-->   
                       <ul class="navigation-menu nav-light">
                           <li><a href="?a=home" class="sub-menu-item">Home</a></li>
                           <li><a href="?a=support" class="sub-menu-item">Contact Us</a></li>
                           <li><a href="?a=login" class="sub-menu-item">Login</a></li>
                           <li><a href="?a=signup" class="sub-menu-item">Register</a></li>
                   
                           {* <li class="has-submenu parent-parent-menu-item">
                               <a href="javascript:void(0)">Landings</a><span class="menu-arrow"></span>
   
                               <ul class="submenu megamenu">
                                   <li>
                                       <ul>
                                           <li><a href="index-saas.html" class="sub-menu-item">Saas <span class="bg-emerald-600 inline-block text-white text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">Animation</span></a></li>
                                           <li><a href="index-classic-saas.html" class="sub-menu-item">Classic Saas </a></li>
                                           <li><a href="index-modern-saas.html" class="sub-menu-item">Modern Saas </a></li>
                                           <li><a href="index-apps.html" class="sub-menu-item">Application</a></li>
                                           <li><a href="index-classic-app.html" class="sub-menu-item">Classic App </a></li>
                                           <li><a href="index-smartwatch.html" class="sub-menu-item">Smartwatch</a></li>
                                           <li><a href="index-marketing.html" class="sub-menu-item">Marketing</a></li>
                                           <li><a href="index-seo.html" class="sub-menu-item">SEO Agency </a></li>
                                           <li><a href="index-payment.html" class="sub-menu-item">Payments</a></li>
                                           <li><a href="index-charity.html" class="sub-menu-item">Charity </a></li>
                                       </ul>
                                   </li>
   
                                   <li>
                                       <ul>
                                           <li><a href="index-it-solution.html" class="sub-menu-item">IT Solution</a></li>
                                           <li><a href="index-it-solution-two.html" class="sub-menu-item">It Solution Two </a></li>
                                           <li><a href="index-digital-agency.html" class="sub-menu-item">Digital Agency</a></li>
                                           <li><a href="index-job.html" class="sub-menu-item">Job</a></li>
                                           <li><a href="index-restaurent.html" class="sub-menu-item">Restaurent</a></li>
                                           <li><a href="index-hosting.html" class="sub-menu-item">Hosting</a></li>
                                           <li><a href="index-nft.html" class="sub-menu-item">NFT Marketplace</a></li>
                                           <li><a href="index-hotel.html" class="sub-menu-item">Hotel & Resort</a></li>
                                           <li><a href="index-gym.html" class="sub-menu-item">Gym <span class="bg-black dark:bg-slate-50 inline-block text-white dark:text-slate-900 text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">Dark</span></a></li>
                                           <li><a href="index-yoga.html" class="sub-menu-item">Yoga <span class="bg-orange-600 inline-block text-white text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">New</span></a></li>
                                       </ul>
                                   </li>
   
                                   <li>
                                       <ul>
                                           <li><a href="index-startup.html" class="sub-menu-item">Startup</a></li>
                                           <li><a href="index-business.html" class="sub-menu-item">Business</a></li>
                                           <li><a href="index-corporate.html" class="sub-menu-item">Corporate</a></li>
                                           <li><a href="index-corporate-two.html" class="sub-menu-item">Corporate Two </a></li>
                                           <li><a href="index-real-estate.html" class="sub-menu-item">Real Estate</a></li>
                                           <li><a href="index-consulting.html" class="sub-menu-item">Consulting </a></li>
                                           <li><a href="index-insurance.html" class="sub-menu-item">Insurance </a></li>
                                           <li><a href="index-construction.html" class="sub-menu-item">Construction </a></li>
                                           <li><a href="index-law.html" class="sub-menu-item">Law Firm </a></li>
                                           <li><a href="index-video.html" class="sub-menu-item">Video </a></li>
                                       </ul>
                                   </li>
                           
                                   <li>
                                       <ul>
                                           <li><a href="index-personal.html" class="sub-menu-item">Personal</a></li>
                                           <li><a href="index-portfolio.html" class="sub-menu-item">Portfolio</a></li>
                                           <li><a href="index-photography.html" class="sub-menu-item">Photography <span class="bg-black dark:bg-slate-50 inline-block text-white dark:text-slate-900 text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">Dark</span></a></li>
                                           <li><a href="index-studio.html" class="sub-menu-item">Studio</a></li>
                                           <li><a href="index-coworking.html" class="sub-menu-item">Co-Woriking</a></li>
                                           <li><a href="index-course.html" class="sub-menu-item">Online Courses </a></li>
                                           <li><a href="index-event.html" class="sub-menu-item">Event/Conference </a></li>
                                           <li><a href="index-hospital.html" class="sub-menu-item">Hospital</a></li>
                                           <li><a href="index-phone-number.html" class="sub-menu-item">Phone Number</a></li>
                                           <li><a href="index-forums.html" class="sub-menu-item">Forums </a></li>
                                       </ul>
                                   </li>
                           
                                   <li>
                                       <ul>
                                           <li><a href="index-crypto.html" class="sub-menu-item">Cryptocurrency  <span class="bg-black dark:bg-slate-50 inline-block text-white dark:text-slate-900 text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">Dark</span></a></li>
                                           <li><a href="index-landing-one.html" class="sub-menu-item">Landing One</a></li>
                                           <li><a href="index-landing-two.html" class="sub-menu-item">Landing Two</a></li>
                                           <li><a href="index-landing-three.html" class="sub-menu-item">Landing Three</a></li>
                                           <li><a href="index-landing-four.html" class="sub-menu-item">Landing Four</a></li>
                                           <li><a href="index-service.html" class="sub-menu-item">Service Provider</a></li>
                                           <li><a href="index-food-blog.html" class="sub-menu-item">Food Blog </a></li>
                                           <li><a href="index-blog.html" class="sub-menu-item">Blog </a></li>
                                           <li><a href="index-furniture.html" class="sub-menu-item">Furniture <span class="bg-orange-600 inline-block text-white text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">New</span></a></li>
                                           <li><a href="index-landing-five.html" class="sub-menu-item">Landing Five <span class="bg-green-600 inline-block text-white text-[10px] font-bold px-2.5 py-0.5 rounded h-5 ms-1">Onepage</span></a></li>
                                       </ul>
                                   </li>
                               </ul>
                           </li>
   
                           <li class="has-submenu parent-parent-menu-item">
                               <a href="javascript:void(0)">Pages</a><span class="menu-arrow"></span>
                               <ul class="submenu">
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Company </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="page-aboutus.html" class="sub-menu-item"> About Us</a></li>
                                           <li><a href="page-services.html" class="sub-menu-item">Services</a></li>
                                           <li><a href="page-team.html" class="sub-menu-item"> Team</a></li>
                                           <li><a href="page-pricing.html" class="sub-menu-item">Pricing</a></li>
                                           <li><a href="page-testimonial.html" class="sub-menu-item">Testimonial </a></li>
                                       </ul> 
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Accounts</a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="user-profile.html" class="sub-menu-item">User Profile</a></li>
                                           <li><a href="user-billing.html" class="sub-menu-item">Billing</a></li>
                                           <li><a href="user-payment.html" class="sub-menu-item">Payment</a></li>
                                           <li><a href="user-invoice.html" class="sub-menu-item">Invoice</a></li>
                                           <li><a href="user-social.html" class="sub-menu-item">Social</a></li>
                                           <li><a href="user-notification.html" class="sub-menu-item">Notification</a></li>
                                           <li><a href="user-setting.html" class="sub-menu-item">Setting</a></li>
                                       </ul> 
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Real Estate</a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="property-listing.html" class="sub-menu-item">Listing</a></li>
                                           <li><a href="property-detail.html" class="sub-menu-item">Property Detail</a></li>
                                       </ul> 
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Courses </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="course-listing.html" class="sub-menu-item">Course Listing</a></li>
                                           <li><a href="course-detail.html" class="sub-menu-item">Course Detail</a></li>
                                       </ul> 
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> NFT Market </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="nft-explore.html" class="sub-menu-item">Explore</a></li>
                                           <li><a href="nft-auction.html" class="sub-menu-item">Auction</a></li>
                                           <li><a href="nft-collection.html" class="sub-menu-item">Collections</a></li>
                                           <li><a href="nft-creators.html" class="sub-menu-item">Creators</a></li>
                                           <li><a href="nft-wallet.html" class="sub-menu-item">Wallet</a></li>
                                           <li><a href="nft-create-item.html" class="sub-menu-item">Create NFT</a></li>
                                           <li><a href="nft-detail.html" class="sub-menu-item">Single NFT</a></li>
                                       </ul> 
                                   </li>
                                   <li><a href="food-recipe.html" class="sub-menu-item">Food Recipe </a></li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Photography </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="photography-about.html" class="sub-menu-item">About Us</a></li>
                                           <li><a href="photography-portfolio.html" class="sub-menu-item">Portfolio</a></li>
                                       </ul> 
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Job / Careers </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="page-job-grid.html" class="sub-menu-item">All Jobs</a></li>
                                           <li><a href="page-job-detail.html" class="sub-menu-item">Job Detail</a></li>
                                           <li><a href="page-job-apply.html" class="sub-menu-item">Job Apply</a></li>
                                           <li><a href="page-job-candidates.html" class="sub-menu-item">Job Candidates</a></li>
                                           <li><a href="page-job-candidate-detail.html" class="sub-menu-item">Candidate Detail</a></li>
                                           <li><a href="page-job-companies.html" class="sub-menu-item">All Companies</a></li>
                                           <li><a href="page-job-company-detail.html" class="sub-menu-item">Company Detail</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Forums </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="forums-topic.html" class="sub-menu-item">Forum Topic</a></li>
                                           <li><a href="forums-comments.html" class="sub-menu-item">Forum Comments</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Helpcenter </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="helpcenter.html" class="sub-menu-item">Overview</a></li>
                                           <li><a href="helpcenter-faqs.html" class="sub-menu-item">FAQs</a></li>
                                           <li><a href="helpcenter-guides.html" class="sub-menu-item">Guides</a></li>
                                           <li><a href="helpcenter-support.html" class="sub-menu-item">Support</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Blog </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="blog.html" class="sub-menu-item">Blogs</a></li>
                                           <li><a href="blog-sidebar.html" class="sub-menu-item">Blogs & Sidebar</a></li>
                                           <li><a href="blog-detail.html" class="sub-menu-item">Blog Detail</a></li>
                                           <li class="has-submenu child-menu-item"><a href="javascript:void(0)"> Blog Posts </a><span class="submenu-arrow"></span>
                                               <ul class="submenu">
                                                   <li><a href="blog-standard-post.html" class="sub-menu-item">Standard Post</a></li>
                                                   <li><a href="blog-slider-post.html" class="sub-menu-item">Slider Post</a></li>
                                                   <li><a href="blog-gallery-post.html" class="sub-menu-item">Gallery Post</a></li>
                                                   <li><a href="blog-youtube-post.html" class="sub-menu-item">Youtube Post</a></li>
                                                   <li><a href="blog-vimeo-post.html" class="sub-menu-item">Vimeo Post</a></li>
                                                   <li><a href="blog-audio-post.html" class="sub-menu-item">Audio Post</a></li>
                                                   <li><a href="blog-blockquote-post.html" class="sub-menu-item">Blockquote</a></li>
                                                   <li><a href="blog-left-sidebar-post.html" class="sub-menu-item">Left Sidebar</a></li>
                                               </ul>  
                                           </li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Email Template</a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="email-confirmation.html" class="sub-menu-item">Confirmation</a></li>
                                           <li><a href="email-password-reset.html" class="sub-menu-item">Reset Password</a></li>
                                           <li><a href="email-alert.html" class="sub-menu-item">Alert</a></li>
                                           <li><a href="email-invoice.html" class="sub-menu-item">Invoice</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Auth Pages </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="auth-login.html" class="sub-menu-item">Login</a></li>
                                           <li><a href="auth-signup.html" class="sub-menu-item">Signup</a></li>
                                           <li><a href="auth-re-password.html" class="sub-menu-item">Reset Password</a></li>
                                           <li><a href="auth-lock-screen.html" class="sub-menu-item">Lock Screen</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Utility </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="page-terms.html" class="sub-menu-item">Terms of Services</a></li>
                                           <li><a href="page-privacy.html" class="sub-menu-item">Privacy Policy</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Special</a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="page-comingsoon.html" class="sub-menu-item">Coming Soon</a></li>
                                           <li><a href="page-maintenance.html" class="sub-menu-item">Maintenance</a></li>
                                           <li><a href="page-error.html" class="sub-menu-item">Error</a></li>
                                           <li><a href="page-thankyou.html" class="sub-menu-item">Thank you</a></li>
                                       </ul>
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Contact </a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="contact-detail.html" class="sub-menu-item">Contact Detail</a></li>
                                           <li><a href="contact-one.html" class="sub-menu-item">Contact One</a></li>
                                           <li><a href="contact-two.html" class="sub-menu-item">Contact Two</a></li>
                                       </ul>  
                                   </li>
                                   <li class="has-submenu parent-menu-item"><a href="javascript:void(0)"> Multi Level Menu</a><span class="submenu-arrow"></span>
                                       <ul class="submenu">
                                           <li><a href="javascript:void(0)" class="sub-menu-item">Level 1.0</a></li>
                                           <li class="has-submenu child-menu-item"><a href="javascript:void(0)"> Level 2.0 </a><span class="submenu-arrow"></span>
                                               <ul class="submenu">
                                                   <li><a href="javascript:void(0)" class="sub-menu-item">Level 2.1</a></li>
                                                   <li><a href="javascript:void(0)" class="sub-menu-item">Level 2.2</a></li>
                                               </ul>  
                                           </li>
                                       </ul>  
                                   </li>
                               </ul>
                           </li>
   
                           <li class="has-submenu parent-parent-menu-item">
                               <a href="javascript:void(0)">Portfolio</a><span class="menu-arrow"></span>
                               <ul class="submenu megamenu">
                                   <li>
                                       <ul>
                                           <li class="megamenu-head">Modern Portfolio</li>
                                           <li><a href="portfolio-modern-two.html" class="sub-menu-item">Two Column</a></li>
                                           <li><a href="portfolio-modern-three.html" class="sub-menu-item">Three Column</a></li>
                                           <li><a href="portfolio-modern-four.html" class="sub-menu-item">Four Column</a></li>
                                           <li><a href="portfolio-modern-five.html" class="sub-menu-item">Five Column</a></li>
                                           <li><a href="portfolio-modern-six.html" class="sub-menu-item">Six Column</a></li>
                                       </ul>
                                   </li>
   
                                   <li>
                                       <ul>
                                           <li class="megamenu-head">Classic Portfolio</li>
                                           <li><a href="portfolio-classic-two.html" class="sub-menu-item">Two Column</a></li>
                                           <li><a href="portfolio-classic-three.html" class="sub-menu-item">Three Column</a></li>
                                           <li><a href="portfolio-classic-four.html" class="sub-menu-item">Four Column</a></li>
                                           <li><a href="portfolio-classic-five.html" class="sub-menu-item">Five Column</a></li>
                                           <li><a href="portfolio-classic-six.html" class="sub-menu-item">Six Column</a></li>
                                       </ul>
                                   </li>
   
                                   <li>
                                       <ul>
                                           <li class="megamenu-head">Creative Portfolio</li>
                                           <li><a href="portfolio-creative-two.html" class="sub-menu-item">Two Column</a></li>
                                           <li><a href="portfolio-creative-three.html" class="sub-menu-item">Three Column</a></li>
                                           <li><a href="portfolio-creative-four.html" class="sub-menu-item">Four Column</a></li>
                                           <li><a href="portfolio-creative-five.html" class="sub-menu-item">Five Column</a></li>
                                           <li><a href="portfolio-creative-six.html" class="sub-menu-item">Six Column</a></li>
                                       </ul>
                                   </li>
                           
                                   <li>
                                       <ul>
                                           <li class="megamenu-head">Masonry Portfolio</li>
                                           <li><a href="portfolio-masonry-two.html" class="sub-menu-item">Two Column</a></li>
                                           <li><a href="portfolio-masonry-three.html" class="sub-menu-item">Three Column</a></li>
                                           <li><a href="portfolio-masonry-four.html" class="sub-menu-item">Four Column</a></li>
                                           <li><a href="portfolio-masonry-five.html" class="sub-menu-item">Five Column</a></li>
                                           <li><a href="portfolio-masonry-six.html" class="sub-menu-item">Six Column</a></li>
                                       </ul>
                                   </li>
                           
                                   <li>
                                       <ul>
                                           <li class="megamenu-head">Portfolio Detail</li>
                                           <li><a href="portfolio-detail-one.html" class="sub-menu-item">Portfolio One</a></li>
                                           <li><a href="portfolio-detail-two.html" class="sub-menu-item">Portfolio Two</a></li>
                                           <li><a href="portfolio-detail-three.html" class="sub-menu-item">Portfolio Three</a></li>
                                           <li><a href="portfolio-detail-four.html" class="sub-menu-item">Portfolio Four</a></li>
                                       </ul>
                                   </li>
                               </ul>
                           </li>
   
                           <li class="has-submenu parent-menu-item">
                               <a href="javascript:void(0)">Docs</a><span class="menu-arrow"></span>
                               <ul class="submenu">
                                   <li><a href="documentation.html" class="sub-menu-item">Documentation</a></li>
                                   <li><a href="changelog.html" class="sub-menu-item">Changelog</a></li>
                                   <li><a href="widget.html" class="sub-menu-item">Widget</a></li>
                               </ul>
                           </li> *}
                   
                           
                       </ul><!--end navigation menu-->
                   </div><!--end navigation-->
               </div><!--end container-->
           </nav><!--end header-->
           <!-- End Navbar -->
   
           <!-- Start Hero -->
           <section class="relative table w-full py-52 md:py-64 bg-[url('../../assets/images/crypto/bg1.jpg')] bg-center bg-no-repeat bg-cover">
               <div class="container">
                   <div class="grid grid-cols-1">
                       <h5 class="font-normal text-lg text-white/50 mb-3">Pay with <span class="typewrite text-white" data-period="2000" data-type='[ "Crypto", "ETH", "BNB", "SOL", "DOT", "NEAR", "CEL" ]'> <span class="wrap"></span> </span></h5>
                       <h4 class="text-white font-semibold lg:leading-normal leading-normal text-4xl lg:text-5xl mb-5">Building the future <br> of Crypto Revolution.</h4>
                       <p class="text-white/70 max-w-xl mb-0">Take full control of your cryptocurrencies and collectibles by storing them on your own device.</p>
   
                       <div class="subcribe-form mt-6 mb-4">
                           <form class="relative max-w-xl">
                               <input type="email" id="subcribe" name="email" class="pt-4 pe-40 pb-4 ps-6 w-full h-[50px] outline-none dark:text-white rounded-full bg-white/5 shadow border border-slate-900 text-white" placeholder="Your Email Address :">
                               <button type="submit" class="btn absolute top-[2px] end-[3px] h-[46px] bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-full">Register Now <i class="uil uil-arrow-right"></i></button>
                           </form><!--end form-->
                       </div>
   
                       <span class="text-white">Looking for help? <a href="" class="text-amber-500">Get in touch with us</a></span>
                   </div>
               </div>
           </section><!--end section-->
   
           <div class="relative">
               <div class="shape absolute sm:-bottom-px -bottom-[2px] start-0 end-0 overflow-hidden">
                   <div class="container">
                       <div class="grid grid-cols-1">
                           <div class="p-6 border-t border-dashed border-white/30">
                               <div class="grid grid-cols-12 items-center">
                                   <div class="lg:col-span-4 md:col-span-6 col-span-5">
                                       <h5 class="text-white/50 text-xl mb-0">Token Popular</h5>
                                   </div>
   
                                   <div class="lg:col-span-8 md:col-span-6 col-span-7 relative">
                                       <div class="tiny-home-slide-four">
                                           <div class="tiny-slide">
                                               <div class="text-center">
                                                   <h6 class="text-white mb-1">Bitcoin</h6>
                                                   <span class="text-white/50 block">$ 41245</span>
                                                   <span class="text-red-600">- 3.5%</span>
                                               </div>
                                           </div>
                                           <div class="tiny-slide">
                                               <div class="text-center">
                                                   <h6 class="text-white mb-1">Litecoin</h6>
                                                   <span class="text-white/50 block">$ 216</span>
                                                   <span class="text-emerald-600">+ 3.5%</span>
                                               </div>
                                           </div>
                                           <div class="tiny-slide">
                                               <div class="text-center">
                                                   <h6 class="text-white mb-1">Ethereum</h6>
                                                   <span class="text-white/50 block">$ 451</span>
                                                   <span class="text-emerald-600">+ 3.5%</span>
                                               </div>
                                           </div>
                                           <div class="tiny-slide">
                                               <div class="text-center">
                                                   <h6 class="text-white mb-1">Blocknet</h6>
                                                   <span class="text-white/50 block">$ 845</span>
                                                   <span class="text-emerald-600">+ 3.5%</span>
                                               </div>
                                           </div>
                                           <div class="tiny-slide">
                                               <div class="text-center">
                                                   <h6 class="text-white mb-1">Monero</h6>
                                                   <span class="text-white/50 block">$ 654</span>
                                                   <span class="text-red-600">- 3.5%</span>
                                               </div>
                                           </div>
                                       </div>
                                   </div>
                               </div><!--end grid-->
                           </div>
                       </div><!--end grid-->
                   </div><!--end container-->
               </div>
           </div>
           <!-- End Hero -->
   
           <!-- Start Section-->
           <section class="relative md:py-24 py-16">
               <div class="container">
                   <div class="grid lg:grid-cols-12 md:grid-cols-2 grid-cols-1 items-center gap-[30px]">
                       <div class="lg:col-span-5">
                           <img src="assets/images/crypto/01.png" alt="">
                       </div>
                       <div class="lg:col-span-7 mt-8 md:mt-0">
                           <div class="lg:ms-10">
                               <h6 class="text-indigo-600 text-base">Why choose us?</h6>
                               <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">Buy Cryptocurrency <br> with Techwind</h3>
                               <p class="text-slate-400 max-w-xl">You can combine all the Techwind templates into a single one, you can take a component from the Application theme and use it in the Website.</p>
   
                               <ul class="list-none text-slate-400 mt-4">
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> Digital Marketing Solutions for Tomorrow</li>
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> Our Talented & Experienced Marketing Agency</li>
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> Create your own skin to match your brand</li>
                               </ul>
   
                               <div class="mt-4">
                                   <a href="page-aboutus.html" class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">Find Out More <i class="uil uil-angle-right-b align-middle"></i></a>
                               </div>
                           </div>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <!-- Partners start -->
               <div class="container md:mt-24 mt-16">
                   <div class="grid grid-cols-1 pb-8 text-center">
                       <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">We featured on popular partners like</h3>
                   </div><!--end grid-->
   
                   <div class="grid md:grid-cols-6 grid-cols-2 justify-center gap-[30px]">
                       <div class="mx-auto">
                           <img src="assets/images/client/amazon.svg" class="h-6" alt="">
                       </div>
   
                       <div class="mx-auto">
                           <img src="assets/images/client/google.svg" class="h-6" alt="">
                       </div>
                       
                       <div class="mx-auto">
                           <img src="assets/images/client/lenovo.svg" class="h-6" alt="">
                       </div>
                       
                       <div class="mx-auto">
                           <img src="assets/images/client/paypal.svg" class="h-6" alt="">
                       </div>
                       
                       <div class="mx-auto">
                           <img src="assets/images/client/shopify.svg" class="h-6" alt="">
                       </div>
                       
                       <div class="mx-auto">
                           <img src="assets/images/client/spotify.svg" class="h-6" alt="">
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
               <!-- Partners End -->
           </section><!--end section-->
           <!-- End Section-->
   
           <!-- Start -->
           <section class="relative md:py-24 py-16 bg-[url('../../assets/images/crypto/bg2.jpg')] bg-center bg-no-repeat bg-cover">
               <div class="absolute inset-0 bg-indigo-600/90"></div>
               <div class="container">
                   <div class="grid grid-cols-1 pb-8 text-center">
                       <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-medium text-white">Our Benefits</h3>
   
                       <p class="text-white/70 max-w-xl mx-auto">Start working with Tailwind CSS that can provide everything you need to generate awareness, drive traffic, connect.</p>
                   </div><!--end grid-->
   
                   <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 mt-8 gap-[30px]">
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-file-contract-dollar text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Support</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
   
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-analytics text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Service Level</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
   
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-dashboard text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Take profit / Stoploss</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
   
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-swatchbook text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Trailing Stop</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
   
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-exchange text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Pending Orders</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
   
                       <div class="border border-dashed border-white/30 rounded-md p-6 text-center">
                           <i class="uil uil-lock-alt text-4xl text-white"></i>
   
                           <div class="content mt-7">
                               <a href="" class="text-lg font-medium text-white">Platform Fees</a>
                               <p class="text-white/70 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                               
                               <div class="mt-5">
                                   <a href="" class="btn btn-link text-white hover:text-white after:bg-white duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                               </div>
                           </div>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
           </section><!--end section-->
           <!-- End -->
   
           <!-- Start -->
           <section class="relative md:py-24 py-16 md:pb-0 pb-0">
               <div class="container">
                   <div class="grid md:grid-cols-12 grid-col-1 items-center gap-[30px]">
                       <div class="lg:col-span-5 md:col-span-6 order-2 md:order-1">
                           <div class="shadow dark:shadow-gray-800 rounded-md p-6 bg-gray-50 dark:bg-slate-800 overflow-hidden">
                               <img src="assets/images/logo-icon-64.png" class="mx-auto" alt="">
                               <h5 class="text-center font-semibold text-2xl mt-3">Techwind Token Sale</h5>
                               <div class="grid grid-col-1">
                                   <div class="text-center">
                                       <div id="token-sale">
                                           <div class="flex">
                                               <div id="days" class="md:w-1/4 w-1/2 count-number lg:text-[40px] md:text-[32px] text-[28px] leading-[95px] font-semibold"></div>
                                               <div id="hours" class="md:w-1/4 w-1/2 count-number lg:text-[40px] md:text-[32px] text-[28px] leading-[95px] font-semibold"></div>
                                               <div id="mins" class="md:w-1/4 w-1/2 count-number lg:text-[40px] md:text-[32px] text-[28px] leading-[95px] font-semibold"></div>
                                               <div id="secs" class="md:w-1/4 w-1/2 count-number lg:text-[40px] md:text-[32px] text-[28px] leading-[95px] font-semibold"></div>
                                               <div id="end" class="h1"></div>
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               
                               <p class="text-slate-400 text-center mt-8">Token sale ends <span class="text-dark font-semibold">August 25th 2022</span></p>
   
                               <div class="mt-6">
                                   <div class="flex justify-end mb-2">
                                       <span class="text-slate-400">Funded 60% = $ 600000</span>
                                   </div>
                                   <div class="w-full bg-gray-100 dark:bg-slate-900 rounded-full h-3">
                                       <div class="bg-indigo-600 h-3 rounded-full" style="width: 60%"></div>
                                   </div>
                                   <div class="flex justify-between mt-2">
                                       <span class="text-slate-400">$ 1000</span>
                                       <span class="text-slate-400">$ 1000000</span>
                                   </div>
                               </div>
   
                               <ul class="list-none mt-4">
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> <span class="text-slate-400">Soft Cap:</span> &nbsp;10000 USD</li>
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> <span class="text-slate-400">Min. transaction Amount:</span> &nbsp;1000 USD</li>
                                   <li class="mb-1 flex"><i class="uil uil-check-circle text-indigo-600 text-xl me-2"></i> <span class="text-slate-400">Target:</span> &nbsp;900000 USD</li>
                               </ul>
   
                               <div class="mt-4">
                                   <a href="" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md w-full">Join Now</a>
                               </div>
                           </div>
                       </div>
   
                       <div class="lg:col-span-7 md:col-span-6 order-1 md:order-2">
                           <div class="lg:ms-10">
                               <span class="bg-indigo-600/5 text-indigo-600 text-xs font-bold px-2.5 py-0.5 rounded h-5">Sale tokens</span>
                               <h4 class="my-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">The token sale is live!</h4>
                               <p class="text-slate-400 para-desc mx-auto mb-3">With Techwind Trade, you can be sure your trading skills are matched with excellent service.</p>
                               <p class="text-slate-400 para-desc mx-auto">Techwind Institutional Markets is a full-stack crypto services platform that works with crypto-native businesses and institutional clients on lending, trading, and custody solutions tailored to your needs.</p>
                               <div class="mt-4">
                                   <a href="" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md">Token sale</a>
                                   <a href="#!" data-type="youtube" data-id="yba7hPeTSjk" class="btn btn-icon rounded-full bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white m-1 lightbox"><i data-feather="video" class="h-4 w-4"></i></a><span class="font-semibold ms-1 align-middle">Watch Now</span>
                               </div>
                           </div>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <div class="container md:mt-24 mt-16">
                   <div class="grid grid-cols-1 pb-8 text-center">
                       <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">All your crypto and NFTs in one place</h3>
   
                       <p class="text-slate-400 max-w-xl mx-auto">With Techwind Trade, you can be sure your trading skills are matched with excellent service.</p>
                   </div><!--end grid-->
   
                   <div class="grid grid-cols-1 justify-center mt-2">
                       <ul class="list-none text-center">
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/auroracoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/avalanche.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/binance.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/bitcoin-cash.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/bitcoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/bittorrent.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/blocknet.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/coinye.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/ethereum.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/kucoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/litecoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/monero.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/potcoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/primecoin.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                           
                           <li class="inline-block md:m-6 my-6 mx-1">
                               <img src="assets/images/crypto/coin/zcash.png" class="shadow-md dark:shadow-gray-800 rounded-full h-20 w-20 p-4" alt="">
                           </li>
                       </ul>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <div class="container md:mt-24 mt-16">
                   <div class="grid md:grid-cols-2 grid-cols-1 gap-[30px] lg:items-center items-end">
                       <div class="mb-8">
                           <h4 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">Free your money and <br> invest with confidence</h4>
                           <p class="text-slate-400 max-w-xl mx-auto">With Techwind Trade, you can be sure your trading skills are matched with excellent service.</p>
   
                           <ul class="list-none">
                               <li class="flex mt-6">
                                   <i class="uil uil-check-circle text-xl text-indigo-600"></i>
   
                                   <div class="flex-1 ms-3">
                                       <h6 class="font-semibold text-lg">Buy, sell, and trade on the go</h6>
                                       <p class="text-slate-400 mt-1">Manage your holdings from your mobile device</p>
                                   </div>
                               </li>
   
                               <li class="flex mt-6">
                                   <i class="uil uil-check-circle text-xl text-indigo-600"></i>
   
                                   <div class="flex-1 ms-3">
                                       <h6 class="font-semibold text-lg">Take control of your wealth</h6>
                                       <p class="text-slate-400 mt-1">Rest assured you (and only you) have access to your funds</p>
                                   </div>
                               </li>
                           </ul>
   
                           <div class="mt-6">
                               <a href="" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md">Download Wallet</a>
                           </div>
                       </div>
   
                       <div class="">
                           <img src="assets/images/crypto/hand-with-mobile.png" class="" alt="">
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
           </section><!--end section-->
           <!-- End -->
   
           <!-- Counter Start -->
           <section class="relative md:py-24 py-16 bg-[url('../../assets/images/crypto/cta.jpg')] bg-center bg-cover">
               <div class="container">
                   <div class="grid md:grid-cols-4 sm:grid-cols-2 grid-cols-1">
                       <div class="text-center">
                           <h6 class="text-white mb-0">Founded in</h6>
                           <h2 class="mb-0 text-4xl mt-3 font-bold text-indigo-600"><span class="counter-value" data-target="2021">1990</span></h2>
                       </div>
                       <div class="text-center">
                           <h6 class="text-white mb-0">Team Member</h6>
                           <h2 class="mb-0 text-4xl mt-3 font-bold text-indigo-600"><span class="counter-value" data-target="1000">551</span>+</h2>
                       </div>
                       <div class="text-center">
                           <h6 class="text-white mb-0">Users</h6>
                           <h2 class="mb-0 text-4xl mt-3 font-bold text-indigo-600"><span class="counter-value" data-target="10">1</span>M</h2>
                       </div>
                       <div class="text-center">
                           <h6 class="text-white mb-0">Insurance Cover</h6>
                           <h2 class="mb-0 text-4xl mt-3 font-bold text-indigo-600">$<span class="counter-value" data-target="410">210</span>M</h2>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
           </section><!--end section-->
           <!-- Counter End -->
   
           <!-- Start -->
           <section class="relative md:py-24 py-16">
               <div class="container">
                   <div class="grid grid-cols-1 pb-8 text-center">
                       <h3 class="mb-6 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">What our customer <br> say about us</h3>
   
                       <p class="text-slate-400 max-w-xl mx-auto">Start working with Techwind that can provide everything you need to generate awareness, drive traffic, connect.</p>
                   </div><!--end grid-->
   
                   <div class="grid grid-cols-1 mt-8">
                       <div class="tiny-three-item">
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" It seems that only fragments of the original text remain in the Lorem Ipsum texts used today. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/01.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Calvin Carlo</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
   
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" The most well-known dummy text is the 'Lorem Ipsum', which is said to have originated in the 16th century. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/02.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Christa Smith</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
   
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" One disadvantage of Lorum Ipsum is that in Latin certain letters appear more frequently than others. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/03.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Jemina CLone</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
   
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" Thus, Lorem Ipsum has only limited suitability as a visual filler for German texts. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/04.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Smith Vodka</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
   
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" There is now an abundance of readable dummy texts. These are usually used when a text is required. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/05.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Cristino Murfi</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
   
                           <div class="tiny-slide text-center">
                               <div class="customer-testi">
                                   <div class="content relative rounded shadow dark:shadow-gray-800 m-2 p-6 bg-white dark:bg-slate-900">
                                       <i class="mdi mdi-format-quote-open mdi-48px text-indigo-600"></i>
                                       <p class="text-slate-400">" According to most sources, Lorum Ipsum can be traced back to a text composed by Cicero. "</p>
                                       <ul class="list-none mb-0 text-amber-400 mt-3">
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                           <li class="inline"><i class="mdi mdi-star"></i></li>
                                       </ul>
                                   </div>
                                   
                                   <div class="text-center mt-5">
                                       <img src="assets/images/client/06.jpg" class="h-14 w-14 rounded-full shadow-md mx-auto" alt="">
                                       <h6 class="mt-2 font-semibold">Cristino Murfi</h6>
                                       <span class="text-slate-400 text-sm">Manager</span>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <div class="container md:mt-24 mt-16">
                   <div class="grid md:grid-cols-2 grid-cols-1 gap-[30px]">
                       <div class="flex">
                           <i data-feather="help-circle" class="fea icon-ex-md text-indigo-600 me-3"></i>
                           <div class="flex-1">
                               <h5 class="mb-2 text-xl font-semibold">How our <span class="text-indigo-600">Techwind</span> work ?</h5>
                               <p class="text-slate-400">Due to its widespread use as filler text for layouts, non-readability is of great importance: human perception is tuned to recognize certain patterns and repetitions in texts.</p>
                           </div>
                       </div>
                       
                       <div class="flex">
                           <i data-feather="help-circle" class="fea icon-ex-md text-indigo-600 me-3"></i>
                           <div class="flex-1">
                               <h5 class="mb-2 text-xl font-semibold"> What is the main process open account ?</h5>
                               <p class="text-slate-400">If the distribution of letters and 'words' is random, the reader will not be distracted from making a neutral judgement on the visual impact</p>
                           </div>
                       </div>
                       
                       <div class="flex">
                           <i data-feather="help-circle" class="fea icon-ex-md text-indigo-600 me-3"></i>
                           <div class="flex-1">
                               <h5 class="mb-2 text-xl font-semibold"> How to make unlimited data entry ?</h5>
                               <p class="text-slate-400">Furthermore, it is advantageous when the dummy text is relatively realistic so that the layout impression of the final publication is not compromised.</p>
                           </div>
                       </div>
                       
                       <div class="flex">
                           <i data-feather="help-circle" class="fea icon-ex-md text-indigo-600 me-3"></i>
                           <div class="flex-1">
                               <h5 class="mb-2 text-xl font-semibold"> Is <span class="text-indigo-600">Techwind</span> safer to use with my account ?</h5>
                               <p class="text-slate-400">The most well-known dummy text is the 'Lorem Ipsum', which is said to have originated in the 16th century. Lorem Ipsum is composed in a pseudo-Latin language which more or less corresponds to 'proper' Latin.</p>
                           </div>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <div class="container md:mt-24 mt-16">
                   <div class="grid grid-cols-1 text-center">
                       <h3 class="mb-6 md:text-3xl text-2xl md:leading-normal leading-normal font-semibold">Have Question ? Get in touch!</h3>
   
                       <p class="text-slate-400 max-w-xl mx-auto">Start working with Tailwind CSS that can provide everything you need to generate awareness, drive traffic, connect.</p>
                   
                       <div class="mt-6">
                           <a href="contact-one.html" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md mt-4"><i class="uil uil-phone"></i> Contact us</a>
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
           </section><!--end section-->
           <!-- End -->
   
           <!-- Footer Start -->
           <footer class="footer bg-dark-footer relative text-gray-200 dark:text-gray-200">    
               <div class="container">
                   <div class="grid grid-cols-12">
                       <div class="col-span-12">
                           <div class="py-[60px] px-0">
                               <div class="grid md:grid-cols-12 grid-cols-1 gap-[30px]">
                                   <div class="lg:col-span-4 md:col-span-12">
                                       <a href="#" class="text-[22px] focus:outline-none">
                                           <img src="assets/images/logo-light.png" alt="">
                                       </a>
                                       <p class="mt-6 text-gray-300">Start working with Tailwind CSS that can provide everything you need to generate awareness, drive traffic, connect.</p>
                                       <ul class="list-none mt-6">
                                           <li class="inline"><a href="https://1.envato.market/techwind" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-shopping-cart align-middle" title="Buy Now"></i></a></li>
                                           <li class="inline"><a href="https://dribbble.com/shreethemes" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-dribbble align-middle" title="dribbble"></i></a></li>
                                           <li class="inline"><a href="https://www.behance.net/shreethemes" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-behance" title="Behance"></i></a></li>
                                           <li class="inline"><a href="http://linkedin.com/company/shreethemes" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-linkedin" title="Linkedin"></i></a></li>
                                           <li class="inline"><a href="https://www.facebook.com/shreethemes" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-facebook-f align-middle" title="facebook"></i></a></li>
                                           <li class="inline"><a href="https://www.instagram.com/shreethemes/" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-instagram align-middle" title="instagram"></i></a></li>
                                           <li class="inline"><a href="https://twitter.com/shreethemes" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-twitter align-middle" title="twitter"></i></a></li>
                                           <li class="inline"><a href="mailto:support@shreethemes.in" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-envelope align-middle" title="email"></i></a></li>
                                           <li class="inline"><a href="https://forms.gle/QkTueCikDGqJnbky9" target="_blank" class="btn btn-icon btn-sm border border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 dark:hover:bg-indigo-600"><i class="uil uil-file align-middle" title="customization"></i></a></li>
                                       </ul><!--end icon-->
                                   </div><!--end col-->
                           
                                   <div class="lg:col-span-2 md:col-span-4">
                                       <h5 class="tracking-[1px] text-gray-100 font-semibold">Company</h5>
                                       <ul class="list-none footer-list mt-6">
                                           <li><a href="page-aboutus.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> About us</a></li>
                                           <li class="mt-[10px]"><a href="page-services.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Services</a></li>
                                           <li class="mt-[10px]"><a href="page-team.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Team</a></li>
                                           <li class="mt-[10px]"><a href="page-pricing.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Pricing</a></li>
                                           <li class="mt-[10px]"><a href="portfolio-creative-four.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Project</a></li>
                                           <li class="mt-[10px]"><a href="blog.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Blog</a></li>
                                           <li class="mt-[10px]"><a href="auth-login.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Login</a></li>
                                       </ul>
                                   </div><!--end col-->
                           
                                   <div class="lg:col-span-3 md:col-span-4">
                                       <h5 class="tracking-[1px] text-gray-100 font-semibold">Usefull Links</h5>
                                       <ul class="list-none footer-list mt-6">
                                           <li><a href="page-terms.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Terms of Services</a></li>
                                           <li class="mt-[10px]"><a href="page-privacy.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Privacy Policy</a></li>
                                           <li class="mt-[10px]"><a href="documentation.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Documentation</a></li>
                                           <li class="mt-[10px]"><a href="changelog.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Changelog</a></li>
                                           <li class="mt-[10px]"><a href="widget.html" class="text-gray-300 hover:text-gray-400 duration-500 ease-in-out"><i class="uil uil-angle-right-b"></i> Widget</a></li>
                                       </ul>
                                   </div><!--end col-->
       
                                   <div class="lg:col-span-3 md:col-span-4">
                                       <h5 class="tracking-[1px] text-gray-100 font-semibold">Newsletter</h5>
                                       <p class="mt-6">Sign up and receive the latest tips via email.</p>
                                       <form>
                                           <div class="grid grid-cols-1">
                                               <div class="foot-subscribe my-3">
                                                   <label class="form-label">Write your email <span class="text-red-600">*</span></label>
                                                   <div class="form-icon relative mt-2">
                                                       <i data-feather="mail" class="w-4 h-4 absolute top-3 start-4"></i>
                                                       <input type="email" class="form-input bg-gray-800 border border-gray-800 text-gray-100 ps-12 focus:shadow-none" placeholder="Email" name="email" required="">
                                                   </div>
                                               </div>
                                           
                                               <button type="submit" id="submitsubscribe" name="send" class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md">Subscribe</button>
                                           </div>
                                       </form>
                                   </div><!--end col-->
                               </div><!--end grid-->
                           </div><!--end col-->
                       </div>
                   </div><!--end grid-->
               </div><!--end container-->
   
               <div class="py-[30px] px-0 border-t border-slate-800">
                   <div class="container text-center">
                       <div class="grid md:grid-cols-2 items-center">
                           <div class="ltr:md:text-left rtl:md:text-right text-center">
                               <p class="mb-0">© <script>document.write(new Date().getFullYear())</script> Techwind. Design with <i class="mdi mdi-heart text-red-600"></i> by <a href="https://shreethemes.in/" target="_blank" class="text-reset">Shreethemes</a>.</p>
                           </div>
   
                           <ul class="list-none ltr:md:text-right rtl:md:text-left text-center mt-6 md:mt-0">
                               <li class="inline"><a href=""><img src="assets/images/payments/american-ex.png" class="max-h-6 inline" title="American Express" alt=""></a></li>
                               <li class="inline"><a href=""><img src="assets/images/payments/discover.png" class="max-h-6 inline" title="Discover" alt=""></a></li>
                               <li class="inline"><a href=""><img src="assets/images/payments/master-card.png" class="max-h-6 inline" title="Master Card" alt=""></a></li>
                               <li class="inline"><a href=""><img src="assets/images/payments/paypal.png" class="max-h-6 inline" title="Paypal" alt=""></a></li>
                               <li class="inline"><a href=""><img src="assets/images/payments/visa.png" class="max-h-6 inline" title="Visa" alt=""></a></li>
                           </ul>
                       </div><!--end grid-->
                   </div><!--end container-->
               </div>
           </footer><!--end footer-->
           <!-- Footer End -->
   
           <!-- Start Cookie Popup -->
           <div class="cookie-popup fixed max-w-lg bottom-3 end-3 start-3 sm:start-0 mx-auto bg-white dark:bg-slate-900 shadow dark:shadow-gray-800 rounded-md py-5 px-6 z-50">
               <p class="text-slate-400">This website uses cookies to provide you with a great user experience. By using it, you accept our <a href="https://shreethemes.in" target="_blank" class="text-emerald-600 dark:text-emerald-500 font-semibold">use of cookies</a></p>
               <div class="cookie-popup-actions ltr:text-right rtl:text-left">
                   <button class="absolute border-none bg-none p-0 cursor-pointer font-semibold top-2 end-2"><i class="uil uil-times text-dark dark:text-slate-200 text-2xl"></i></button>
               </div>
           </div>
           <!--Note: Cookies Js including in plugins.init.js (path like; assets/js/plugins.init.js) and Cookies css including in _helper.scss (path like; scss/_helper.scss)-->
           <!-- End Cookie Popup -->
   
           <!-- Back to top -->
           <a href="#" onclick="topFunction()" id="back-to-top" class="back-to-top fixed hidden text-lg rounded-full z-10 bottom-5 end-5 h-9 w-9 text-center bg-indigo-600 text-white leading-9"><i class="uil uil-arrow-up"></i></a>
           <!-- Back to top -->
   
           <!-- Switcher -->
           <div class="fixed top-[30%] -right-2 z-50">
               <span class="relative inline-block rotate-90">
                   <input type="checkbox" class="checkbox opacity-0 absolute" id="chk" />
                   <label class="label bg-slate-900 dark:bg-white shadow dark:shadow-gray-800 cursor-pointer rounded-full flex justify-between items-center p-1 w-14 h-8" for="chk">
                       <i class="uil uil-moon text-[20px] text-yellow-500"></i>
                       <i class="uil uil-sun text-[20px] text-yellow-500"></i>
                       <span class="ball bg-white dark:bg-slate-900 rounded-full absolute top-[2px] left-[2px] w-7 h-7"></span>
                   </label>
               </span>
           </div>
           <!-- Switcher -->
   
           <!-- LTR & RTL Mode Code -->
           <div class="fixed top-[40%] -right-3 z-50">
               <a href="" id="switchRtl">
                   <span class="py-1 px-3 relative inline-block rounded-t-md -rotate-90 bg-white dark:bg-slate-900 shadow-md dark:shadow dark:shadow-gray-800 font-bold rtl:block ltr:hidden" >LTR</span>
                   <span class="py-1 px-3 relative inline-block rounded-t-md -rotate-90 bg-white dark:bg-slate-900 shadow-md dark:shadow dark:shadow-gray-800 font-bold ltr:block rtl:hidden">RTL</span>
               </a>
           </div>
           <!-- LTR & RTL Mode Code -->
   
           <!-- JAVASCRIPTS -->
           <script src="assets/libs/tobii/js/tobii.min.js"></script>
           <script src="assets/libs/tiny-slider/min/tiny-slider.js"></script>
           <script src="assets/libs/feather-icons/feather.min.js"></script>
           <script src="assets/js/plugins.init.js"></script>
           <script src="assets/js/app.js"></script>
           <!-- JAVASCRIPTS -->
       </body>
   </html>