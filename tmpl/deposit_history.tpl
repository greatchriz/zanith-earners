{include file="header.tpl"}
<div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
  <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 h-24">

    <table
      cellspacing=1
      cellpadding=2
      border=0
      width=100%
    >
      <tr>
        <td class=inheader>Type</td>
        <td
          class=inheader
          width=200
        >Amount</td>
        <td
          class=inheader
          width=170
        >Date</td>
      </tr>
      {if $qtrans > 0}
        {section name=trans loop=$trans}
          <tr>
            <td><b>{$trans[trans].transtype}</b></td>
            <td
              width=200
              align=right
            ><b>{$currency_sign} {$trans[trans].actual_amount}</b> <img
                src="images/{$trans[trans].ec}.gif"
                align=absmiddle
                hspace=1
                height=17
              ></td>
            <td
              width=170
              align=center
              valign=bottom
            ><b><small>{$trans[trans].d}</small></b></td>
          </tr>
          <tr>
            <td
              colspan=3
              class=gray
            ><small>{$trans[trans].description}</small></td>
          </tr>
        {/section}
      {else}
        <tr>
          <td
            colspan=3
            align=center
          >No transactions found</td>
        </tr>
      {/if}
      <tr>
        <td colspan=3>&nbsp;</td>

        {if $qtrans > 0}
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
  </div>

  {if $colpages > 1}
    <center>
      {if $prev_page > 0}
        <a href="javascript:go('{$prev_page}')">&lt;&lt;</a>
      {/if}
      {section name=p loop=$pages}
        {if $pages[p].current == 1}
          {$pages[p].page}
        {else}
          <a href="javascript:go('{$pages[p].page}')">{$pages[p].page}</a>
        {/if}
      {/section}
      {if $next_page > 0}
        <a href="javascript:go('{$next_page}')">&gt;&gt;</a>
      {/if}
    </center>
  {/if}
</div>
{include file="footer.tpl"}
