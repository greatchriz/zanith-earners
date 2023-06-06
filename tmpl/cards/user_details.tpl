<div class="card mt-4 px-4 pb-4 sm:px-5">

    <div class="flex items-center justify-between py-3">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Mining Stats
        </h2>
        <div
            x-data="usePopper({placement:'bottom-end',offset:4})"
            @click.outside="isShowPopper &amp;&amp; (isShowPopper = false)"
            class="inline-flex"
        >
            <button
                x-ref="popperRef"
                @click="isShowPopper = !isShowPopper"
                class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
            >
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                    stroke-width="2"
                >
                    <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        d="M5 12h.01M12 12h.01M19 12h.01M6 12a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0zm7 0a1 1 0 11-2 0 1 1 0 012 0z"
                    ></path>
                </svg>
            </button>

            <div
                x-ref="popperRoot"
                class="popper-root"
                :class="isShowPopper &amp;&amp; 'show'"
                style="position: fixed; inset: 0px 0px auto auto; margin: 0px; transform: translate3d(-26px, 85px, 0px);"
                data-popper-placement="bottom-end"
            >
                <div
                    class="popper-box rounded-md border border-slate-150 bg-white py-1.5 font-inter dark:border-navy-500 dark:bg-navy-700">
                    <ul>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Action</a>
                        </li>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Another Action</a>
                        </li>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Something else</a>
                        </li>
                    </ul>
                    <div class="my-1 h-px bg-slate-150 dark:bg-navy-500"></div>
                    <ul>
                        <li>
                            <a
                                href="#"
                                class="flex h-8 items-center px-3 pr-8 font-medium tracking-wide outline-none transition-all hover:bg-slate-100 hover:text-slate-800 focus:bg-slate-100 focus:text-slate-800 dark:hover:bg-navy-600 dark:hover:text-navy-100 dark:focus:bg-navy-600 dark:focus:text-navy-100"
                            >Separated Link</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
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
                        {$userinfo.username}
                    </p>
                    <p class="mt-0.5 text-xs text-success line-clamp-1">
                      User Name
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
