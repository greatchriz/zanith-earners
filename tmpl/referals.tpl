{include file="header.tpl" pagetitle="Referals" pageurl="referals"}

<div class="flex items-center space-x-4 py-5 lg:py-6">
  <h2
    class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl"
  >
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
        <h2 class="text-lg font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
          Referral ins/signups
        </h2>

        <div class="card rounded-sm shadow-sm px-2 py-4 sm:px-2 mt-4">
          <table
            cellspacing=0
            cellpadding=1
            border=0
          >
            <form
              method=post
              name=opts
            >
              <input
                type=hidden
                name=a
                value=referals
              >
              <td align=right>
                From: </td>
              <td>
                <select
                  name=month_from
                  class=inpts
                >
                  {section name=month_from loop=$month}
                    <option
                      value={$smarty.section.month_from.index+1}
                      {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}
                    >{$month[month_from]}
                    {/section}
                </select> &nbsp;
                <select
                  name=day_from
                  class=inpts
                >
                  {section name=day_from loop=$day}
                    <option
                      value={$smarty.section.day_from.index+1}
                      {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}
                    >{$day[day_from]}
                    {/section}
                </select> &nbsp;
                <select
                  name=year_from
                  class=inpts
                >
                  {section name=year_from loop=$year}
                    <option
                      value={$year[year_from]}
                      {if $year[year_from] == $frm.year_from}selected{/if}
                    >{$year[year_from]}
                    {/section}
                </select>
              </td>
              <td rowspan=2>
                &nbsp; <input
                  type=submit
                  value="Go"
                  class=sbmt
                >
              </td>
              </tr>
              <tr>
                <td align=right>To:</td>
                <td> <select
                    name=month_to
                    class=inpts
                  >
                    {section name=month_to loop=$month}
                      <option
                        value={$smarty.section.month_to.index+1}
                        {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}
                      >{$month[month_to]}
                      {/section}
                  </select> &nbsp;
                  <select
                    name=day_to
                    class=inpts
                  >
                    {section name=day_to loop=$day}
                      <option
                        value={$smarty.section.day_to.index+1}
                        {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}
                      >{$day[day_to]}
                      {/section}
                  </select> &nbsp;

                  <select
                    name=year_to
                    class=inpts
                  >
                    {section name=year_to loop=$year}
                      <option
                        value={$year[year_to]}
                        {if $year[year_to] == $frm.year_to}selected{/if}
                      >{$year[year_to]}
                      {/section}
                  </select>

                </td>
              </tr>
            </form>
          </table>
        </div>

        <div class="card rounded-sm shadow-sm px-2 py-4 sm:px-2 mt-4">
          <table
            width=300
            celspacing=1
            cellpadding=1
            border=0
          >
            <tr>
              <td class=inheader>Date</td>
              <td class=inheader>Ins</td>
              <td class=inheader>Signups</td>
            </tr>
            {if $show_refstat}
              {section name=s loop=$refstat}
                <tr>
                  <td
                    class=item
                    align=center
                  ><b>{$refstat[s].date}</b></td>
                  <td
                    class=item
                    align=right
                  >{$refstat[s].income}</td>
                  <td
                    class=item
                    align=right
                  >{$refstat[s].reg}</td>
                </tr>
              {/section}
            {else}
              <tr>
                <td
                  class=item
                  align=center
                  colspan=3
                >No statistics found for this period.</td>
              </tr>
            {/if}
          </table>
        </div>
      </div>
    {/if}


    {if $settings.show_referals}
      {if $show_referals}
        <div class="card rounded-sm shadow-sm px-4 py-4 sm:px-5">
          <h2 class="text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
            Referral ins/signups
          </h2>
          <table
            cellspacing=1
            cellpadding=1
            border=0
          >
            <tr>
              <td class=inheader>Nickname</td>
              <td class=inheader>E-mail</td>
              <td class=inheader>Status</td>
            </tr>
            {section name=s loop=$referals}
              <tr>
                <td class=item><b>{$referals[s].username}</b></td>
                <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
                <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
              </tr>
              {if $referals[s].ref_stats}
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
