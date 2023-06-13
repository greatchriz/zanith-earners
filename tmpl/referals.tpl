{include file="header.tpl" pagetitle="Referals" pageurl="referals"}

<div class="flex items-center space-x-4 py-5 lg:py-6">
  <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
    Referals
  </h2>
</div>

<div class="grid grid-cols-1 gap-4 sm:gap-5">
  {if $upline.email != ""}
    <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5 flex items-center justify-between">
      <p class="font-bold text-sm">
        Your upline
      </p>

      <p class="text-xs">
        <a href=mailto:{$upline.email}>{$upline.name}</a>
      </p>
    </div>
    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>
  {/if}

  <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5">
    <div class="flex items-center justify-between">
      <p class="font-bold text-sm">
        Referrals
      </p>

      <p class="text-xs">
        {$total_ref}
      </p>
    </div>
    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

    <div class="flex items-center justify-between">
      <p class="font-bold text-sm">
        Active referrals
      </p>

      <p class="text-xs">
        {$active_ref}
      </p>
    </div>
    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

    <div class="flex items-center justify-between">
      <p class="font-bold text-sm">
        Total referral commission
      </p>

      <p class="text-xs">
        {$currency_sign}{$commissions}
      </p>
    </div>
    <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>



  </div>
  {if $settings.show_refstat}
    <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5">
      <h2 class="text-lg font-medium text-slate-800 dark:text-navy-50 lg:text-2xl my-4">
        Referral ins/signups
      </h2>

      <div class="card rounded-sm border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5">

        <form
          method=post
          name=opts
        >
          <input
            type=hidden
            name=a
            value=referals
          >

          <p class="block text-sm font-semibold">
            From
          </p>
          <div class="grid grid-cols-3 gap-4">
           
            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name=month_from
              >
                {section name=month_from loop=$month}
                  <option
                    value={$smarty.section.month_from.index+1}
                    {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}
                  >{$month[month_from]}
                  </option>
                {/section}
              </select>
            </label>

            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name="day_from"
              >
                {section name=day_from loop=$day}
                  <option
                    value={$smarty.section.day_from.index+1}
                    {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}
                  >
                    {$day[day_from]}
                  </option>
                {/section}
              </select>
            </label>

            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name="year_from"
              >
                {section name=year_from loop=$year}
                  <option
                    value={$year[year_from]}
                    {if $year[year_from] == $frm.year_from}selected{/if}
                  >
                    {$year[year_from]}
                  </option>
                {/section}
              </select>
            </label>
          </div>

          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


          <p class="block text-sm font-semibold">
            To
          </p>
          <div class="grid grid-cols-3 gap-4">
            
            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name=month_to
              >
                {section name=month_to loop=$month}
                  <option
                    value={$smarty.section.month_to.index+1}
                    {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}
                  >{$month[month_to]}
                  </option>
                {/section}
              </select>
            </label>

            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name="day_to"
              >
                {section name=day_to loop=$day}
                  <option
                    value={$smarty.section.day_to.index+1}
                    {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}
                  >{$day[day_to]}
                  </option>
                {/section}
              </select>
            </label>

            <label class="block">
              <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name="year_to"
              >
                
                  {section name=year_to loop=$year}
                    <option
                      value={$year[year_to]}
                      {if $year[year_to] == $frm.year_to}selected{/if}
                    >{$year[year_to]}
                    </option>
                  {/section}
                </select>
            </label>
          </div>

          <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

          <button
            type="submit"
            class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white"
          >
            Go
          </button>
        </form>

      </div>

      {if $show_refstat}
        {section name=s loop=$refstat}
          <div class="card rounded-sm border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 mt-4">
            <div class="flex items-center justify-between">
              <p class="font-bold text-sm">
                Date
              </p>
        
              <p class="text-xs">
                {$refstat[s].date}
              </p>
            </div>
            <div class="my-2 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex items-center justify-between">
              <p class="font-bold text-sm">
                Earnings
              </p>
        
              <p class="text-xs">
                {$refstat[s].income}
              </p>
            </div>
            <div class="my-2 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex items-center justify-between">
              <p class="font-bold text-sm">
                Sign Ups
              </p>
        
              <p class="text-xs">
                {$refstat[s].reg}
              </p>
            </div>
            <div class="my-2 h-px  bg-slate-200 dark:bg-navy-500"></div>

          </div>
        {/section}
      {else}
        <div class="card rounded-sm border border-slate-150 px-4 py-4 shadow-none dark:border-navy-600 sm:px-5 mt-4">
          <p class="font-bold text-sm">
            No statistics found for this period
          </p>
        </div>
      {/if}

    </div>
  {/if}


  {if $settings.show_referals}
    {if $show_referals}
      <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5">
        <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
          Your referrals
        </h2>
        <table
          cellspacing=1
          cellpadding=1
          border=0
        >
        <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

          <tr>
            <td class=inheader>Nickname</td>
            <td class=inheader>E-mail</td>
            <td class=inheader>Status</td>
          </tr>
          {section name=s loop=$referals}
            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <tr>
              <td class=item><b>{$referals[s].username}</b></td>
              <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
              <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
            </tr>
            {if $referals[s].ref_stats}
              <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

              <tr>
                <td colspan=3>
                  User referrals:
                  {section name=l loop=$referals[s].ref_stats}
                    <nobr>{$referals[s].ref_stats[l].cnt_active} active of {$referals[s].ref_stats[l].cnt} on level
                      {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}</nobr>
                  {/section}
                </td>
              </tr>
            {/if}
            {if $referals[s].came_from}
              <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

              <tr>
                <td colspan=3>
                  <a
                    href="{$referals[s].came_from}"
                    target=_blank
                  >[User came from]</a>
                </td>
              </tr>
            {/if}
          {/section}
          <tr>
            <td colspan=3>&nbsp;</td>
          </tr>
          <tr>
            <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
          </tr>
          <tr>
            <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
          </tr>
        </table>
      </div>
    {/if}
  {/if}
</div>
{include file="footer.tpl"}
