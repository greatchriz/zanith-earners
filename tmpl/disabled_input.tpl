<label class="relative flex">
    <input
      disabled
      class="form-input peer w-full rounded-lg bg-slate-150 px-3 py-2 pl-9 ring-primary/50 placeholder:text-slate-400 hover:bg-slate-200 focus:ring dark:bg-navy-900/90 dark:ring-accent/50 dark:placeholder:text-navy-300 dark:hover:bg-navy-900 dark:focus:bg-navy-900 disabled:pointer-events-none disabled:select-none disabled:border-none disabled:bg-zinc-100"
      placeholder="Your Upline: ({$placeholder})"
      type="text"
    />
    <span
        class="pointer-events-none absolute flex h-full w-10 items-center justify-center text-slate-400 peer-focus:text-primary dark:text-navy-300 dark:peer-focus:text-accent"
    >
    {include file="{$icon}"}
    </span>
  </label>