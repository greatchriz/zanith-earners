{if $title == 'Referral Link'}
    <div
        class="alert flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
        <div class="flex items-center space-x-3">
            <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-slate-300">
                <img
                    src="{$icon}"
                    alt="{$title}"
                />
            </div>
            <div>
                <p
                    id="clipboardContent1"
                    class="font-medium text-slate-700 dark:text-navy-100"
                >
                {$info}
                </p>
                <p class="mt-0.5 text-xs text-success line-clamp-1">
                    {$title}
                </p>
            </div>
        </div>
        {literal}
            <button
                class="btn h-6 shrink-0 rounded bg-primary px-2 text-xs text-white active:bg-primary"
                @click="$clipboard({
            content:document.querySelector('#clipboardContent1').innerText,
            success:()=>$notification({text:'Text Copied',variant:'success'}),
            error:()=>$notification({text:'Error',variant:'error'})
        })"
            >
                Copy
            </button>
        {/literal}

    </div>
{else}
    <div class="flex items-center justify-between space-x-2 rounded-lg border border-slate-200 p-3 dark:border-navy-600">
        <div class="flex items-center space-x-3">
            <div class="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-slate-300">
                <img
                    src="{$icon}"
                    alt="{$title}"
                />
            </div>
            <div>
                <p class="font-medium text-slate-700 dark:text-navy-100">
                    {$info}
                </p>
                <p class="mt-0.5 text-xs text-success line-clamp-1">
                    {$title}
                </p>
            </div>
        </div>
    </div>

{/if}
