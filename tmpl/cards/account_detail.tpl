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
            {$info}
        </p>
        <p class="mt-0.5 text-xs text-success line-clamp-1">
            {$title}
        </p>
    </div>
</div>
</div>