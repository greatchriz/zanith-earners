{include file="header.tpl" pagetitle="Deposit List" pageurl="deposit_list"}

<div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
    <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 h-24">
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
                {if !$p.deposits}
                    <p class="font-bold text-slate-700">No deposits for this plan</p>
                {else}

                <h2 class="text-lg font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                    Your  Deposits
                </h2>

                <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


                    {foreach from=$p.deposits item=d}
                        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 mt-2">                       
                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">
                                    Date
                                </p>
                                <p>
                                    <b>{$d.date}</b><br>{if $p.q_days == 0}Working {$d.duration} days
                                    {else}Expire in
                                    {$d.expire_in}{/if}
                                </p>

                            </div>

                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">
                                    Amount
                                </p>
                                <div class="flex justify-between items-center">
                                    <p class="font-semibold text-slate-600">
                                        Amount
                                    </p>

                                    <div class="flex justify-between items-center">
                                        <p class="font-bold mx-2">
                                            $200.00 
                                        </p>
                                        <img src="images/1009.gif" class="h-5 w-5">
                                    </div>
    
                                </div>
                            </div>
                        </div>
                    {/foreach}



                    {if $p.total_deposit > 0 || $p.today_profit > 0 || $p.total_profit > 0}
                        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 mt-2"> 

                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">
                                    Deposited Total
                                </p>
                                <p>
                                    <b>{$currency_sign}{$p.total_deposit}</b>
                                </p>

                            </div>

                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">
                                    Profit Today
                                </p>
                                <p>
                                    <b>{$currency_sign}{$p.today_profit}</b>
                                </p>

                            </div>

                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">
                                    Total Profit
                                </p>
                                <p>
                                    <b>{$currency_sign}{$p.total_profit}</b>
                                </p>

                            </div>
                        </div>
                    {/if}
                {/if}
            </div>

        </div>
    {/foreach}

</div>

{include file="footer.tpl"}
