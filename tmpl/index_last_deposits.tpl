
{if $settings.index_last_deposits}
{loaddata name="transactions" limit=$settings.index_last_deposits type="deposit" var="last_deposits"}
{/if}

{if $last_deposits}

  <section class="relative md:py-24 py-16">
    <div class="container relative">
      <div class="grid grid-cols-1 pb-8 text-center">
        <h3 class="mb-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">Last Deposits</h3>
  
        <p class="text-slate-400 max-w-xl mx-auto">Discover the Perfect Investment Plan to Maximize Your Returns.
        </p>
      </div>
      <!--end grid-->
  
      <div class="grid grid-cols-1 gap-[30px] mt-10">
        <div class="tiny-three-item">

          {foreach from=$last_deposits item=s}

          <div class="tiny-slide">
            <!-- Content -->
            <div
                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                <div
                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                </div>
                <img
                    src="images/{$s.ec}.gif"
                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                    alt=""
                >
          
                <div class="content mt-4">
                    <a
                        href=""
                        class="text-lg font-medium hover:text-indigo-600 block"
                    >{$currency_sign}{$s.amount}</a>
                    <span class="text-slate-400 block">Amount.</span>
          
                    <a
                        href=""
                        class="text-lg font-medium hover:text-indigo-600 block"
                    >{$s.date}</a>
                    <span class="text-slate-400 block">Date.</span>
          
                    <a
                        href=""
                        class="text-lg font-medium hover:text-indigo-600 block"
                    >{$s.username}</a>
                    <span class="text-slate-400 block">User.</span>
                    
          
                </div>
            </div>
            <!-- Content -->
          </div>
          
          {/foreach}
        </div>
      </div>
    </div>  
  </section>
    
