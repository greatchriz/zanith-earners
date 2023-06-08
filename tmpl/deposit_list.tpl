{include file="header.tpl"}

<div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
    <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
        <div>
          <h2 class="text-lg font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
            Total Deposits
          </h2>
        </div>
        <div class="pt-2">
            <p>{$currency_sign}{$total}</p>
        </div>
    </div>

    {foreach from=$plans item=p}
        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">

            <div class="flex justify-between items-center text-center">
                <p class="font-semibold text-slate-600">{$p.name} </p>
            </div>
            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            {foreach from=$p.plans item=o}
                <div class="flex justify-between items-center">
                    <p class="font-semibold text-slate-600">Plan </p>
                    <p>{$o.name}</p>
                </div>
                <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                <div class="flex justify-between items-center">
                    <p class="font-semibold text-slate-600">Deposit Amount </p>
                    <p>{$currency_sign}{$o.min_deposit} {if $o.max_deposit>0}- {$currency_sign}{$o.max_deposit}
                    {else}and
                    more{/if}</p>
                </div>
                <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                <div class="flex justify-between items-center">
                    <p class="font-semibold text-slate-600">{$p.period} Profit (%) </p>
                    <p>{$o.percent}</p>    
                </div>
                <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            {/foreach}


            <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">

            
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
            </div>

        </div>
    {/foreach}

</div>

{include file="footer.tpl"}
