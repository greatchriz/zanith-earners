
{include file="info_section_header.tpl"}
{if $settings.index_last_deposits}
{loaddata name="transactions" limit=$settings.index_last_deposits type="deposit" var="last_deposits"}
{/if}

{if $last_deposits}

  {foreach from=$last_deposits item=s}

    <div class="tiny-slide">
      <!-- Content -->
      <div
          class="team p-6 m-6 rounded-md shadow-md dark:shadow-gray-800 dark:border-gray-700 bg-white dark:bg-slate-900 relative">
          <div
              class="absolute inset-0 bg-indigo-600/10 dark:bg-indigo-600/30 rounded-md -mt-[10px] -ms-[10px] h-[98%] w-[98%] -z-1">
          </div>
          <img
              src="images/{$s.ec}.gif"
              class="h-24 w-24 rounded-full shadow-md dark:shadow-gray-800"
              alt=""
          >
    
          <div class="content mt-4">
              <a
                  href=""
                  class="text-lg font-medium hover:text-indigo-600 block"
              >{$currency_sign}{$s.amount}</a>
              <span class="text-slate-400 block">Amount.</span>
    
              <a
                  href=""
                  class="text-lg font-medium hover:text-indigo-600 block"
              >{$s.date}</a>
              <span class="text-slate-400 block">Date.</span>
    
              <a
                  href=""
                  class="text-lg font-medium hover:text-indigo-600 block"
              >{$s.username}</a>
              <span class="text-slate-400 block">User.</span>
              
    
          </div>
      </div>
      <!-- Content -->
    </div>
    
    {/foreach}
    
{/if}
{include file="info_section_footer.tpl"}


