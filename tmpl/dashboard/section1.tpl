<div class="col-span-12 lg:col-span-8">
    {include file="cards/balance.tpl"}

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

    {* <div class="mt-4 sm:mt-5 lg:mt-6">
        <div class="flex items-center justify-between">
            <h2 class="text-base font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                Latest Deposits
            </h2>
        </div>

        {foreach from=$plans item=p}

            <div class="card px-4 pb-4 sm:px-5">
                <div class="my-1 flex h-8 items-center justify-between">
                    <h2 class="text-sm+ font-medium tracking-wide text-slate-700 line-clamp-1 dark:text-navy-100">
                        Contact List
                    </h2>
                </div>

                <div
                    class="mt-4 space-y-3.5"
                    x-data="{expandedItem:'item-1'}"
                >
                    <div x-data="accordionItem('item-2')">
                        <div class="flex items-center justify-between">
                            <div class="flex space-x-4">

                                <div>
                                    <h3 class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                                        Alfredo Elliott
                                    </h3>
                                    <p class="mt-1 text-xs line-clamp-1">(095)-800-8313</p>
                                </div>
                            </div>

                            <div class="flex space-x-4">

                                <div>
                                    <h3 class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                                        Alfredo Elliott
                                    </h3>
                                    <p class="mt-1 text-xs line-clamp-1">(095)-800-8313</p>
                                </div>
                            </div>
                            <div class="flex space-x-4">

                                <div>
                                    <h3 class="font-medium text-slate-700 line-clamp-1 dark:text-navy-100">
                                        Alfredo Elliott
                                    </h3>
                                    <p class="mt-1 text-xs line-clamp-1">(095)-800-8313</p>
                                </div>
                            </div>
                        </div>
                        <div
                            x-show="expanded"
                            x-collapse=""
                            style="display: none; height: 0px; overflow: hidden;"
                            hidden=""
                        >
                            <div class="flex justify-between pt-4">
                                <button
                                    class="btn h-7 w-7 rounded-full bg-success/10 p-0 text-success hover:bg-success/20 focus:bg-success/20 active:bg-success/25"
                                >
                                    <i class="fa-solid fa-phone text-xs"></i>
                                </button>
                                <button
                                    class="btn h-7 w-7 rounded-full bg-warning/10 p-0 text-warning hover:bg-warning/20 focus:bg-warning/20 active:bg-warning/25"
                                >
                                    <i class="fa-solid fa-video text-xs"></i>
                                </button>
                                <button
                                    class="btn h-7 w-7 rounded-full bg-secondary/10 p-0 text-secondary hover:bg-secondary/20 focus:bg-secondary/20 active:bg-secondary/25 dark:bg-secondary-light/10 dark:text-secondary-light dark:hover:bg-secondary-light/20 dark:focus:bg-secondary-light/20 dark:active:bg-secondary-light/25"
                                >
                                    <i class="fa-regular fa-comment text-xs"></i>
                                </button>
                                <button
                                    class="btn h-7 w-7 rounded-full bg-info/10 p-0 text-info hover:bg-info/20 focus:bg-info/20 active:bg-info/25"
                                >
                                    <i class="fa-regular fa-envelope text-xs"></i>
                                </button>
                                <button
                                    class="btn h-7 w-7 rounded-full bg-slate-150 p-0 text-slate-800 hover:bg-slate-200 focus:bg-slate-200 active:bg-slate-200/80 dark:bg-navy-500 dark:text-navy-50 dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
                                >
                                    <i class="fa-solid fa-ellipsis"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card mt-3">
                <div class="is-scrollbar-hidden min-w-full overflow-x-auto">
                    <table class="is-hoverable w-full text-left">
                        <thead>
                            <tr>
                                <th
                                    class="whitespace-nowrap rounded-tl-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                                    Activity
                                </th>
                                <th
                                    class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                                    Account
                                </th>
                                <th
                                    class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                                    Last Payment
                                </th>
                                <th
                                    class="whitespace-nowrap bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                                    Balance
                                </th>

                                <th
                                    class="whitespace-nowrap rounded-tr-lg bg-slate-200 px-4 py-3 font-semibold uppercase text-slate-800 dark:bg-navy-800 dark:text-navy-100 lg:px-5">
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary dark:bg-accent dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                fill="none"
                                                viewBox="0 0 24 24"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                            >
                                                <path
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round"
                                                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Insurance
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Property Coverage
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        LTC Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>Mon, 12 May - 09:00</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-error">-7.55 LTC</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>
                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-info/10 text-info dark:bg-info dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                fill="none"
                                                viewBox="0 0 24 24"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                            >
                                                <path
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round"
                                                    d="M13 10V3L4 14h7v7l9-11h-7z"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Electricity
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Utility Payment
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        BTC Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>Wed, 14 May - 12:47</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-error">-0.0255 BTC</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>

                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-warning/10 text-warning dark:bg-warning dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                viewBox="0 0 20 20"
                                                fill="currentColor"
                                            >
                                                <path
                                                    fill-rule="evenodd"
                                                    d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z"
                                                    clip-rule="evenodd"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Konnor Guzman
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Personal
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        BTC Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>SUN, 20 May - 10:16</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-success">+0.55 BTC</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>
                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-warning/10 text-warning dark:bg-warning dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                viewBox="0 0 20 20"
                                                fill="currentColor"
                                            >
                                                <path
                                                    fill-rule="evenodd"
                                                    d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z"
                                                    clip-rule="evenodd"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Alfredo Elliott
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Personal
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        ETH Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>THU, 23 May - 15:09</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-success">+3.25 ETH</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>
                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-warning/10 text-warning dark:bg-warning dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                viewBox="0 0 20 20"
                                                fill="currentColor"
                                            >
                                                <path
                                                    fill-rule="evenodd"
                                                    d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z"
                                                    clip-rule="evenodd"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Henry Curtis
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Personal
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        BTC Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>Wed, 26 May - 12:22</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-success">+0.0086 BTC</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>

                            <tr class="border-y border-transparent border-b-slate-200 dark:border-b-navy-500">
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-info/10 text-info dark:bg-info dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                fill="none"
                                                viewBox="0 0 24 24"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                            >
                                                <path
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round"
                                                    d="M13 10V3L4 14h7v7l9-11h-7z"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Electricity
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Utility Payment
                                            </p>
                                        </div>
                                    </div>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        ETH Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>Sun, 30 May - 13:17</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-error">-2.894 ETH</p>
                                </td>

                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>
                            <tr class="border-y border-transparent">
                                <td class="whitespace-nowrap rounded-bl-lg px-4 py-3 sm:px-5">
                                    <div class="flex items-center space-x-4">
                                        <div
                                            class="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-primary/10 text-primary dark:bg-accent dark:text-white">
                                            <svg
                                                xmlns="http://www.w3.org/2000/svg"
                                                class="h-5.5 w-5.5"
                                                fill="none"
                                                viewBox="0 0 24 24"
                                                stroke="currentColor"
                                                stroke-width="1.5"
                                            >
                                                <path
                                                    stroke-linecap="round"
                                                    stroke-linejoin="round"
                                                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                                                />
                                            </svg>
                                        </div>
                                        <div>
                                            <p class="font-medium text-slate-700 dark:text-navy-100">
                                                Insurance
                                            </p>
                                            <p class="mt-0.5 text-xs text-slate-400 dark:text-navy-300">
                                                Property Coverage
                                            </p>
                                        </div>
                                    </div>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-medium text-slate-700 dark:text-navy-100">
                                        LTC Wallet
                                    </p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p>Mon, 12 May - 09:00</p>
                                </td>
                                <td class="whitespace-nowrap px-4 py-3 sm:px-5">
                                    <p class="font-semibold text-error">-7.55 LTC</p>
                                </td>
                                <td class="whitespace-nowrap rounded-br-lg px-4 py-3 sm:px-5">
                                    <button
                                        class="btn h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
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
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        {/foreach}

    </div> *}
</div>
