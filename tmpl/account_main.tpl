{include file="header.tpl"}
   <div class="col-span-12">

      {include file="cards/balance.tpl"
         total_balance="{$currency_sign}{$ab_formated.total}" 
         total_deposits="{$currency_sign}{$ab_formated.deposit}" 
         total_withdrawals="{$currency_sign}{$ab_formated.withdrawal}" 
      }

      {include file="cards/accounts.tpl" ps=$ps}

      {include file="cards/watchlist.tpl"}

      {include file="cards/chart.tpl"}

   </div>
{include file="footer.tpl"}
