{include file="header.tpl" pagetitle="Deposit Confirm" pageurl="deposit"}

<div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">

    {if $ok == 1}

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <div>
              <h2 class="text-lg font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                Confirm Deposit
              </h2>
            </div>
            <div class="pt-2">
                <p>{$description}</p>
            </div>
        </div>

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <div>

            <table
                cellspacing=0
                cellpadding=2
                class="form deposit_confirm"
            >
                {if $deposit.id > 0}
                    <tr>
                        <th>Plan:</th>
                        <td>{$deposit.name|escape:html}</td>
                    </tr>
                    <tr>
                        <th>Profit:</th>
                        <td>{$deposit.percent}% {if $deposit.period == 'end' || $deposit.period == 'endh'}after
                                {$deposit.periods} {$deposit.time_units}{if $deposit.periods != 1}s{/if}{else}{$deposit.period_name}
                                for {if $deposit.periods == 0}lifelong
                                {else}{$deposit.periods}
                                    {$deposit.time_units}{if $deposit.periods != 1}s{/if}
                                    {if $deposit.work_week}(mon-fri){/if}{/if}{/if}</td>
                            </tr>
                            <tr>
                                <th>Principal Return:</th>
                                <td>{if $deposit.principal_return}Yes
                                    {if $deposit.principal_return_hold_percent > 0}, with
                                        {$deposit.principal_return_hold_percent|number_format:2}% fee{/if}
                                        {else}No (included in profit)
                                        {/if}
                                    </td>
                                </tr>
                                <tr>
                                    <th>Principal Withdraw:</th>
                                    <td>
                                        {if $deposit.principal_withdraw}Available with
                                            {foreach from=$deposit.principal_withdraw_terms item=t name=wpt}
                                                {$t.percent}% fee {if $t.duration > 0}after {$t.duration} days{/if}{if !$smarty.foreach.wpt.last} or
                                            {/if}
                                        {/foreach}
                                        {if $deposit.principal_withdraw_duration_max} but before
                                        {$deposit.principal_withdraw_duration_max|number_format} days{/if}
                                    {else}Not available
                                    {/if}
                                </td>
                            </tr>
                            {if $deposit.use_compound == 1}
                                <tr>
                                    <th>Compound:</th>
                                    <td>{$deposit.compound|number_format}%</td>
                                </tr>
                            {/if}
                        {/if} {* $deposit.id *}
                        {if $deposit.ec_fees.fee}
                            <tr>
                                <th>Credit Amount:</th>
                                <td>{$currency_sign}{$deposit.user_amount}</td>
                            </tr>
                            <tr>
                                <th>Deposit Fee:</th>
                                <td>{$deposit.ec_fees.percent}% + {$currency_sign}{$deposit.ec_fees.add_amount} (min.
                                    {$currency_sign}{$deposit.ec_fees.fee_min} max. {$currency_sign}{$deposit.ec_fees.fee_max})</td>
                            </tr>
                        {/if}
                        {if $deposit.converted_amount}
                            <tr>
                                <th>Debit Amount:</th>
                                <td>{$currency_sign}{$deposit.converted_amount}</td>
                            </tr>
                            <tr>
                                <th>{$deposit.converted_fiat} Debit Amount:</th>
                                <td>{$deposit.amount}</td>
                            </tr>
                        {else}
                            <tr>
                                <th>Debit Amount:</th>
                                <td>{$currency_sign}{$deposit.amount}</td>
                            </tr>
                        {/if}
                    </table>
            </div>
        </div>

        <div class="card border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100 lg:text-base">
                Required Information
            </h2>
            <div>
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
                         

                            {section name=f loop=$fields}
                                <label class="block my-3">
                                    <span>{$fields[f].name}</span>
                                    <input
                                      class="form-input mt-1.5 w-full rounded-lg border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
                                      placeholder="{$fields[f].name}"
                                      type="text"
                                      name="fields[{$fields[f].id}]"
                                    />
                                  </label>
                            {/section}
                    {/if}

                    
                    <button
                        type="submit"
                        class="btn bg-gradient-to-r from-amber-400 to-orange-600 font-medium text-white"
                    >
                        Save
                    </button>

                    <button
                        type="button"
                        class="btn bg-gradient-to-r from-sky-400 to-blue-600 font-medium text-white"
                        onclick="document.location='?a=deposit'"
                    >
                        Cancel
                    </button>
                </form>
            </div>
        </div>

    {else}

        <div class="card px-5 py-12 sm:px-18 mt-5">
            <div class="flex flex-col justify-between sm:flex-row">

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
            </div>
        </div>


    {/if}
</div>
{include file="footer.tpl"}
