{include file="header.tpl" pagetitle="Withdrwal" pageurl="withdraw"}

<div class="flex items-center space-x-4 py-5 lg:py-6">
  <h2
    class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl"
  >
  Ask for withdrawal
  </h2>

</div>

<div class="grid grid-cols-1 gap-4 sm:gap-5">

  {if $say eq 'processed'}
  {if $batch eq ''}Withdrawal request has been successfully saved.{else} Withdrawal has been processed. Batch id: {$batch}{/if}
  <br><br>
  {/if}

  {if $fatals}
    {if $fatal == 'times_limit' || $fatals.times_limit}
    <div class="msg">You can withdraw {$settings.limit_withdraw_period_times} per {$settings.limit_withdraw_period_date} only.</div>
    {/if}

  {else}
  {if $say eq 'ec_forbidden' || $errors.ec_forbidden}
  Sorry, withdraw for this processing is temproary forbidden.<br><br>
  {/if}
  {if $say eq 'on_hold' || $errors.on_hold}
  Sorry, this amount on hold now.<br><br>
  {/if}
  {if $say eq 'zero' || $errors.zero}
  Sorry, you can't request a withdraw smaller than {$currency_sign}0.00 only<br><br>
  {/if}
  {if $say eq 'less_min' || $errors.less_min}
  Sorry, you can request not less than {$currency_sign}{*$settings.min_withdrawal_amount*}{$fees.amount_min}<br><br>
  {/if}
  {if $say eq 'greater_max' || $errors.greater_max}
  Sorry, you can request not greater than {$currency_sign}{*$settings.max_withdrawal_amount*}{$fees.amount_max}<br><br>
  {/if}
  {if $say eq 'daily_limit' || $errors.daily_limit}
  Sorry, you have exceeded a daily limit<br><br>
  {/if}
  {if $say eq 'not_enought' || $errors.not_enought}
  Sorry, you have requested the amount larger than the one on your balance.<br><br>
  {/if}
  {if $say eq 'invalid_transaction_code' || $errors.invalid_transaction_code}
  You have entered the invalid transaction code.<br><br>
  {/if}
  {if $say eq 'invalid_tfa_code' || $errors.invalid_tfa_code}
  You have entered invalid 2FA code.<br><br>
  {/if}
  {if $say eq 'no_deposits' || $errors.no_deposits}
  You have not done any deposits yet. Withdrawal function will be available after a deposit.
  <br><br>
  {/if}
  {if $say eq 'no_active_deposits' || $errors.no_active_deposits}
  You must have active deposit to withdraw.
  {/if}
  {if $say eq 'no_account' || $errors.no_account}
  Please, provide your aacount to withdraw funds to first <a href="{"?a=edit_account"|encurl}">here</a>.
  {/if}
  {if $errors.demo}
  Withdraw is not available for demo account.
  {/if}
  {if $errors.turing_image}Invalid turing image<br><br>{/if}


  {if $preview}
    <div class="card rounded-sm px-4 py-4 sm:px-5">
      <form method=post>
      <input type=hidden name=a value=withdraw>
      <input type=hidden name=action value=withdraw>
      <input type=hidden name=amount value={$amount}>
      <input type=hidden name=ec value={$ec}>
      <input type=hidden name=comment value="{$comment|escape:html}">

      <table cellspacing=0 cellpadding=2 border=0 class="form deposit_confirm">
      <tr>
      <th>Payment System:</th>
      <td>{$currency}</td>
      </tr>
      <tr>
      <th>Account:</th>
      <td>{$account}</td>
      </tr>
      <tr>
      <th>Debit Amount:</th>
      <td>{$currency_sign}{$amount}</td>
      </tr>
      {* old
      <tr>
      <th>Withdrawal Fee:</th>
      <td>
      {if $settings.withdrawal_fee > 0 || $settings.withdrawal_fee_min > 0}
        {if $settings.withdrawal_fee > 0}{$settings.withdrawal_fee}%{/if} 
        {if $settings.withdrawal_fee_min > 0}min. {$currency_sign}{$settings.withdrawal_fee_min}{/if}
      {else}
      We have no fee for this operation.
      {/if}
      </td>
      </tr>
      *}
      <tr>
      <th>Withdrawal Fee:</th>
      <td>
      {if $fees.fee > 0}
        {$fees.percent}% + {$currency_sign}{$fees.add_amount} (min. {$currency_sign}{$fees.fee_min} max. {if $fees.fee_max}{$currency_sign}{$fees.fee_max}{else}no{/if})
      {else}
      We have no fee for this operation.
      {/if}
      </td>
      </tr>

      {if $converted}
      <tr>
      <th>Credit Amount:</th>
      <td>{$currency_sign}{$converted.amount}</td>
      </tr>
      <tr>
      <th>{$converted.fiat} Amount:</th>
      <td>{$to_withdraw}</td>
      </tr>
      {else}
      <tr>
      <th>Credit Amount:</th>
      <td>{$currency_sign}{$to_withdraw}</td>
      </tr>
      {/if}

      {*
      <tr>
      <td colspan=2>You are withdrawing <b>{$currency_sign}{$amount}</b> of {$currency}. 
      {if $settings.withdrawal_fee > 0 || $settings.withdrawal_fee_min > 0} Our fee is 
      {if $settings.withdrawal_fee > 0}<b>{$settings.withdrawal_fee}%</b>{/if}
      {if $settings.withdrawal_fee > 0 && $settings.withdrawal_fee_min > 0} or {/if}
      {if $settings.withdrawal_fee_min > 0} <b>{$currency_sign}{$settings.withdrawal_fee_min}</b>{if $settings.withdrawal_fee > 0} as a minimum{/if}{/if}
      .
      {else}
      We have no fee for this operation. 
      {/if}
      </td>
      </tr>
      <tr>
      <td colspan=2>Actually you will acquire the total of <b>{$currency_sign}{$to_withdraw}</b> on your {$currency} account {if $account}{$account}{/if}.</td>
      </tr>
      *}
      {if $comment}
      <tr>
      <th>Note:</th>
      <td>{$comment|escape:html}</td>
      </tr>
      {/if}
      {if $settings.use_transaction_code && $userinfo.transaction_code}
      <tr>
      <th>Transaction Code:</th>
      <td><input type="password" name="transaction_code" class=inpts size=15></td>
      </tr>
      {/if}
      {include file="captcha.tpl" action="withdrawal"}
      {if $userinfo.tfa_settings.withdraw}
      <tr>
      <th>2FA Code:</th>
      <td><input type="text" name="tfa_code" class=inpts size=15> <input type="hidden" name="tfa_time" id="tfa_time"></td>
      </tr>
      {literal}
      <script language=javascript>
      document.getElementById('tfa_time').value = (new Date()).getTime();
      </script>
      {/literal}
      {/if}
      <tr>
      <td colspan=2><input type=submit value="Confirm" class=sbmt></td>
      </tr></table>
      </form>
    </div>
  {else}
    <div class="card rounded-sm px-4 py-4 sm:px-5">
      <form method=post>
      <input type=hidden name=a value=withdraw>
      <input type=hidden name=action value=preview>
      <input type=hidden name=say value="">

      {*
      <table cellspacing=0 cellpadding=2 border=0>
      <tr>
      <td>Account Balance:</td>
      <td>{$currency_sign}<b>{$ab_formated.total}</b></td>
      </tr>
      <tr><td>&nbsp;</td>
      <td> <small>
      {section name=p loop=$ps}
        {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}{if $hold[p].amount > 0} / {$currency_sign}{$hold[p].amount} on hold{/if}<br>{/if}
      {/section}
      </td>
      </tr>
      <tr>
      <td>Pending Withdrawals: </td>
      <td>{$currency_sign}<b>{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending}{else}0.00{/if}</b></td>
      </tr>

      {foreach item=ps from=$pay_accounts}
      <tr>
      <td>Your {$ps.name|escape:html} Account:</td>
      <td>{if $ps.account != ''}{$ps.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}</td>
      </tr>
      {/foreach}
      {foreach item=p from=$mpay_accounts}
      <tr>
      <td>Your {$p.name|escape:html} Account:</td>
      <td>
      {foreach item=ps from=$p.accounts}
      {$ps.name|escape:html}: {if $ps.value != ''}{$ps.value|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}<br>
      {/foreach}
      </td>
      </tr>
      {/foreach}
      </table>
      *}

      <div class="flex justify-between items-center">
        <p class="font-semibold text-slate-600">Account Balance </p>
        <p>{$currency_sign}{$ab_formated.total}</p>
      </div>
      <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

      <div class="flex justify-between items-center">
        <p class="font-semibold text-slate-600">Pending Withdrawals </p>
        <p>{$currency_sign}{if $ab_formated.withdraw_pending != 0}{$ab_formated.withdraw_pending|amount_format}{/if}</p>
      </div>
      <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


      <div class="grid grid-cols-2 gap-4 sm:gap-5 lg:grid-cols-4 lg:gap-6">
        <div class="card space-y-9 rounded-sm shadow-lg p-4 sm:px-5">
          <div class="flex items-center justify-between space-x-2">
            <div class="flex items-center space-x-3">
              <div class="avatar">
                <img class="mask is-squircle" src="images/avatar/avatar-5.jpg" alt="image">
              </div>
              <div>
                <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                  Travis Fuller
                </p>
                <p class="text-xs text-slate-400 dark:text-navy-300">
                  Employee
                </p>
              </div>
            </div>
            <div class="flex space-x-2">
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  2
                </div>
              </div>
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  4
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between space-x-2">
            <div>
              <p class="text-xs+">Sells</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                2 348
              </p>
            </div>
            <div>
              <p class="text-xs+">Target</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                3 000
              </p>
            </div>
            <div>
              <p class="text-xs+">Clients</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                78
              </p>
            </div>
          </div>
          <div class="grow">
            <div class="flex w-full space-x-1">
              <div x-tooltip="'Phone Calls'" class="h-2 w-4/12 rounded-full bg-primary dark:bg-accent"></div>
              <div x-tooltip="'Chats Messages'" class="h-2 w-3/12 rounded-full bg-success"></div>
              <div x-tooltip="'Emails'" class="h-2 w-5/12 rounded-full bg-info"></div>
            </div>
            <div class="mt-2 flex flex-wrap">
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-primary dark:bg-accent"></div>
                <div class="flex space-x-1 text-xs leading-6">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Calls</span>
                  <span>33%</span>
                </div>
              </div>
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-success"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Chat Messages</span>
                  <span>17%</span>
                </div>
              </div>
              <div class="mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-info"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Emails</span>
                  <span>50%</span>
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between">
            <div class="flex space-x-2">
              <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
              <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
              <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
            </div>
            <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
            </button>
          </div>
        </div>

        <div class="card space-y-9 rounded-sm shadow-lg p-4 sm:px-5">
          <div class="flex items-center justify-between space-x-2">
            <div class="flex items-center space-x-3">
              <div class="avatar">
                <img class="mask is-squircle" src="images/avatar/avatar-5.jpg" alt="image">
              </div>
              <div>
                <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                  Travis Fuller
                </p>
                <p class="text-xs text-slate-400 dark:text-navy-300">
                  Employee
                </p>
              </div>
            </div>
            <div class="flex space-x-2">
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  2
                </div>
              </div>
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  4
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between space-x-2">
            <div>
              <p class="text-xs+">Sells</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                2 348
              </p>
            </div>
            <div>
              <p class="text-xs+">Target</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                3 000
              </p>
            </div>
            <div>
              <p class="text-xs+">Clients</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                78
              </p>
            </div>
          </div>
          <div class="grow">
            <div class="flex w-full space-x-1">
              <div x-tooltip="'Phone Calls'" class="h-2 w-4/12 rounded-full bg-primary dark:bg-accent"></div>
              <div x-tooltip="'Chats Messages'" class="h-2 w-3/12 rounded-full bg-success"></div>
              <div x-tooltip="'Emails'" class="h-2 w-5/12 rounded-full bg-info"></div>
            </div>
            <div class="mt-2 flex flex-wrap">
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-primary dark:bg-accent"></div>
                <div class="flex space-x-1 text-xs leading-6">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Calls</span>
                  <span>33%</span>
                </div>
              </div>
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-success"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Chat Messages</span>
                  <span>17%</span>
                </div>
              </div>
              <div class="mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-info"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Emails</span>
                  <span>50%</span>
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between">
            <div class="flex space-x-2">
              <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
              <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
              <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
            </div>
            <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
            </button>
          </div>
        </div>

        <div class="card space-y-9 rounded-sm shadow-lg p-4 sm:px-5">
          <div class="flex items-center justify-between space-x-2">
            <div class="flex items-center space-x-3">
              <div class="avatar">
                <img class="mask is-squircle" src="images/avatar/avatar-5.jpg" alt="image">
              </div>
              <div>
                <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                  Travis Fuller
                </p>
                <p class="text-xs text-slate-400 dark:text-navy-300">
                  Employee
                </p>
              </div>
            </div>
            <div class="flex space-x-2">
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  2
                </div>
              </div>
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  4
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between space-x-2">
            <div>
              <p class="text-xs+">Sells</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                2 348
              </p>
            </div>
            <div>
              <p class="text-xs+">Target</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                3 000
              </p>
            </div>
            <div>
              <p class="text-xs+">Clients</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                78
              </p>
            </div>
          </div>
          <div class="grow">
            <div class="flex w-full space-x-1">
              <div x-tooltip="'Phone Calls'" class="h-2 w-4/12 rounded-full bg-primary dark:bg-accent"></div>
              <div x-tooltip="'Chats Messages'" class="h-2 w-3/12 rounded-full bg-success"></div>
              <div x-tooltip="'Emails'" class="h-2 w-5/12 rounded-full bg-info"></div>
            </div>
            <div class="mt-2 flex flex-wrap">
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-primary dark:bg-accent"></div>
                <div class="flex space-x-1 text-xs leading-6">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Calls</span>
                  <span>33%</span>
                </div>
              </div>
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-success"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Chat Messages</span>
                  <span>17%</span>
                </div>
              </div>
              <div class="mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-info"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Emails</span>
                  <span>50%</span>
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between">
            <div class="flex space-x-2">
              <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
              <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
              <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
            </div>
            <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
            </button>
          </div>
        </div>

        <div class="card space-y-9 rounded-sm shadow-lg p-4 sm:px-5">
          <div class="flex items-center justify-between space-x-2">
            <div class="flex items-center space-x-3">
              <div class="avatar">
                <img class="mask is-squircle" src="images/avatar/avatar-5.jpg" alt="image">
              </div>
              <div>
                <p class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                  Travis Fuller
                </p>
                <p class="text-xs text-slate-400 dark:text-navy-300">
                  Employee
                </p>
              </div>
            </div>
            <div class="flex space-x-2">
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  2
                </div>
              </div>
              <div class="relative cursor-pointer">
                <button class="btn h-7 w-7 bg-primary/10 p-0 text-primary hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-accent-light/10 dark:text-accent-light dark:hover:bg-accent-light/20 dark:focus:bg-accent-light/20 dark:active:bg-accent-light/25">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-4.5 w-4.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                  </svg>
                </button>
                <div class="absolute top-0 right-0 -m-1 flex h-4 min-w-[1rem] items-center justify-center rounded-full bg-primary px-1 text-tiny font-medium leading-none text-white dark:bg-accent">
                  4
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between space-x-2">
            <div>
              <p class="text-xs+">Sells</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                2 348
              </p>
            </div>
            <div>
              <p class="text-xs+">Target</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                3 000
              </p>
            </div>
            <div>
              <p class="text-xs+">Clients</p>
              <p class="text-xl font-semibold text-slate-700 dark:text-navy-100">
                78
              </p>
            </div>
          </div>
          <div class="grow">
            <div class="flex w-full space-x-1">
              <div x-tooltip="'Phone Calls'" class="h-2 w-4/12 rounded-full bg-primary dark:bg-accent"></div>
              <div x-tooltip="'Chats Messages'" class="h-2 w-3/12 rounded-full bg-success"></div>
              <div x-tooltip="'Emails'" class="h-2 w-5/12 rounded-full bg-info"></div>
            </div>
            <div class="mt-2 flex flex-wrap">
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-primary dark:bg-accent"></div>
                <div class="flex space-x-1 text-xs leading-6">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Calls</span>
                  <span>33%</span>
                </div>
              </div>
              <div class="mr-4 mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-success"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Chat Messages</span>
                  <span>17%</span>
                </div>
              </div>
              <div class="mb-1 inline-flex items-center space-x-2 font-inter">
                <div class="h-2 w-2 rounded-full bg-info"></div>
                <div class="flex space-x-1 text-xs">
                  <span class="font-medium text-slate-700 dark:text-navy-100">Emails</span>
                  <span>50%</span>
                </div>
              </div>
            </div>
          </div>
          <div class="flex justify-between">
            <div class="flex space-x-2">
              <img x-tooltip="'Award Level 1'" class="h-6 w-6" src="images/awards/award-19.svg" alt="avatar">
              <img x-tooltip="'Award Level 2'" class="h-6 w-6" src="images/awards/award-2.svg" alt="avatar">
              <img x-tooltip="'Award Level 3'" class="h-6 w-6" src="images/awards/award-5.svg" alt="avatar">
            </div>
            <button class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"></path>
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
              </svg>
            </button>
          </div>
        </div>
      </div>
      <table cellspacing=0 cellpadding=2 border=0>
      <tr>
      <th></th>
      <th>Processing</th>
      <th>Available</th>
      {if $have_hold}
      <th>On Hold</th>
      {/if}
      <th>Pending</th>
      <th>Account</th>
      </tr>
      {foreach from=$ps item=p}
      <tr>
      <td>{if $p.available > 0}{if $p.status > 0 || $p.available > 0}<input type="radio" name="ec" value="{$p.id}" {if $frm.ec == $p.id}checked{/if}>{/if}{/if}</td>
      <td><img src="images/{$p.id}.gif" width=44 height=17 align=absmiddle> {$p.name|escape:html}</td>
      <td><b style="color:green">{$currency_sign}{$p.available}</b></td>
      {if $have_hold}
      <td><b style="color:gray">{$currency_sign}{$p.hold}</b></td>
      {/if}
      <td><b style="color:red">{$currency_sign}{$p.pending}</b></td>
      <td>{if $p.account != ''}{$p.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}</td>
      </tr>
      {/foreach}
      </table>

      {if $have_available}
      <table cellspacing=0 cellpadding=2 border=0 width=200>
      <tr>
      <td colspan=2>&nbsp;</td>
      </tr>
      <tr>
      <td>Withdrawal ({$currency_sign}):</td>
      <td><input type=text name=amount value="{$frm.amount|amount_format|default:"10.00"}" class=inpts size=15></td>
      </tr><tr>
      <td colspan=2><textarea name=comment class=inpts cols=45 rows=4>Your comment</textarea>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td><input type=submit value="Request" class=sbmt></td>
      </tr></table>
      {else}
      <br><br>
      You have no funds to withdraw.
      {/if}
      </form>
    </div>
  {/if}

  {/if}

</div>
{include file="footer.tpl"}
