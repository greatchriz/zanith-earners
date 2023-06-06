{literal}
<div class="col-span-12 grid grid-cols-1 gap-4 sm:gap-5 lg:col-span-4 lg:gap-6">
    <div class="card pb-4">
        <div class="flex items-center justify-between px-4 py-3 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Accounts
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
        <div class="scrollbar-sm flex space-x-3 overflow-x-auto px-4 pb-3 sm:px-5">
            <div class="w-48 shrink-0 rounded-lg bg-gradient-to-br from-amber-400 to-orange-600 p-[3px]">
                <div class="rounded-lg bg-white p-3 dark:bg-navy-700">
                    <div class="flex items-center justify-between">
                        <p>Bitcoin</p>
                        <img
                            src="images/logos/bitcoin.svg"
                            class="h-6 w-6"
                            alt="logo"
                        />
                    </div>

                    <div class="mt-4 flex items-end justify-between">
                        <p class="text-xl font-medium text-slate-700 dark:text-navy-100">
                            .739
                        </p>
                        <p>$7,946.00</p>
                    </div>
                </div>
            </div>

            <div class="w-48 shrink-0 rounded-lg bg-gradient-to-br from-purple-500 to-indigo-600 p-[3px]">
                <div class="rounded-lg bg-white p-3 dark:bg-navy-700">
                    <div class="flex items-center justify-between">
                        <p>Litecoin</p>
                        <img
                            src="images/logos/litecoin.svg"
                            class="h-6 w-6"
                            alt="logo"
                        />
                    </div>

                    <div class="mt-4 flex items-end justify-between">
                        <p class="text-xl font-medium text-slate-700 dark:text-navy-100">
                            3.545
                        </p>
                        <p>$2,589.00</p>
                    </div>
                </div>
            </div>
            <div class="w-48 shrink-0 rounded-lg bg-gradient-to-br from-info to-info-focus p-[3px]">
                <div class="rounded-lg bg-white p-3 dark:bg-navy-700">
                    <div class="flex items-center justify-between">
                        <p>Ethereum</p>
                        <img
                            src="images/logos/ethereum.svg"
                            class="h-6 w-6"
                            alt="logo"
                        />
                    </div>

                    <div class="mt-4 flex items-end justify-between">
                        <p class="text-xl font-medium text-slate-700 dark:text-navy-100">
                            5.589
                        </p>
                        <p>$11,499.00</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-1 px-4 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Send Money
            </h2>
            <div class="mt-3 flex space-x-2">
                <div class="avatar h-8 w-8 hover:z-10">
                    <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="images/avatar/avatar-16.jpg"
                        alt="avatar"
                    />
                </div>

                <div class="avatar h-8 w-8 hover:z-10">
                    <div
                        class="is-initial rounded-full bg-info text-xs+ uppercase text-white ring ring-white dark:ring-navy-700">
                        jd
                    </div>
                </div>

                <div class="avatar h-8 w-8 hover:z-10">
                    <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="images/avatar/avatar-20.jpg"
                        alt="avatar"
                    />
                </div>

                <div class="avatar h-8 w-8 hover:z-10">
                    <img
                        class="rounded-full ring ring-white dark:ring-navy-700"
                        src="images/avatar/avatar-19.jpg"
                        alt="avatar"
                    />
                </div>
            </div>
            <div class="mt-2 flex items-center justify-between">
                <p class="text-xs+">View All Contacts</p>

                <button
                    class="btn -mr-1.5 h-8 w-8 rounded-full p-0 hover:bg-slate-300/20 focus:bg-slate-300/20 active:bg-slate-300/25 dark:hover:bg-navy-300/20 dark:focus:bg-navy-300/20 dark:active:bg-navy-300/25"
                >
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
                            stroke-width="1.5"
                            d="M14 5l7 7m0 0l-7 7m7-7H3"
                        />
                    </svg>
                </button>
            </div>
        </div>

        <div class="mx-4 my-3 h-px bg-slate-200 dark:bg-navy-500 sm:mx-5"></div>

        <div class="px-4 sm:px-5">
            <div class="flex items-center justify-between">
                <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                    Exchange
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
            <div
                x-data="{activeTab:'tabReceive'}"
                class="tabs mt-3 flex flex-col"
            >
                <div
                    class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-150 text-slate-600 dark:bg-navy-800 dark:text-navy-200">
                    <div class="tabs-list flex px-1.5 py-1">
                        <button
                            @click="activeTab = 'tabReceive'"
                            :class="activeTab === 'tabReceive' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                            class="btn flex-1 space-x-2 px-3 py-2 font-medium"
                        >
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4.5 w-4.5"
                                viewBox="0 0 20 20"
                                fill="currentColor"
                            >
                                <path
                                    fill-rule="evenodd"
                                    d="M3 17a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm3.293-7.707a1 1 0 011.414 0L9 10.586V3a1 1 0 112 0v7.586l1.293-1.293a1 1 0 111.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z"
                                    clip-rule="evenodd"
                                />
                            </svg>
                            <span> Receive </span>
                        </button>
                        <button
                            @click="activeTab = 'tabSend'"
                            :class="activeTab === 'tabSend' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                            class="btn flex-1 space-x-2 px-3 py-2 font-medium"
                        >
                            <svg
                                xmlns="http://www.w3.org/2000/svg"
                                class="h-4.5 w-4.5"
                                viewBox="0 0 20 20"
                                fill="currentColor"
                            >
                                <path
                                    fill-rule="evenodd"
                                    d="M3 17a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM6.293 6.707a1 1 0 010-1.414l3-3a1 1 0 011.414 0l3 3a1 1 0 01-1.414 1.414L11 5.414V13a1 1 0 11-2 0V5.414L7.707 6.707a1 1 0 01-1.414 0z"
                                    clip-rule="evenodd"
                                />
                            </svg>
                            <span>Send</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="relative">
                <div class="pt-4">
                    <p class="text-xs+">You send</p>
                    <div class="mt-1 flex justify-between space-x-2 rounded-2xl bg-slate-150 p-1.5 dark:bg-navy-800">
                        <select
                            class="form-select h-8 rounded-2xl border border-transparent bg-white px-4 py-0 pr-9 text-xs+ hover:border-slate-400 focus:border-primary dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                        >
                            <option>Bitcoin</option>
                            <option>Ethereum</option>
                            <option>Solana</option>
                            <option>Litecoin</option>
                        </select>
                        <input
                            class="form-input w-full bg-transparent px-2 text-right placeholder:text-slate-400/70"
                            placeholder="Amount"
                            type="text"
                        />
                    </div>
                </div>
                <div class="pt-4">
                    <p class="text-xs+">You receive</p>
                    <div class="mt-1 flex justify-between space-x-2 rounded-2xl bg-slate-150 p-1.5 dark:bg-navy-800">
                        <select
                            class="form-select h-8 rounded-2xl border border-transparent bg-white px-4 py-0 pr-9 text-xs+ hover:border-slate-400 focus:border-primary dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                        >
                            <option>Dollar</option>
                            <option>Ethereum</option>
                            <option>Solana</option>
                            <option>Litecoin</option>
                        </select>
                        <input
                            class="form-input w-full bg-transparent px-2 text-right placeholder:text-slate-400/70"
                            placeholder="Amount"
                            type="text"
                        />
                    </div>
                </div>
                <div class="absolute right-0 top-1/2 mt-1">
                    <button
                        class="btn mask is-hexagon h-7 w-7 bg-primary p-0 font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
                    >
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            class="h-3.5 w-3.5"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                stroke-linecap="round"
                                stroke-linejoin="round"
                                skkkkkkkroke-width="2"
                                d="M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4"
                            />
                        </svg>
                    </button>
                </div>
            </div>
            <button
                class="btn mt-6 h-10 w-full bg-primary font-medium text-white hover:bg-primary-focus focus:bg-primary-focus active:bg-primary-focus/90 dark:bg-accent dark:hover:bg-accent-focus dark:focus:bg-accent-focus dark:active:bg-accent/90"
            >
                Buy BTC
            </button>
        </div>
    </div>

    <div class="card">
        <div class="mt-3 flex items-center justify-between px-4 sm:px-5">
            <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
                Transactions
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

        <div class="ax-transparent-gridline pr-2">
            <div
                x-init="$nextTick(() => { $el._x_chart = new ApexCharts($el,pages.charts.cryptoTransactions); $el._x_chart.render() });">
            </div>
        </div>
    </div>
</div>
{/literal}

