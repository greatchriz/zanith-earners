{include file="header.tpl"}
   {include file="dashboard/section1.tpl" 
      total_balance="{$currency_sign}{$ab_formated.total}" 
      total_deposits="{$currency_sign}{$ab_formated.deposit}" 
      total_withdrawals="{$currency_sign}{$ab_formated.withdrawal}" 
   }
   {include file="dashboard/section2.tpl"}
   
   {section name=p loop=$ps}
      {if $ps[p].pending_col > 0}{$ps[p].pending_col} {$ps[p].name} deposit{if $ps[p].pending_col > 1}s{/if} of
   {$currency_sign}{$ps[p].pending_amount} total pending<br>{/if}
   {/section}
{include file="footer.tpl"}
