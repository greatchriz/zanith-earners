{include file="header.tpl" pagetitle="Deposit Confirm" pageurl="deposit"}
<div class="grid grid-cols-12 lg:gap-6">

    <div class="card rounded-lg px-4 py-4 sm:px-5">


        {if $ok == 1}
            <h3>Please confirm your deposit:</h3><br><br>

            {$description}<br><br>

            <div class="pt-2 mt-2">
                {if $deposit.id > 0}

                    <div class="flex justify-between items-center">
                        <p class="font-semibold text-slate-600">Plan </p>
                        <p>{$deposit.name|escape:html}</p>
                    </div>
                    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                    <div class="flex justify-between items-center">
                        <p class="font-semibold text-slate-600">Profit </p>
                        <p>{$deposit.percent}% {if $deposit.period == 'end' || $deposit.period == 'endh'}after {$deposit.periods}
                            {$deposit.time_units}{if $deposit.periods != 1}s{/if}{else}{$deposit.period_name} for
                            {if $deposit.periods == 0}lifelong
                            {else}{$deposit.periods}
                                {$deposit.time_units}{if $deposit.periods != 1}s{/if} {if $deposit.work_week}(mon-fri){/if}{/if}{/if}</p>
                    </div>
                    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                    <div class="flex justify-between items-center">
                        <p class="font-semibold text-slate-600">Principal Return </p>
                        <p>{if $deposit.principal_return}Yes
                            {if $deposit.principal_return_hold_percent > 0}, with
                                {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}
                                {else}No (included in profit)
                                {/if}</p>
                    </div>
                    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


                    <div class="flex justify-between items-center">
                        <p class="font-semibold text-slate-600">Principal Withdraw </p>
                        <p>{if $deposit.principal_withdraw}Available with
                            {foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
                                {$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or
                            {/if}
                        {/foreach}
                        {if $deposit.principal_withdraw_duration_max} but before
                        {$deposit.principal_withdraw_duration_max|number_format} days{/if}
                    {else}Not available
                    {/if}</p>
                    </div>
                    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            {if $deposit.use_compound == 1}

                                <div class="flex justify-between items-center">
                                    <p class="font-semibold text-slate-600">Compound </p>
                                    <p>{$deposit.compound|number_format}%</p>
                                </div>
                                <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                         
                            {/if}
                {/if} {* $deposit.id *}


                        {if $deposit.ec_fees.fee}
                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">Credit Amount </p>
                                <p>{$currency_sign}{$deposit.user_amount}</p>
                            </div>
                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">Deposit Fee </p>
                                <p>{$deposit.ec_fees.percent}% + {$currency_sign}{$deposit.ec_fees.add_amount} (min.
                                    {$currency_sign}{$deposit.ec_fees.fee_min} max. {$currency_sign}{$deposit.ec_fees.fee_max})</p>
                            </div>
                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


                        {/if}
                        {if $deposit.converted_amount}

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">Debit Amount </p>
                                <p>{$currency_sign}{$deposit.converted_amount}</p>
                            </div>
                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">{$deposit.converted_fiat} Debit Amount </p>
                                <p>{$deposit.amount}</p>
                            </div>
                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

                        {else}

                            <div class="flex justify-between items-center">
                                <p class="font-semibold text-slate-600">Debit Amount </p>
                                <p>{$currency_sign}{$deposit.amount}</p>
                            </div>
                            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>
                          
                        {/if}
        </div>
            <br><br>
            <form
                name=spend
                method=post
            >
                <input
                    type=hidden
                    name=a
                    value=deposit
                >
                <input
                    type=hidden
                    name=action
                    value=confirm
                >
                <input
                    type=hidden
                    name=type
                    value={$type}
                >
                <input
                    type=hidden
                    name=h_id
                    value={$h_id}
                >
                <input
                    type=hidden
                    name=compound
                    value={$compound}
                >
                <INPUT
                    type=hidden
                    name=amount
                    value="{$famount}"
                >
                {if $fields}
                    <table
                        cellspacing=0
                        cellpadding=2
                        border=0
                    >
                        <tr>
                            <td colspan=2><b>Required Information:</b></td>
                        </tr>
                        {section name=f loop=$fields}
                            <tr>
                                <td>{$fields[f].name}</td>
                                <td><input
                                        type="text"
                                        name="fields[{$fields[f].id}]"
                                        value=""
                                        class=inpts
                                    ></td>
                            </tr>
                        {/section}
                    </table>
                {/if}

                <br><input
                    type=submit
                    value="Save"
                    class=sbmt
                > &nbsp;
                <input
                    type=button
                    class=sbmt
                    value="Cancel"
                    onclick="document.location='?a=deposit'"
                >
            </form>

        {else}

            {if $max_deposit_less == 1}
                Sorry, the maximal deposit is {$max_deposit_format}.<br>
            {/if}
            {if $wrong_paln == 1} The Plan does not exist. {/if}
            {if $not_enough_funds == 1} You have not enough funds to complete the operation.<br>{/if}
            {if $less_than_min == 1}
                The minimal spend amount for '{$plan_name}' is {$currency_sign}{$min_amount}.<br>
            {/if}
            {if $zero_amount}
                You should enter amount grater than zero.<br>
            {/if}

            <br>
            Click <a href="?a=deposit">here</a> and try again.


        {/if}
    </div>
</div>

        {include file="footer.tpl"}
