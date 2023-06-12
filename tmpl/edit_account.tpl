{include file="header.tpl" pagetitle="Account" pageurl="edit_account"}
<div class="flex items-center space-x-4 py-5 lg:py-6">
  <h2
    class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl"
  >
    Edit Account
  
  </h2>
</div>

<div class="grid grid-cols-1 gap-4 sm:gap-5">                      
  <div class="card rounded-lg shadow-sm px-4 py-4 sm:px-5">
    <form action="" method=post onsubmit="return checkform()" name=editform>
      <input type=hidden name=a value=edit_account>
      <input type=hidden name=action value=edit_account>
      <input type=hidden name=say value="">

      {if $frm.say eq 'changed'}
      Your account data has been updated successfully.<br><br>
      {/if}
      {if $errors}
      <ul style="color:red">
      {section name=e loop=$errors}
      {if $errors[e] eq 'full_name'}
      <li>Please enter your Full Name!
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
      <li>Please enter your username!
      {/if}
      {if $errors[e] eq 'password'}
          <li>Please enter a password!
      {/if}
      {if $errors[e] eq 'password_confirm'} 
          <li>Please check your password!
      {/if}
      {if $errors[e] eq 'password_too_small'}
      <li>Password is too small, please enter at least {$settings.min_user_password_length} chars!
      {/if}
      {if $errors[e] eq 'transaction_code'}
          <li>Please enter the Transaction Code! {/if} {if $errors[e] eq 'transaction_code_confirm'} 
          <li>Please check your Transaction Code!
      {/if}
      {if $errors[e] eq 'transaction_code_too_small'}
      <li>Transaction Code is too small, please enter at least {$settings.min_user_password_length} chars!
      {/if}
      {if $errors[e] eq 'wrong_current_password'}
      <li>You entered wrong current password
      {/if}
      {if $errors[e] eq 'transaction_code_vs_password'}
          <li>Transaction Code should be different then the Password! {/if} {if $errors[e] 
            eq 'invalid_transaction_code'} 
          <li>You have provided invalid Current Transaction Code!
      {/if}
      {if $errors[e] eq 'email'}
      <li>Please enter your e-mail!
      {/if}
      {if $errors[e] eq 'turing_image'}
      <li>Enter the verification code as it is shown in the corresponding box.
      {/if}
      {if $errors[e] eq 'tfa_code'} 
        <li>Invalid 2FA code
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

      <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">

        {* Username *}
        <div>
          <label class="block">
            <span>Username</span>
            <span class="relative mt-1.5 flex">
            <input
              disabled
              class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary disabled:pointer-events-none disabled:select-none disabled:border-none disabled:bg-zinc-100 dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent dark:disabled:bg-navy-600"
              type="text"
              value="{$userinfo.username}"
            />
          </label>
          <span class="text-tiny+ text-slate-400 dark:text-navy-300"
            >You can not Change Your Username</span
          >
        </div>

        {* Registeration Date *}
        <div>
          <label class="block">
            <span>Registeration Date</span>
            <span class="relative mt-1.5 flex">
            <input
              disabled
              class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary disabled:pointer-events-none disabled:select-none disabled:border-none disabled:bg-zinc-100 dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent dark:disabled:bg-navy-600"
              type="text"
              value="{$userinfo.date_register}"
            />
          </label>
          <span class="text-tiny+ text-slate-400 dark:text-navy-300"
            >You can not Change Your Registeration Date</span
          >
        </div>

        {* Full Name *}

        <div>
          <label class="block">
            <span>Full Name</span>
            <span class="relative mt-1.5 flex">
            <input
              class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
              type="text"
              name="fullname"
              value="{$userinfo.name}"
            />
          </label>  
        </div>

        {* Email Address *}

        <div>
          <label class="block">
            <span>Email Address</span>
            <span class="relative mt-1.5 flex">
            <input
              class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
              type="text"
              name="email"
              value="{$userinfo.email}"
            />
          </label>
        </div>
 
        {* Wallet Address *}
        {foreach item=p from=$mpay_accounts}
          {foreach item=ps from=$p.accounts}

            <div>
              <label class="block">
                <span>{$p.name} {$ps.name} </span>
                <span class="relative mt-1.5 flex">
                <input
                  class="form-input w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                  type="text"
                  name="pay_account[{$p.id}][{$ps.name|escape:html}]"
                  value="{$frm.pay_account[$p.id][$ps.name]|default:$ps.value|escape:html}"
                />
              </label>
            </div>                 
          {/foreach}
        {/foreach}

        {* Change Account Data  button *}

        <button
          type=submit
          class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
        >
          Change Account Data
        </button>







      
        
        
        {* <label class="block">
          <span>Phone Number</span>
          <span class="relative mt-1.5 flex">
            <input
              class="form-input peer w-full rounded-full border border-slate-300 bg-transparent px-3 py-2 pl-9 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
              placeholder="Enter phone number"
              type="text"
            />
            <span
              class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
            >
              <i class="fa fa-phone"></i>
            </span>
          </span>
        </label> *}
      </div>
    </form>
  </div>

</div>

{include file="footer.tpl"}