{/if}




        <!-- Start -->
          <section class="realtive md:py-24 py-16">
            <div class="container relative">
                <div class="grid md:grid-cols-12 grid-cols-1 gap-[30px]">
                    <div class="lg:col-span-4 md:col-span-5">
                        <div class="sticky top-20">
                            <ul class="flex-column text-center p-6 bg-white dark:bg-slate-900 shadow dark:shadow-gray-800 rounded-md" id="myTab" data-tabs-toggle="#myTabContent" role="tablist">
                                <li role="presentation">
                                    <button class="px-4 py-2 text-base font-semibold rounded-md w-full hover:text-indigo-600 transition-all duration-500 ease-in-out" id="profile-tab" data-tabs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="true">Private Office</button>
                                </li>
                                <li role="presentation">
                                    <button class="px-4 py-2 text-base font-semibold rounded-md w-full mt-3 transition-all duration-500 ease-in-out" id="dashboard-tab" data-tabs-target="#dashboard" type="button" role="tab" aria-controls="dashboard" aria-selected="false">Dedicated Office</button>
                                </li>
                                <li role="presentation">
                                    <button class="px-4 py-2 text-base font-semibold rounded-md w-full mt-3 transition-all duration-500 ease-in-out" id="settings-tab" data-tabs-target="#settings" type="button" role="tab" aria-controls="settings" aria-selected="false">Kitchen Space</button>
                                </li>
                                <li role="presentation">
                                    <button class="px-4 py-2 text-base font-semibold rounded-md w-full mt-3 transition-all duration-500 ease-in-out" id="contacts-tab" data-tabs-target="#contacts" type="button" role="tab" aria-controls="contacts" aria-selected="false">Meeting Rooms</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="lg:col-span-8 md:col-span-7">
                        <div id="myTabContent" class="p-6 bg-white dark:bg-slate-900 shadow dark:shadow-gray-800 rounded-md">
                            <div class="" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <img src="assets/images/cowork/7.jpg" class="shadow rounded-md" alt="">
                                <div class="mt-6">
                                    <h5 class="text-lg font-semibold mb-4">Private Office</h5>
                                    <p class="text-slate-400 mb-2">This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'. It is said that song composers of the past used dummy texts as lyrics.</p>
                                    <a href="" class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">See More <i class="uil uil-arrow-right align-middle"></i></a>
                                </div>
                            </div>
                            <div class="hidden " id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                                <img src="assets/images/cowork/8.jpg" class="shadow rounded-md" alt="">
                                <div class="mt-6">
                                    <h5 class="text-lg font-semibold mb-4">Dedicated Office</h5>
                                    <p class="text-slate-400 mb-2">This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'. It is said that song composers of the past used dummy texts as lyrics.</p>
                                    <a href="" class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">See More <i class="uil uil-arrow-right align-middle"></i></a>
                                </div>
                            </div>
                            <div class="hidden " id="settings" role="tabpanel" aria-labelledby="settings-tab">
                                <img src="assets/images/cowork/9.jpg" class="shadow rounded-md" alt="">
                                <div class="mt-6">
                                    <h5 class="text-lg font-semibold mb-4">Kitchen Space</h5>
                                    <p class="text-slate-400 mb-2">This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'. It is said that song composers of the past used dummy texts as lyrics.</p>
                                    <a href="" class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">See More <i class="uil uil-arrow-right align-middle"></i></a>
                                </div>
                            </div>
                            <div class="hidden " id="contacts" role="tabpanel" aria-labelledby="contacts-tab">
                                <img src="assets/images/cowork/10.jpg" class="shadow rounded-md" alt="">
                                <div class="mt-6">
                                    <h5 class="text-lg font-semibold mb-4">Meeting Rooms</h5>
                                    <p class="text-slate-400 mb-2">This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'. It is said that song composers of the past used dummy texts as lyrics.</p>
                                    <a href="" class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">See More <i class="uil uil-arrow-right align-middle"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end grid-->
            </div><!--end container-->

            <div class="container relative md:mt-24 mt-16">
                <div class="grid grid-cols-1 pb-8 text-center">
                    <h3 class="mb-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">What Our Users Say</h3>

                    <p class="text-slate-400 max-w-xl mx-auto">Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 30000+ companies worldwide.</p>
                </div><!--end grid-->



                <div class="grid grid-cols-1 gap-[30px] mt-10">
                    <div class="tiny-three-item">

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                        <div class="tiny-slide">
                            <!-- Content -->
                            <div
                                class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
                                <div
                                    class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
                                </div>
                                <img
                                    src="assets/images/client/01.jpg"
                                    class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
                                    alt=""
                                >

                                <div class="content mt-4">
                                    <a
                                        href=""
                                        class="text-lg font-medium hover:text-indigo-600 block"
                                    >Ronny Jofra</a>
                                    <span class="text-slate-400 block">C.E.O.</span>

                                    <p class="text-slate-400 mt-4">If the distribution of letters and 'words' is random
                                    </p>

                                    <ul class="list-none mt-4">
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="facebook"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="instagram"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="twitter"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                        <li class="inline"><a
                                                href=""
                                                class="btn btn-icon btn-sm border border-gray-100 dark:border-gray-800 rounded-md hover:border-indigo-600 dark:hover:border-indigo-600 hover:bg-indigo-600 hover:text-white"
                                            ><i
                                                    data-feather="linkedin"
                                                    class="h-4 w-4"
                                                ></i></a></li>
                                    </ul>
                                    <!--end icon-->
                                </div>
                            </div>
                            <!-- Content -->
                        </div>

                    </div>
                </div>

            </div><!--end container-->

            <div class="container relative md:mt-24 mt-16">
                <div class="grid md:grid-cols-12 grid-cols-1 mb-8 items-center">
                    <div class="md:col-span-6">
                        <h3 class="mb-4 md:text-3xl md:leading-normal text-2xl leading-normal font-semibold">Reads Our Latest <br> News & Blog</h3>
                    </div>

                    <div class="md:col-span-6">
                        <p class="text-slate-400 max-w-xl">Start working with Techwind that can provide everything you need to generate awareness, drive traffic, connect.</p>
                    </div>
                </div><!--end grid-->

                <div class="grid grid-cols-1 lg:grid-cols-3 md:grid-cols-2 mt-8 gap-[30px]">
                    <div class="blog relative rounded-md shadow dark:shadow-gray-800 overflow-hidden">
                        <img src="assets/images/blog/01.jpg" alt="">

                        <div class="content p-6">
                            <a href="blog-detail.html" class="title h5 text-lg font-medium hover:text-indigo-600 duration-500 ease-in-out">Tips for higher productivity</a>
                            <p class="text-slate-400 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                            
                            <div class="mt-4">
                                <a href="blog-detail.html" class="btn btn-link font-normal hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="blog relative rounded-md shadow dark:shadow-gray-800 overflow-hidden">
                        <img src="assets/images/blog/02.jpg" alt="">

                        <div class="content p-6">
                            <a href="blog-detail.html" class="title h5 text-lg font-medium hover:text-indigo-600 duration-500 ease-in-out">Green work environment</a>
                            <p class="text-slate-400 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                            
                            <div class="mt-4">
                                <a href="blog-detail.html" class="btn btn-link font-normal hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="blog relative rounded-md shadow dark:shadow-gray-800 overflow-hidden">
                        <img src="assets/images/blog/03.jpg" alt="">

                        <div class="content p-6">
                            <a href="blog-detail.html" class="title h5 text-lg font-medium hover:text-indigo-600 duration-500 ease-in-out">Importance of social interactions</a>
                            <p class="text-slate-400 mt-3">The phrasal sequence of the is now so that many campaign and benefit</p>
                            
                            <div class="mt-4">
                                <a href="blog-detail.html" class="btn btn-link font-normal hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out">Read More <i class="uil uil-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div><!--end grid-->
            </div><!--end container-->
        </section><!--end section-->
        <!-- End -->