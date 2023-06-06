<div class="card mt-4 pb-1 sm:mt-5 lg:mt-6">
    <div class="flex items-center justify-between px-4 py-3 sm:px-5">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Accounts
        </h2>
    </div>
    <div class="scrollbar-sm flex space-x-3 overflow-x-auto px-4 pb-3 sm:px-5">

        <!--foreach ps as p include cards/account.tpl -->
        {foreach from=$ps item=p}
            {include file='cards/account.tpl'}
        {/foreach}

    </div>
</div>