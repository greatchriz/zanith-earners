<div
    class="px-6 py-10 shadow hover:shadow-md dark:shadow-gray-800 dark:hover:shadow-gray-700 transition duration-500 rounded-2xl bg-white dark:bg-slate-900">


    <img
        src="{$icon}"
        class="w-24 h-24"
    >

    <div class="content mt-7">
        <a
            href="?a={$link}"
            class="title h5 text-lg font-medium hover:text-indigo-600"
        >{$title}</a>
        <p class="text-slate-400 mt-3 line-clamp-1">
            {$subheading}
        </p>

        <div class="mt-5">
            <a
                href="?a={$link}"
                class="btn btn-link text-indigo-600 hover:text-indigo-600 after:bg-indigo-600 duration-500 ease-in-out"
            >Read More <i class="uil uil-arrow-right"></i></a>
        </div>
    </div>
</div>
