{include 
    file="front/header.tpl" 
    title="Contact Us | {$settings.site_name}"
description="Explore the diverse investment plans and options available at Zenith Earners. Discover how our platform can
help you grow your wealth and achieve your financial goals through strategic and personalized investment strategies"
keywords="Investment plans, investment options, wealth growth, financial goals, strategic investments, personalized
strategies, Zenith Earners"
}

{include 
    file="front/hero_section.tpl" 
    bg="assets/images/contact-us.jpg" 
    title="Contact Us" 
    paragragh="Explore our Diverse Range of Investment Options Tailored to Your Financial Goals." 
}

<!-- Start Section-->
<section class="relative md:py-24 py-16">
  <div class="container">
    <div class="grid grid-cols-1 lg:grid-cols-3 md:grid-cols-2 gap-[30px]">
      <div class="text-center px-6 mt-6">
        <div
          class="w-20 h-20 bg-indigo-600/5 text-indigo-600 rounded-xl text-3xl flex align-middle justify-center items-center shadow-sm dark:shadow-gray-800 mx-auto"
        >
          <i class="uil uil-phone"></i>
        </div>

        <div class="content mt-7">
          <h5 class="title h5 text-xl font-medium">Phone</h5>
          <p class="text-slate-400 mt-3">The phrasal sequence of the is now so that many campaign and
            benefit</p>

          <div class="mt-5">
            <a
              href="tel:+152534-468-854"
              class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out"
            >+152 534-468-854</a>
          </div>
        </div>
      </div>

      <div class="text-center px-6 mt-6">
        <div
          class="w-20 h-20 bg-indigo-600/5 text-indigo-600 rounded-xl text-3xl flex align-middle justify-center items-center shadow-sm dark:shadow-gray-800 mx-auto"
        >
          <i class="uil uil-envelope"></i>
        </div>

        <div class="content mt-7">
          <h5 class="title h5 text-xl font-medium">Email</h5>
          <p class="text-slate-400 mt-3">The phrasal sequence of the is now so that many campaign and
            benefit</p>

          <div class="mt-5">
            <a
              href="mailto:contact@example.com"
              class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out"
            >contact@example.com</a>
          </div>
        </div>
      </div>

      <div class="text-center px-6 mt-6">
        <div
          class="w-20 h-20 bg-indigo-600/5 text-indigo-600 rounded-xl text-3xl flex align-middle justify-center items-center shadow-sm dark:shadow-gray-800 mx-auto"
        >
          <i class="uil uil-map-marker"></i>
        </div>

        <div class="content mt-7">
          <h5 class="title h5 text-xl font-medium">Location</h5>
          <p class="text-slate-400 mt-3">C/54 Northwest Freeway, Suite 558, <br> Houston, USA 485</p>

          <div class="mt-5">
            <a
              href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d39206.002432144705!2d-95.4973981212445!3d29.709510002925988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8640c16de81f3ca5%3A0xf43e0b60ae539ac9!2sGerald+D.+Hines+Waterwall+Park!5e0!3m2!1sen!2sin!4v1566305861440!5m2!1sen!2sin"
              data-type="iframe"
              class="video-play-icon read-more lightbox btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out"
            >View on Google map</a>
          </div>
        </div>
      </div>
    </div>
    <!--end grid-->
  </div>
  <!--end container-->

  <div class="container md:mt-24 mt-16">
    <div class="grid md:grid-cols-12 grid-cols-1 items-center gap-[30px]">

      {if $say eq 'send'}
         <p class="bg-green-600 text-white text-xl font-semibold mb-4 p-6"> Message has been successfully sent. We will get back to you in less than 24 hours. Thank you.</p>
      {/if}


        <div class="mt-8 md:mt-0">
          <div class="lg:ms-5">
              <div class="bg-white dark:bg-slate-900 rounded-md shadow dark:shadow-gray-800 p-6">
                  <h3 class="mb-6 text-2xl leading-normal font-medium">Get in touch !</h3>

                  <form
                    method=post
                    name=mainform
                    id="mainform"
                    onsubmit="return validateForm()"
                  >
                      <p class="mb-0" id="error-msg"></p>
                      <div id="simple-msg"></div>

                      <div class="grid lg:grid-cols-12 lg:gap-6">

                        <input
                          type=hidden
                          name=a
                          value=support
                        >
                        <input
                          type=hidden
                          name=action
                          value=send
                        >

                        {if $errors}
                          <ul style="color:red">
                            {if $errors.turing_image == 1}
                              <li>Invalid turing image</li>
                            {/if}
                            {if $errors.invalid_email == 1}
                              <li>Invalid email address</li>
                            {/if}
                          </ul>
                        {/if}

                        {* name *}
                        <div class="lg:col-span-6 mb-5">
                          <div class="ltr:text-left rtl:text-right">
                            <label for="name" class="font-semibold"
                              >Your Name:</label
                            >
                            <div class="form-icon relative mt-2">
                              <i
                                data-feather="user"
                                class="w-4 h-4 absolute top-3 start-4"></i>
                              <input
                              {if $userinfo.logged}
                                value="{$userinfo.name}"
                                readonly
                              {else}
                                value="{$frm.name|escape:htmlall}"
                                name="name"
                                id="name"
                                type="text"
                                class="form-input ps-11"
                                placeholder="Name :" />
                              {/if}
                            </div>
                          </div>
                        </div>

                        <div class="lg:col-span-6 mb-5">
                          <div class="ltr:text-left rtl:text-right">
                            <label for="email" class="font-semibold"
                              >Your Email:</label
                            >
                            <div class="form-icon relative mt-2">
                              <i
                                data-feather="mail"
                                class="w-4 h-4 absolute top-3 start-4"></i>
                              <input
                              {if $userinfo.logged}
                                value="{$userinfo.email}"
                                readonly
                              {else}
                                value="{$frm.email|escape:htmlall}"
                                name="email"
                                id="email"
                                type="text"
                                class="form-input ps-11"
                                placeholder="Email :" />
                              {/if}
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="grid grid-cols-1">

                        <div class="mb-5">
                          <div class="ltr:text-left rtl:text-right">
                            <label for="subject" class="font-semibold"
                              >Your Question:</label
                            >
                            <div class="form-icon relative mt-2">
                              <i
                                data-feather="book"
                                class="w-4 h-4 absolute top-3 start-4"></i>
                              <input
                                id="subject"
                                class="form-input ps-11"
                                placeholder="Subject :" />
                            </div>
                          </div>
                        </div>

                        <div class="mb-5">
                          <div class="ltr:text-left rtl:text-right">
                            <label for="comments" class="font-semibold"
                              >Message:</label
                            >
                            <div class="form-icon relative mt-2">
                              <i
                                data-feather="message-circle"
                                class="w-4 h-4 absolute top-3 start-4"></i>
                              <textarea
                                name="message"
                                id="comments"
                                class="form-input ps-11 h-28"
                                placeholder="Message :">
                                {$frm.message|escape:htmlall}
                              </textarea>
                            </div>
                          </div>
                        </div>
                      </div>

                      <button
                        type="submit"
                        id="submit"
                        name="send"
                        class="btn bg-indigo-600 hover:bg-indigo-700 border-indigo-600 hover:border-indigo-700 text-white rounded-md justify-center flex items-center">
                        Send
                      </button>
                      
                  </form>
              </div>
            </div>
        </div>

    </div>
  </div>
  <!--end container-->
</section>
<!--end section-->
<!-- End Section-->



{include file="front/footer.tpl"}
