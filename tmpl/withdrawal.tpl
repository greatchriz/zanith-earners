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

      <div class="grid grid-cols-1 gap-4 sm:gap-5">

        <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5 mt-4">

          <div class="flex items-center justify-between">
            <p class="text-lg text-slate-800 dark:text-navy-50 px-4 py-4 sm:px-5 font-bold">
              Payment System
            </p>
            <p class="text-sm text-slate-600 dark:text-navy-50 px-4 py-4 sm:px-5">
              {$currency}
            </p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


          {* Account *}

          <div class="flex items-center justify-between">
            <p class="text-lg text-slate-800 dark:text-navy-50 px-4 py-4 sm:px-5 font-bold">
              Account
            </p>
            <p class="text-sm text-slate-600 dark:text-navy-50 px-4 py-4 sm:px-5">
              {$account}
            </p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


          {* Amount *}

          <div class="flex items-center justify-between">
            <p class="text-lg text-slate-800 dark:text-navy-50 px-4 py-4 sm:px-5 font-bold">
              Amount
            </p>
            <p class="text-sm text-slate-600 dark:text-navy-50 px-4 py-4 sm:px-5">
              {$currency_sign}{$amount}
            </p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


          {* Withdrawal Fee *}

          <div class="flex items-center justify-between">
            <p class="text-lg text-slate-800 dark:text-navy-50 px-4 py-4 sm:px-5 font-bold">
              Withdrawal Fee
            </p>
            <p class="text-sm text-slate-600 dark:text-navy-50 px-4 py-4 sm:px-5">
              {if $settings.withdrawal_fee > 0}{$settings.withdrawal_fee}%{/if} 
              {if $settings.withdrawal_fee_min > 0}min. {$currency_sign}{$settings.withdrawal_fee_min}{/if}
            </p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


          {if $comment}
          {* Comment *}

          <div class="flex items-center justify-between">
            <p class="text-lg text-slate-800 dark:text-navy-50 px-4 py-4 sm:px-5 font-bold">
              Comment
            </p>
            <p class="text-sm text-slate-600 dark:text-navy-50 px-4 py-4 sm:px-5">
              {$comment|escape:html}
            </p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

          {/if}

          {* Cinfirm Button *}

          <div class="mt-4">
          <button
              type=submit
              class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
            >
              Confirm
            </button>
          </div>

        </div>

      </div>



      
      

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


      <div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-4 lg:gap-6">

        {foreach from=$ps item=p}
        <div class="card rounded-sm shadow-lg p-4 sm:px-5">
          
              <div class="flex items-center justify-between space-x-2">
                <div class="flex items-center space-x-3">
                  <label class="inline-flex items-center space-x-2">
                    {if $p.available > 0}
                      {if $p.status > 0 || $p.available > 0}
                    <input class="form-radio is-basic h-5 w-5 rounded-full border-slate-400/70 checked:!border-success checked:bg-success hover:!border-success focus:!border-success dark:border-navy-400" type="radio" name="ec" value="{$p.id}" {if $frm.ec == $p.id}checked{/if}>
                  {/if}
                {/if}
      

                    <div class="avatar">
                      <img
                        class="mask is-squircle"
                        src="images/{$p.id}.gif"
                        alt="image"
                      >
                    </div>
                    <div style="margin-left: 20px;">
                      <p class="font-medium text-slate-700 line-clamp-2 dark:text-navy-100">
                        {$p.name|escape:html}
                      </p>
               
                    </div>
                  </label>
    
    
                </div>
    
              </div>
              <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>
         
          <div class="flex justify-between items-center">
            <p class="font-semibold text-slate-600">Available </p>
            <p style="color: green;">{$currency_sign}{$p.available}</p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

          {if $have_hold}
            <div class="flex justify-between items-center">
              <p class="font-semibold text-slate-600">On Hold</p>
              <p>{$currency_sign}{$p.hold}</p>
            </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>
          {/if}


          <div class="flex justify-between items-center">
            <p class="font-semibold text-slate-600">Pending </p>
            <p style="color: red;">{$currency_sign}{$p.pending}</p>
          </div>
          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

          <div class="flex justify-between items-center">
            <p class="font-semibold text-slate-600">Wallet Address </p>
            {if $p.account != ''}
              <p>{$p.account|escape:html}</p>
            {else}
              <a href="{"?a=edit_account"|encurl}"
                class="btn bg-warning font-medium text-white hover:bg-warning-focus focus:bg-warning-focus active:bg-warning-focus/90"
              >
                Add Wallet
              </a>
            {/if}
          </div>
        </div>
        {/foreach}

      </div>

      {if $have_available}
        <div class="grid grid-cols-1 gap-4 sm:gap-5 mt-5">
          <div class="card rounded-sm shadow-lg px-4 py-4 sm:px-5">

            <label class="block">
              <span>Withdrawal ({$currency_sign})</span>
              <input
                class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                placeholder="Amount"
                type="text"
                name=amount
              />
            </label>

            <label class="block mt-4">
              <span>Comment</span>
              <textarea
                class="form-textarea mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                placeholder="Comment"
                name=comment
                cols=45 rows=4
              >{$frm.comment}</textarea>
            </label>

            <div class="mt-6">
              <button
                type=submit
                class="btn bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"

              >
                Request
              </button>
            </div>

          </div>


        </div>
      {else}
      <div class="card rounded-sm shadow-lg px-4 py-4 sm:px-5">
        <p class="text-xl text-center">You have no funds to withdraw.</p>
      </div>
      {/if}
      </form>
    </div>
  {/if}

  {/if}

</div>
{include file="footer.tpl"}
