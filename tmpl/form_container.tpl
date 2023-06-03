<div class="mt-4 space-y-4">

  <!--Full Name-->
  {include 
    file="textinput.tpl" 
    placeholder="Full Name" 
    name="fullname" 
    value=$frm.fullname 
    icon='images/svg/form/name.svg'
  }


  <!--Username-->
  {include 
    file="textinput.tpl" 
    placeholder="Username" 
    name="username" 
    value=$frm.username 
    icon='images/svg/form/name.svg'
  }

  <!--Define Password-->
  {include 
    file="textinput.tpl" 
    placeholder="Password" 
    name="password" 
    value=$frm.password 
    icon='images/svg/form/password.svg'
  }

  <!--Retype Password-->
  {include 
    file="textinput.tpl" 
    placeholder="Confirm Password" 
    name="password2" 
    value=$frm.password2 
    icon='images/svg/form/password.svg'
  }

  <!--Email-->
  {include 
    file="textinput.tpl" 
    placeholder="Email" 
    name="email" 
    value=$frm.email 
    icon='images/svg/form/email.svg'
  }

  <!--Confirm Email-->
  {include 
    file="textinput.tpl" 
    placeholder="Confirm Email" 
    name="email1" 
    value=$frm.email1 
    icon='images/svg/form/email.svg'
  }
  

  <!--Secret Question-->
  {include 
      file="textinput.tpl" 
      placeholder="Secret Question" 
      name="sq" 
      value=$frm.sq 
      icon='images/svg/form/question.svg'
    }


  <!--Secret Answer-->
  {include 
      file="textinput.tpl" 
      placeholder="Secret Answer" 
      name="sa" 
      value=$frm.sa 
      icon='images/svg/form/question.svg'
    }

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


  {* {foreach from=$pay_accounts item=ps}
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
  {/foreach} *}
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
