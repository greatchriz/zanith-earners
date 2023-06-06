
<div class="w-48 shrink-0 rounded-lg bg-gradient-to-br from-purple-500 to-indigo-600 p-[3px]">
    <div class="rounded-lg bg-white p-3 dark:bg-navy-700">
        <div class="flex items-center justify-between">
            <p>{$p.name}</p>
            <img
                src="images/{$p.id}.gif"
                class="h-6 w-6"
                alt="logo"
            />
        </div>
        <div class="mt-6 flex items-end justify-between">
                        
            <p class="font-semibold text-base">{$currency_sign}{$p.balance}</p>
        </div>

    </div>
</div>
