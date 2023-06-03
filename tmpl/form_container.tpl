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
    {include 
      file="textinput.tpl" 
      placeholder="Secret Question" 
      name="sq" 
      value=$frm.sq 
      icon='images/svg/form/sq.svg'
    }

  
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