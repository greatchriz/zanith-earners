<div class="card bg-gradient-to-br from-purple-500 to-indigo-600 px-4 pb-4 sm:px-5">
    <div class="flex items-center justify-between py-3 text-white">
        <h2 class="text-sm+ font-medium tracking-wide">Your Balance</h2>
    </div>
    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2 sm:gap-5 lg:gap-6">
        <div>
            <div class="mt-3 text-3xl font-semibold text-white">
                {$total_balance}
            </div>
        </div>

        <div class="grid grid-cols-2 gap-4 sm:gap-5 lg:gap-6">
            <div>
                <p class="text-indigo-100">Total Deposits</p>
                <div class="mt-1 flex items-center space-x-2">
                    <div class="flex h-7 w-7 items-center justify-center rounded-full bg-black/20 text-white">
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
                    </div>
                    <p class="text-base font-medium text-white">{$total_deposits}</p>
                </div>

                <a href="?a=deposit"
                    class="btn mt-3 w-full border border-white/10 bg-white/20 text-white hover:bg-white/30 focus:bg-white/30"
                >
                    Deposit
            </a>
            </div>
            <div>
                <p class="text-indigo-100">Total Withdrawals</p>
                <div class="mt-1 flex items-center space-x-2">
                    <div class="flex h-7 w-7 items-center justify-center rounded-full bg-black/20 text-white">
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
                    </div>
                    <p class="text-base font-medium text-white">{$total_withdrawals}</p>
                </div>
                <a href="?a=withdraw"
                        class="btn mt-3 w-full border border-white/10 bg-white/20 text-white hover:bg-white/30 focus:bg-white/30"
                    >
                        Withdraw
                </a>
            </div>
        </div>
    </div>
</div>