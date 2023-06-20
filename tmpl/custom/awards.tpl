{include 
    file="front/header.tpl" 
    title="Recognitions and Accolades | {$settings.site_name}" 
    description="Discover the prestigious awards and accolades received by Zenith Earners for our outstanding achievements in the investment industry. Explore our award-winning platform and join a trusted leader in the financial sector"
    keywords="awards, accolades, recognition, investment platform, trusted leader, financial industry"
}

{include 
    file="front/hero_section.tpl" 
    bg="assets/images/awards/awards-bg.jpg" 
    title="Celebrating Excellence" 
    paragragh="Embrace the pride as we showcase the recognition and accolades that have solidified Zenith Earners as a leader in the investment industry." 
}

<!-- Start Section-->
    <section class="relative md:py-24 py-16 bg-gray-50 dark:bg-slate-900">
        <div class="absolute inset-0 bg-slate-50"></div>
        <div class="container">
            <div class="grid grid-cols-1">
                <h5 class="text-xl font-semibold text-slate-900">Awards</h5>
            </div>

            <div class="grid lg:grid-cols-12 md:grid-cols-2 grid-cols-1 gap-[30px] mt-10">
                {include file="front/awards/award.tpl"}
                {include file="front/awards/award.tpl"}
                {include file="front/awards/award.tpl"}
                {include file="front/awards/award.tpl"}
            </div>
        </div>
    </section>


{include file="front/footer.tpl"}
