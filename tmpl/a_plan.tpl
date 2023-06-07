<div class="card rounded-lg px-4 py-4 sm:px-5">
    <label class="inline-flex items-center space-x-2">
        <input
          class="form-radio is-basic h-5 w-5 rounded-full border-slate-400/70 checked:border-primary checked:bg-primary hover:border-primary focus:border-primary dark:border-navy-400 dark:checked:border-accent dark:checked:bg-accent dark:hover:border-accent dark:focus:border-accent"
          name="h_id"
          type="radio"
          value='{$plans[plans].id}'
          {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if}
        />
        <p>{$plans[plans].name}</p>
    </label>
    <div class="mt-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


    <div class="pt-2 mt-2">
        {section name=options loop=$plans[plans].plans}
           {* i need two elements that will flex in between and align center, one will be the content title the other will be the value  for example: Plan Roi:   20% *}
            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Rate </p>
                <p>{$plans[plans].plans[options].name}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Minimum -Maximum Inv. Amount</p>
                <p>{$plans[plans].plans[options].deposit}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>


            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">R.O.I.</p>
                <p>{$plans[plans].plans[options].percent}%</p>
            </div>
            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Duration</p>
                <p>{$plans[plans].plans[options].description}</p>
            </div>

            <div class="my-4 h-px  bg-slate-200 dark:bg-navy-500"></div>

            <div class="flex justify-between items-center">
                <p class="font-semibold text-slate-600">Referral Bonus</p>
                <p>10% on First Deposit</p>
            </div>

        {/section}
    </div>
</div>
