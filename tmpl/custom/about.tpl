{include file="front/header.tpl"}

<!-- Start Hero -->
<section
    class="relative table w-full py-36 lg:py-44 bg-[url('../../assets/images/company/aboutus.jpg')] bg-no-repeat bg-center bg-cover"
>
    <div class="absolute inset-0 bg-black opacity-75"></div>
    <div class="container relative">
        <div class="grid grid-cols-1 pb-8 text-center mt-10">
            <h3 class="mb-6 md:text-4xl text-3xl md:leading-normal leading-normal font-medium text-white">About
                Us</h3>

            <p class="text-slate-300 text-lg max-w-xl mx-auto">Start working with Tailwind CSS that can provide
                everything you need to generate awareness, drive traffic, connect.</p>
        </div>
        <!--end grid-->
    </div>
    <!--end container-->

    <div class="absolute text-center z-10 bottom-5 start-0 end-0 mx-3">
        <ul class="breadcrumb tracking-[0.5px] breadcrumb-light mb-0 inline-block">
            <li
                class="inline breadcrumb-item uppercase text-[13px] font-bold duration-500 ease-in-out text-white/50 hover:text-white">
                <a href="index.html">Techwind</a>
            </li>
            <li
                class="inline breadcrumb-item uppercase text-[13px] font-bold duration-500 ease-in-out text-white/50 hover:text-white">
                <a href="">Company</a>
            </li>
            <li
                class="inline breadcrumb-item uppercase text-[13px] font-bold duration-500 ease-in-out text-white"
                aria-current="page"
            >Aboutus</li>
        </ul>
    </div>
</section>

<!--end section-->
<div class="relative">
    <div
        class="shape absolute sm:-bottom-px -bottom-[2px] start-0 end-0 overflow-hidden z-1 text-white dark:text-slate-900">
        <svg
            class="w-full h-auto"
            viewBox="0 0 2880 48"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
        >
            <path
                d="M0 48H1437.5H2880V0H2160C1442.5 52 720 0 720 0H0V48Z"
                fill="currentColor"
            ></path>
        </svg>
    </div>
</div>
<!-- End Hero -->

{* our_story_section *}
{include file="front/about/our_story_section.tpl"}

{include file="front/about/our_vision_section.tpl"}


{include file="front/about/our_team_section.tpl"}

{include file="front/about/security_section.tpl"}

{include file="front/about/testimonials_section.tpl"}
                

{include file="front/footer.tpl"}
