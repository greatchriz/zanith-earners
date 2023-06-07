<div class="card mt-4 px-4 pb-4 sm:px-5">

    <div class="flex items-center justify-between py-3">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Account Details
        </h2>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
       
        {* include accoubnt_detail *}

        {include file="cards/account_detail.tpl"
             info="{$userinfo.username}"
             title="Username"
             icon="images/svg/userdetails/username.svg"
        }

        {include file="cards/account_detail.tpl"
             info="https://zenith-earners.com/?ref={$userinfo.username}"
             title="Referral Link"
             icon="images/svg/userdetails/referral.svg"
        }


        <div
            class="flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
            <div class="flex items-center space-x-3">
                <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-success">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-6 w-6 text-white"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                        stroke-width="1.5"
                    >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"
                        ></path>
                    </svg>
                </div>
                <div>
                    <p class="font-medium text-slate-700 dark:text-navy-100">
                        ID: 5488615
                    </p>
                    <p class="mt-0.5 text-xs text-success line-clamp-1">
                        Up for 1.3 hours
                    </p>
                </div>
            </div>
            <input
                checked=""
                class="form-switch h-5 w-10 rounded-lg bg-slate-300 before:rounded-md before:bg-slate-50 checked:bg-primary checked:before:bg-white dark:bg-navy-900 dark:before:bg-navy-300 dark:checked:bg-accent dark:checked:before:bg-white"
                type="checkbox"
            >
        </div>
        <div
            class="flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
            <div class="flex items-center space-x-3">
                <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-warning">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-6 w-6 text-white"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                        stroke-width="1.5"
                    >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"
                        ></path>
                    </svg>
                </div>
                <div>
                    <p class="font-medium text-slate-700 dark:text-navy-100">
                        ID: 3591458
                    </p>
                    <p class="mt-0.5 text-xs text-warning line-clamp-1">
                        Down for 22 minutes
                    </p>
                </div>
            </div>
            <input
                class="form-switch h-5 w-10 rounded-lg bg-slate-300 before:rounded-md before:bg-slate-50 checked:bg-primary checked:before:bg-white dark:bg-navy-900 dark:before:bg-navy-300 dark:checked:bg-accent dark:checked:before:bg-white"
                type="checkbox"
            >
        </div>
        <div
            class="flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
            <div class="flex items-center space-x-3">
                <div
                    class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-slate-300 text-slate-700 dark:bg-navy-450 dark:text-navy-100">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        class="h-6 w-6"
                        fill="none"
                        viewBox="0 0 24 24"
                        stroke="currentColor"
                        stroke-width="1.5"
                    >
                        <path
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"
                        ></path>
                    </svg>
                </div>
                <div>
                    <p class="font-medium text-slate-700 dark:text-navy-100">
                        ID: 6517997
                    </p>
                    <p class="mt-0.5 text-xs line-clamp-1">Power Off</p>
                </div>
            </div>
            <input
                class="form-switch h-5 w-10 rounded-lg bg-slate-300 before:rounded-md before:bg-slate-50 checked:bg-primary checked:before:bg-white dark:bg-navy-900 dark:before:bg-navy-300 dark:checked:bg-accent dark:checked:before:bg-white"
                type="checkbox"
            >
        </div>
    </div>
</div>
