<li 
    onclick="handleClick(event)"
    class="flex items-center bg-primary/10 rounded-lg cursor-pointer" style="margin-bottom: 10px; margin-top: 10px;">
    <a
        href="?a={$link}"
        class="flex h-11 w-11 items-center justify-center text-primary outline-none transition-colors duration-200 hover:bg-primary/20 focus:bg-primary/20 active:bg-primary/25 dark:bg-navy-600 dark:text-accent-light dark:hover:bg-navy-450 dark:focus:bg-navy-450 dark:active:bg-navy-450/90"
    >

    {include file="{$icon}"}
       
    </a>
    <p style="margin-left: 20px;">
        {$title}
    </p>

</li>
