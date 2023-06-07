{literal}
<div
    x-data="{activeTab:'tabHome'}"
    class="tabs flex flex-col"
>
{/literal}

    <div
        class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-200 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
        <div class="tabs-list flex px-1.5 py-1">
            <button
                @click="activeTab = 'tabHome'"
                :class="activeTab === 'tabHome' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                class="btn shrink-0 px-3 py-1.5 font-medium"
            >
                Home
            </button>
            <button
                @click="activeTab = 'tabProfile'"
                :class="activeTab === 'tabProfile' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                class="btn shrink-0 px-3 py-1.5 font-medium"
            >
                Profile
            </button>
        </div>
    </div>
    <div class="tab-content pt-4">
        <div
            x-show="activeTab === 'tabHome'"
            x-transition:enter="transition-all duration-500 easy-in-out"
            x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
            x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
        >
            <div>
            <label class="block">
                <span>Spend funds from the Account Balance</span>
                <select
                class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                name="type"
                >
                {section name=p loop=$ps}
                    {if $ps[p].balance > 0 and $ps[p].status == 1}
                    <option value="account_{$ps[p].id}">{$ps[p].name}</option>
                    {/if}
                {/section}
                </select>
            </label>
            </div>

            <button
            type=submit
            class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
          >
            Spend
          </button>

        </div>

        <div
            x-show="activeTab === 'tabProfile'"
            x-transition:enter="transition-all duration-500 easy-in-out"
            x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
            x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
        >
                    <div>
                    <label class="block">
                        <span>Spend funds from External Wallet</span>
                        <select
                        class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                        name="type"
                        >
                        {section name=p loop=$ps}
                            {if $ps[p].status}
                            <option value="process_{$ps[p].id}" {if $smarty.section.p.index == 0}selected{/if}>{$ps[p].name}</option>
                            {/if}
                        {/section}
                        </select>
                    </label>
                    </div>

                    
            <button
            type=submit
            class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
          >
            Spend
          </button>
        </div>

    </div>
</div>
