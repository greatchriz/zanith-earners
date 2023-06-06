<div class="col-span-12 lg:col-span-8">
    {include file="cards/balance.tpl"}

    {literal}
        
    <div class="card mt-4 pb-1 sm:mt-5 lg:mt-6">
        <div class="my-3 flex items-center justify-between px-4 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Watchlist
            </h2>
            <div
                x-data="usePopper({placement:'bottom-end',offset:4})"
                @click.outside="isShowPopper && (isShowPopper = false)"
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
                        />
                    </svg>
                </button>

                <div
                    x-ref="popperRoot"
                    class="popper-root"
                    :class="isShowPopper && 'show'"
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
        <div class="scrollbar-sm flex space-x-4 overflow-x-auto overflow-y-hidden px-4 pb-2 sm:px-5">
            <div class="flex w-72 shrink-0 flex-col">
                <div class="flex items-center space-x-2">
                    <img
                        class="h-6 w-6"
                        src="images/logos/bitcoin.svg"
                        alt="flag"
                    />
                    <div>
                        <span>Bitcoin</span>
                        <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                            btc
                        </span>
                    </div>
                </div>

                <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                    <div class="ax-transparent-gridline">
                        <div
                            x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist1); $el._x_chart.render() });">
                        </div>
                    </div>
                    <div
                        class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                        <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                            $31,566.11
                        </p>
                        <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4 w-4"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M7 11l5-5m0 0l5 5m-5-5v12"
                                />
                            </svg>
                            <span>4.3%</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="flex w-72 shrink-0 flex-col">
                <div class="flex items-center space-x-2">
                    <img
                        class="h-6 w-6"
                        src="images/logos/ethereum.svg"
                        alt="flag"
                    />
                    <div>
                        <span>Ethereum</span>
                        <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                            ETH
                        </span>
                    </div>
                </div>

                <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                    <div class="ax-transparent-gridline">
                        <div
                            x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist2); $el._x_chart.render() });">
                        </div>
                    </div>
                    <div
                        class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                        <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                            $7,668.56
                        </p>
                        <p class="mt-1 flex items-center space-x-0.5 text-xs text-error">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4 w-4"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M17 13l-5 5m0 0l-5-5m5 5V6"
                                />
                            </svg>
                            <span>6.53%</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="flex w-72 shrink-0 flex-col">
                <div class="flex items-center space-x-2">
                    <img
                        class="h-6 w-6"
                        src="images/logos/solana.svg"
                        alt="flag"
                    />
                    <div>
                        <span>Solana</span>
                        <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                            SOl
                        </span>
                    </div>
                </div>

                <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                    <div class="ax-transparent-gridline">
                        <div
                            x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist3); $el._x_chart.render() });">
                        </div>
                    </div>
                    <div
                        class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                        <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                            $1,956.11
                        </p>
                        <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4 w-4"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M7 11l5-5m0 0l5 5m-5-5v12"
                                />
                            </svg>
                            <span>3.6%</span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="flex w-72 shrink-0 flex-col">
                <div class="flex items-center space-x-2">
                    <img
                        class="h-6 w-6"
                        src="images/logos/litecoin.svg"
                        alt="flag"
                    />
                    <div>
                        <span>Litecoin</span>
                        <span class="text-xs uppercase text-slate-400 dark:text-navy-300">
                            LTC
                        </span>
                    </div>
                </div>

                <div class="mt-2.5 flex justify-between rounded-lg bg-slate-50 py-3 pr-3 dark:bg-navy-600">
                    <div class="ax-transparent-gridline">
                        <div
                            x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoWatchlist4); $el._x_chart.render() });">
                        </div>
                    </div>
                    <div
                        class="flex w-36 flex-col items-center rounded-lg bg-slate-100 py-2 font-inter dark:bg-navy-500">
                        <p class="text-xl font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                            $487.76
                        </p>
                        <p class="mt-1 flex items-center space-x-0.5 text-xs text-success">
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4 w-4"
                                fill="none"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path
                                    stroke-linecap="round"
                                    stroke-linejoin="round"
                                    stroke-width="2"
                                    d="M7 11l5-5m0 0l5 5m-5-5v12"
                                />
                            </svg>
                            <span>7.98%</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {/literal}
</div>
