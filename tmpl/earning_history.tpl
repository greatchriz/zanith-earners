{include file="header.tpl"}

<div class="grid grid-cols-1 gap-4 sm:gap-5">
   <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">

<table cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
 <td class=inheader><b>Type</b></td>
 <td class=inheader width=200><b>Amount</b></td>
 <td class=inheader width=170><b>Date</b></td>
</tr>
{foreach from=$trans item=t}
<tr>
 <td><b>{$t.transtype}</b></td>
 <td width=200 align=right><b>{$currency_sign} {$t.amount}</b> <img src="images/{$t.ec}.gif" align=absmiddle hspace=1 height=17>{if $t.type == 'withdraw_pending'}<a href="{"?a=cancelwithdraw&id=`$t.id`&return=`$return`&"|encurl}" onclick="return confirm('Are you sure you want to delete this request?')">[cancel]</a>{/if}</td>
 <td width=170 align=center valign=bottom><b><small>{$t.d}</small></b></td>
</tr>
<tr>
 <td colspan=3 class=gray><small>{$t.description|escape:html}</small></td>
</tr>
{foreachelse}
<tr>
 <td colspan=3 align=center>No transactions found</td>
</tr>
{/foreach}
<tr><td colspan=3>&nbsp;</td>

{if $trans}
<tr>
    <td colspan=2>For this period:</td>
 <td align=right><b>{$currency_sign} {$periodsum}</b></td>
</tr>
{/if}
<tr>
    <td colspan=2>Total:</td>
 <td align=right><b>{$currency_sign} {$allsum}</b></td>
</tr>
</table>

{paginator col=$paginator.col cur=$paginator.cur url="javascript:go('%s')"}

</div>
</div>

{include file="footer.tpl"}