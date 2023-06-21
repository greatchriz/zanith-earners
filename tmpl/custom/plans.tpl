{include 
    file="front/header.tpl" 
    title="Investment Plans | {$settings.site_name}" 
    description="Explore the diverse investment plans and options available at Zenith Earners. Discover how our platform can help you grow your wealth and achieve your financial goals through strategic and personalized investment strategies"
    keywords="Investment plans, investment options, wealth growth, financial goals, strategic investments, personalized strategies, Zenith Earners"
}

{include 
    file="front/hero_section.tpl" 
    bg="assets/images/services.jpg" 
    title="Choose Your Path to Financial Success" 
    paragragh="Explore our Diverse Range of Investment Options Tailored to Your Financial Goals." 
}

 <!-- Start -->
<section class="relative py-16 bg-gray-50 dark:bg-slate-800">
    <div class="container relative">
        <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-[30px]">
            <div class="flex">
                <div class="flex align-middle justify-center items-center min-w-[56px] h-[56px] bg-indigo-600/5 border-2 border-indigo-600/20 text-indigo-600 rounded-lg text-xl shadow-sm dark:shadow-gray-800">
                    <i class="uil uil-water"></i>
                </div>

                <div class="content ms-6">
                    <a href="" class="text-lg font-medium hover:text-indigo-600">24/7 Support</a>
                    <p class="text-slate-400 mt-3">Experience unparalleled support with our 24/7 customer service team, ready to assist you every step of the way</p>
                </div>
            </div>
            <!--end feature content-->

            <div class="flex">
                <div class="flex align-middle justify-center items-center min-w-[56px] h-[56px] bg-indigo-600/5 border-2 border-indigo-600/20 text-indigo-600 rounded-lg text-xl shadow-sm dark:shadow-gray-800">
                    <i class="uil uil-dropbox"></i>
                </div>

                <div class="content ms-6">
                    <a href="" class="text-lg font-medium hover:text-indigo-600">Take Ownership</a>
                    <p class="text-slate-400 mt-3">Empower yourself to seize control of your financial future and make informed investment decisions with Zenith Earners</p>
                </div>
            </div>
            <!--end feature content-->

            <div class="flex">
                <div class="flex align-middle justify-center items-center min-w-[56px] h-[56px] bg-indigo-600/5 border-2 border-indigo-600/20 text-indigo-600 rounded-lg text-xl shadow-sm dark:shadow-gray-800">
                    <i class="uil uil-focus-target"></i>
                </div>

                <div class="content ms-6">
                    <a href="" class="text-lg font-medium hover:text-indigo-600">Team Work</a>
                    <p class="text-slate-400 mt-3">We believe in the power of collaboration, synergy, and collective efforts to achieve remarkable results</p>
                </div>
            </div>
            <!--end feature content-->
        </div><!--end grid-->
    </div><!--end container-->
</section><!--end section-->
<!-- End -->

    <section class="relative md:py-24 py-16">
        <div class="container relative">
            <div class="grid grid-cols-1 pb-8 text-center">
                <h3 class="mb-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">Tailored Solutions for Your Financial Goals</h3>

                <p class="text-slate-400 max-w-xl mx-auto">Discover the Perfect Investment Plan to Maximize Your Returns.</p>
            </div><!--end grid-->

            <div class="grid grid-cols-1">
        

                <div
                    id="StarterContent"
                    class="mt-6"
                >
                    <div
                        class=""
                        id="start-month"
                        role="tabpanel"
                        aria-labelledby="start-month-tab"
                    >
                        <div class="grid lg:grid-cols-3 md:grid-cols-2 grid-cols-1 gap-[30px]">
                
                            {include 
                                file="front/plan/plad_item.tpl"
                                plan_name="Investor"
                                percentage="6.6%"
                                duration="3 Days"
                                min="$200.00"
                                max="$4,999.00"
                            }

                            {include 
                                file="front/plan/plad_item.tpl"
                                plan_name="Super Investor"
                                percentage="7.0%"
                                duration="5 Days"
                                min="$5,000.00"
                                max="$15,000.00"
                            }

                            {include 
                                file="front/plan/plad_item.tpl"
                                plan_name="Silver"
                                percentage="8.0%"
                                duration="15 Days"
                                min="$15,000.00"
                                max="$49,000.00"
                            }

                            {include 
                                file="front/plan/plad_item.tpl"
                                bonus="$1000 monthly bonus for 1 year"
                                plan_name="Business"
                                percentage="3.0%"
                                duration="90 Days"
                                min="$50,000.00"
                                max="UNLIMITED"
                            }

                            {include 
                                file="front/plan/plad_item.tpl"
                                bonus="$1000 monthly for 2 years"
                                plan_name="Life Time"
                                percentage="1.0%"
                                duration="6 Months"
                                min="$100,000.00"
                                max="$3,500,000.00"
                            }

                        </div>


                    </div>

                </div>



            </div><!--end grid-->

        </div><!--end container-->

    </section><!--end section-->



{include file="front/footer.tpl"}
