{extends file='auth_layout.tpl'}


{block name=content}
  <main class="flex w-full flex-col items-center bg-white dark:bg-navy-700 lg:max-w-md">
    <div class="flex w-full max-w-sm grow flex-col justify-center p-5">
      <div class="text-center">
        <img
          class="mx-auto h-16 w-16 lg:hidden"
          src="images/app-logo.svg"
          alt="logo"
        />
        <div class="mt-4">
          <h2 class="text-2xl font-semibold text-slate-600 dark:text-navy-100">
            Welcome To Lineone
          </h2>
          <p class="text-slate-400 dark:text-navy-300">
            Please sign up to continue
          </p>
        </div>
      </div>


      {if $deny_registration}
        We are closed for new registrations now.
      {elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
        You do not have a upline. Our system require a upline for each user.
      {else}
        {literal}

          <script language=javascript>
            function checkform() {
              if (document.regform.fullname.value == '') {
                alert("Please enter your full name!");
                document.regform.fullname.focus();
                return false;
              }
            {/literal}
            {if $settings.use_user_location == 1}
              {literal}
                if (document.regform.address.value == '') {
                  alert("Please enter your address!");
                  document.regform.address.focus();
                  return false;
                }
                if (document.regform.city.value == '') {
                  alert("Please enter your city!");
                  document.regform.city.focus();
                  return false;
                }
                if (document.regform.state.value == '') {
                  alert("Please enter your state!");
                  document.regform.state.focus();
                  return false;
                }
                if (document.regform.zip.value == '') {
                  alert("Please enter your ZIP!");
                  document.regform.zip.focus();
                  return false;
                }
                if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
                  alert("Please choose your country!");
                  document.regform.country.focus();
                  return false;
                }
              {/literal}
            {/if}
            {literal}
              if (document.regform.username.value == '') {
                alert("Please enter your username!");
                document.regform.username.focus();
                return false;
              }
              if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
                alert("For username you should use English letters and digits only!");
                document.regform.username.focus();
                return false;
              }
              if (document.regform.password.value == '') {
                alert("Please enter your password!");
                document.regform.password.focus();
                return false;
              }
              if (document.regform.password.value != document.regform.password2.value) {
                alert("Please check your password!");
                document.regform.password2.focus();
                return false;
              }
            {/literal}
            {if $settings.use_transaction_code}
              {literal}
                if (document.regform.transaction_code.value == '') {
                  alert("Please enter your transaction code!");
                  document.regform.transaction_code.focus();
                  return false;
                }
                if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
                  alert("Please check your transaction code!");
                  document.regform.transaction_code2.focus();
                  return false;
                }
              {/literal}
            {/if}
            {literal}
              if (document.regform.email.value == '') {
                alert("Please enter your e-mail address!");
                document.regform.email.focus();
                return false;
              }
              if (document.regform.email.value != document.regform.email1.value) {
                alert("Please retupe your e-mail!");
                document.regform.email.focus();
                return false;
              }

              for (i in document.regform.elements) {
                f = document.regform.elements[i];
                if (f.name && f.name.match(/^pay_account/)) {
                  if (f.value == '') continue;
                  var notice = f.getAttribute('data-validate-notice');
                  var invalid = 0;
                  if (f.getAttribute('data-validate') == 'regexp') {
                    var re = new RegExp(f.getAttribute('data-validate-regexp'));
                    if (!f.value.match(re)) {
                      invalid = 1;
                    }
                  } else if (f.getAttribute('data-validate') == 'email') {
                    var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
                    if (!f.value.match(re)) {
                      invalid = 1;
                    }
                  }
                  if (invalid) {
                    alert('Invalid account format. Expected ' + notice);
                    f.focus();
                    return false;
                  }
                }
              }

              if (document.regform.agree.checked == false) {
                alert("You have to agree with the Terms and Conditions!");
                return false;
              }

              return true;
            }

            function IsNumeric(sText) {
              var ValidChars = "0123456789";
              var IsNumber = true;
              var Char;
              if (sText == '') return false;
              for (i = 0; i < sText.length && IsNumber == true; i++) {
                Char = sText.charAt(i);
                if (ValidChars.indexOf(Char) == -1) {
                  IsNumber = false;
                }
              }
              return IsNumber;
            }
          </script>
        {/literal}

        {if $errors}
          <ul style="color:red">
            {section name=e loop=$errors}
              {if $errors[e] eq 'full_name'}
                <li>Please enter your full name!
                {/if}
                {if $errors[e] eq 'address'}
                <li>Please enter your address!
                {/if}
                {if $errors[e] eq 'city'}
                <li>Please enter your city!
                {/if}
                {if $errors[e] eq 'state'}
                <li>Please enter your state!
                {/if}
                {if $errors[e] eq 'zip'}
                <li>Please enter your zip!
                {/if}
                {if $errors[e] eq 'country'}
                <li>Please choose your country!
                {/if}
                {if $errors[e] eq 'username'}
                <li>Please enter valid username! It should contains English letters and digits only.
                {/if}
                {if $errors[e] eq 'username_exists'}
                <li>Sorry, such user already exists! Please try another username.
                {/if}
                {if $errors[e] eq 'email_exists'}
                <li>Sorry, such email already exists! Please try another email.
                {/if}
                {if $errors[e] eq 'password'}
                <li>Please enter a password!
                {/if}
                {if $errors[e] eq 'password_confirm'}
                <li>Please check your password!
                {/if}
                {if $errors[e] eq 'password_too_small'}
                <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
                {/if}
                {if $errors[e] eq 'transaction_code'}
                <li>Please enter the Transaction Code!
                {/if}
                {if $errors[e] eq 'transaction_code_confirm'}
                <li>Please check your Transaction Code!
                {/if}
                {if $errors[e] eq 'transaction_code_too_small'}
                <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length}
                  characters!
                {/if}
                {if $errors[e] eq 'transaction_code_vs_password'}
                <li>The Transaction Code should differ from the Password!
                {/if}
                {if $errors[e] eq 'email'}
                <li>Please enter your e-mail!
                {/if}
                {if $errors[e] eq 'email2'}
                <li>Please check your email!
                {/if}
                {if $errors[e] eq 'agree'}
                <li>You have to agree with the Terms and Conditions!
                {/if}
                {if $errors[e] eq 'turing_image'}
                <li>Enter the verification code as it is shown in the corresponding box.
                {/if}
                {if $errors[e] eq 'no_upline'}
                <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or
                  found a referral link in the net.{/if}
                {/if}
                {if $errors[e] eq 'ip_exists_in_database'}
                <li>Your IP already exists in our database. Sorry, but registration impossible.
                {/if}

                {if $errors[e] eq 'invalid_account_format'}
                  {foreach from=$account_errors item=err}
                  <li>{$err}
                  {/foreach}
                {/if}

                <br>
              {/section}
          </ul>
        {/if}
        <form
          method=post
          onsubmit="return checkform()"
          name="regform"
        >
          <input
            type=hidden
            name=a
            value="signup"
          >
          <input
            type=hidden
            name=action
            value="signup"
          >

          <div class="mt-4 space-y-4">

            <!--Full Name-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Full Name"
                type="text"
                name=fullname
                value='{$frm.fullname|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                  />
                </svg>
              </span>
            </label>

            <!--Username-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Username"
                type="text"
                name=username
                value='{$frm.username|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                  />
                </svg>
              </span>
            </label>

            <!--Define Password-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Password"
                type="password"
                name=password
                value='{$frm.password|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"
                  />
                </svg>
              </span>
            </label>

            <!--Retype Password-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Confirm Password"
                type="password"
                name=password2
                value='{$frm.password2|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"
                  />
                </svg>
              </span>
            </label>

            <!--Email-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Email"
                type="email"
                name=email
                value='{$frm.email|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                  />
                </svg>
              </span>
            </label>

            <!--Confirm Email-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Confirm Email"
                type="email"
                name=email1
                value='{$frm.email1|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="1.5"
                    d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                  />
                </svg>
              </span>
            </label>

            <!--Secret Question-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Secret Question"
                type="text"
                name=sq
                value='{$frm.sq|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                  />
                </svg>
              </span>
            </label>

            <!--Secret Answer-->
            <label class="relative flex">
              <input
                class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900"
                placeholder="Secret Answer"
                type="text"
                name=sa
                value='{$frm.sa|escape:"quotes"}'
              />
              <span
                class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
              >
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  class="h-5 w-5 transition-colors duration-200"
                  fill="none"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                  stroke-width="1.5"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                  />
                </svg>
              </span>
            </label>

            <div class="mt-4 flex items-center space-x-2">
              <input
                class="form-checkbox is-basic h-5 w-5 rounded border-slate-400/70 checked:border-primary checked:bg-primary hover:border-primary focus:border-primary dark:border-navy-400 dark:checked:border-accent dark:checked:bg-accent dark:hover:border-accent dark:focus:border-accent"
                type="checkbox"
                name=agree
                value=1
                {if $frm.agree}checked{/if}
              />
              <p class="line-clamp-1">
                I agree with
                <a
                  href="{"?a=rules"|encurl}"
                  class="text-slate-400 hover:underline dark:text-navy-300"
                >
                  privacy policy
                </a>
              </p>
            </div>


            {foreach from=$pay_accounts item=ps}
              <div>
                <div>Your {$ps.name} Account:</div>
                <div><input
                    type=text
                    class=inpts
                    size=30
                    name=pay_account[{$ps.id}]
                    value="{$ps.account|escape:html}"
                    data-validate="{$ps.validate.func}"
                    data-validate-{$ps.validate.func}="{$ps.validate[$ps.validate.func]}"
                    data-validate-notice="{$ps.validate.notification|escape:html}"
                    placeholder="{$ps.validate.placeholder|escape:html}"
                  ></div>
              </div>
            {/foreach}
            {foreach item=p from=$mpay_accounts}
              {foreach item=ps from=$p.accounts}
                <div>
                  <div>Your {$p.name} {$ps.name}:</div>
                  <div><input
                      type=text
                      class=inpts
                      size=30
                      name="pay_account[{$p.id}][{$ps.name|escape:html}]"
                      value="{$ps.value|escape:html}"
                    ></div>
                </div>
              {/foreach}
            {/foreach}

            {if $settings.use_referal_program}
              {if $referer}
                <div>
                  <div>Your Upline:</div>
                  <div>{*<a href="mailto:{$referer.email}">*}{$referer.name}{*</a>*} ({$referer.username|escape:html})</div>
                </div>
              {else}
                {if $settings.force_upline}
                  {if $settings.get_rand_ref}
                    <div>
                      <td colspan=2>
                        You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random
                        one or find a referral link on the net.
                        <input
                          type=checkbox
                          name="rand_ref"
                          value=1
                        >
                      </div>
                    </div>
                  {else}
                    <div>
                      <td colspan=2>
                        You do not have an upline. Our system requires an upline for each user.
                      </div>
                    </div>
                  {/if}
                {/if}
              {/if}
            {/if}

            <button
              type="submit"
              class="btn mt-10 h-10 w-full bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
            >
              Register
            </button>

          </div>



        </form>
      {/if}

      <div class="mt-4 text-center text-xs+">
        <p class="line-clamp-1">
          <span>Already have an account? </span>
          <a
            class="text-primary transition-colors hover:text-primary-focus dark:text-accent-light dark:hover:text-accent"
            href="{"?a=login"|encurl}"
          >Sign In</a>
        </p>
      </div>
    </div>
  </main>
{/block}
