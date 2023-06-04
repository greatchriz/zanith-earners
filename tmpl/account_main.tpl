{include file="header.tpl"}

   {* {loaddata name="user_notices" var=notices}

   {if $notices}
      <ul style="color:red">
         {foreach from=$notices item=n}
            <li><b>{$n.title}</b> {$n.text|nl2br}
               <form method=post>
                  <input
                     type=hidden
                     name=a
                     value=user_notices
                  >
                  <input
                     type=hidden
                     name=action
                     value=notified
                  >
                  <input
                     type=hidden
                     name=id
                     value={$n.id}
                  >
                  <input
                     type=submit
                     value="Dismiss"
                  >
               </form>
            {/foreach}
      </ul>
   {/if}

   <h3>Your account:</h3><br>

   {if $settings.use_transaction_code ==1 && $userinfo.transaction_code == ''} <b>Note: currently you have not specified
         a Transaction code. The Transaction code strengthens your funds security in our
         system. The code is required to withdraw funds from your account{if $settings.internal_transfer_enabled}
         and for internal transfer to another user account{/if}. Just do not change 'Transaction
      code' in your account information if you do not want to use this feature. <a href=?a=edit_account>Click
            here</a> to specify a new transaction code .</b> <br>
      <br>
   {/if}

   {if $userinfo.tfa_not_enabled}
      <b>Security Note: please, activate <a href="{"?a=security"|encurl}">Two Factor Authentication</a> to keep your
         account
         safe.</b>
   {/if} *}

   {* <table
      cellspacing=0
      cellpadding=2
      border=0
   >
      <tr>
         <td>User:</td>
         <td>{$userinfo.username}</td>
      </tr>
      <tr>
         <td>Registration Date:</td>
         <td>{$userinfo.create_account_date}</td>
      </tr>
      <tr>
         <td>Last Access:</td>
         <td>{$last_access|default:"n/a"}&nbsp;</td>
      </tr>
      <tr>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td valign=top>Account Balance:</td>
         <td>{$currency_sign}<b>{$ab_formated.total}</b><br>
            <small>
               {foreach from=$ps item=p}
                  {if $p.balance > 0}{$currency_sign}{$p.balance} of {$p.name}<br>{/if}
               {/foreach}
      </tr>
      <tr>
         <td>Earned Total:</td>
         <td>{$currency_sign}<b>{$ab_formated.earning}</b></td>
      </tr>
      <tr>
         <td>Pending Withdrawal:</td>
         <td>{$currency_sign}<b>{$ab_formated.withdraw_pending}</b></td>
      </tr>
      <tr>
         <td>Withdrew Total:</td>
         <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
      </tr>
      <tr>
         <td>Active Deposit:</td>
         <td>{$currency_sign}<b>{$ab_formated.active_deposit}</b></td>
      </tr>
      <tr>
         <td>&nbsp;</td>
      </tr>
      {if $last_deposit}
         <tr>
            <td>Last Deposit:</td>
            <td>{$currency_sign}<b>{$last_deposit|default:"n/a"}</b> &nbsp;
               <small>{$last_deposit_date|default:"n/a"}</small>
            </td>
         </tr>
      {/if}
      {if $ab_formated.deposit != 0}
         <tr>
            <td>Total Deposit:</td>
            <td>{$currency_sign}<b>{$ab_formated.deposit}</b></td>
         </tr>
      {/if}
      {if $last_withdrawal}
         <tr>
            <td>Last Withdrawal:</td>
            <td>{$currency_sign}<b>{$last_withdrawal|default:"n/a"}</b> &nbsp;
               <small>{$last_withdrawal_date|default:"n/a"}</small>
            </td>
         </tr>
      {/if}
      {if $ab_formated.withdrawal > 0}
         <tr>
            <td>Withdrew Total:</td>
            <td>{$currency_sign}<b>{$ab_formated.withdrawal}</b></td>
         </tr>
      {/if}
      <tr>
         <td>&nbsp;</td>
      </tr>
   </table> *}

   {include file="dashboard/section1.tpl" 
      total_balance="{$currency_sign}{$ab_formated.total}" 
      total_deposits="{$currency_sign}{$ab_formated.deposit}" 
      total_withdrawals="{$currency_sign}{$ab_formated.withdrawal}" 
   }

   {include file="dashboard/section2.tpl"}


   <b>Total: {$currency_sign}{$total}</b><br><br>

      {foreach from=$plans item=p}
          <table
              cellspacing=1
              cellpadding=2
              border=0
              width=100%
              class=line
          >
              <tr>
                  <td class=item>
                      <table
                          cellspacing=1
                          cellpadding=2
                          border=0
                          width=100%
                      >
                          <tr>
                              <td
                                  colspan=3
                                  align=center
                              ><b>{$p.name}</b></td>
                          </tr>
                          <tr>
                              <td class=inheader>Plan</td>
                              <td
                                  class=inheader
                                  width=200
                              >Deposit Amount</td>
                              <td
                                  class=inheader
                                  width=100
                                  nowrap
                              >
                                  <nobr>{$p.period} Profit (%)</nobr>
                              </td>
                          </tr>
                          {foreach from=$p.plans item=o}
                              <tr>
                                  <td class=item>{$o.name}</td>
                                  <td
                                      class=item
                                      align=right
                                  >{$currency_sign}{$o.min_deposit} {if $o.max_deposit>0}- {$currency_sign}{$o.max_deposit}
                                  {else}and
                                      more{/if}</td>
                                  <td
                                      class=item
                                      align=right
                                  >{$o.percent}</td>
                              </tr>
                          {/foreach}
                      </table>
                      <br>
                      <table
                          cellspacing=1
                          cellpadding=2
                          border=0
                          width=100%
                      >
                          {if !$p.deposits}
                              <tr>
                                  <td colspan=4><b>No deposits for this plan</b></td>
                              </tr>
                          {else}
                              <tr>
                                  <td
                                      colspan=4
                                      class=inheader
                                      style="text-align:left"
                                  >Your deposits:</td>
                              </tr>
                              <tr>
                                  <td class=inheader>Date</td>
                                  <td class=inheader>Amount</td>
                                  {if $p.use_compound}
                                      <td class=inheader>Compounding Percent</td>
                                  {/if}
                                  {if $p.withdraw_principal}
                                      <td class=inheader>Release</td>
                                  {/if}
                              </tr>
                              {foreach from=$p.deposits item=d}
                                  <tr>
                                      <td
                                          align=center
                                          class=item
                                      ><b>{$d.date}</b><br>{if $p.q_days == 0}Working {$d.duration} days
                                      {else}Expire in
                                          {$d.expire_in}{/if}</td>
                                      <td
                                          align=center
                                          class=item
                                      ><b>{$currency_sign}{$d.deposit} <img
                                                  src="images/{$d.ec}.gif"
                                                  align=absmiddle
                                                  hspace=1
                                                  height=17
                                              ></b></td>
                                      {if $p.use_compound}
                                          <td
                                              align=center
                                              class=item
                                              align=center
                                          >{$d.compound}% <a href="{"?a=change_compound&deposit=`$d.id`"|encurl}">[change]</a></td>
                                      {/if}
                                      {if $p.withdraw_principal}
                                          <td
                                              align=center
                                              class=item
                                          >
                                              {if $d.can_withdraw}
                                                  <a href="{"?a=withdraw_principal&deposit=`$d.id`"|encurl}">[release]</a>
                                              {else}
                                                  {if $d.pending_duration > 0}
                                                      {$d.pending_duration} day{if $d.pending_duration > 1}s{/if} left
                                                  {else}
                                                      not available
                                                  {/if}
                                              {/if}
                                          </td>
                                      {/if}
                                  </tr>
                              {/foreach}
                          {/if}
                      </table>
                      {if $p.total_deposit > 0 || $p.today_profit > 0 || $p.total_profit > 0}
                          <table
                              cellspacing=0
                              cellpadding=1
                              border=0
                          >
                              <tr>
                                  <td>Deposited Total:</td>
                                  <td><b>{$currency_sign}{$p.total_deposit}</b></td>
                              </tr>
                              <tr>
                                  <td>Profit Today:</td>
                                  <td><b>{$currency_sign}{$p.today_profit}</b></td>
                              </tr>
                              <tr>
                                  <td>Total Profit:</td>
                                  <td><b>{$currency_sign}{$p.total_profit}</b></td>
                              </tr>
                          </table>
                      {/if}
                      <br>
                  </td>
              </tr>
          </table>
          <br>
      {/foreach}
   {section name=p loop=$ps}
      {if $ps[p].pending_col > 0}{$ps[p].pending_col} {$ps[p].name} deposit{if $ps[p].pending_col > 1}s{/if} of
   {$currency_sign}{$ps[p].pending_amount} total pending<br>{/if}
   {/section}


{include file="footer.tpl"}
