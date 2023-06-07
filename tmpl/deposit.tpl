{include file="header.tpl" pagetitle="Deposit" pageurl="deposit"}

{if $fatal}

  {if $fatal == 'one_per_month'}
    You can deposit once a month only.
  {/if}

{else}

  {literal}
    <script language="javascript">
      <!--
        function openCalculator(id) {

          w = 225;
          h = 400;
          t = (screen.height - h - 30) / 2;
          l = (screen.width - w - 30) / 2;
          window.open('?a=calendar&type=' + id, 'calculator' + id, "top=" + t + ",left=" + l + ",width=" + w + ",height=" +
            h + ",resizable=1,scrollbars=0");

        {/literal}

        
      {if $qplans > 1}

          
        {literal}
            for (i = 0; i < document.spendform.h_id.length; i++) {
              if (document.spendform.h_id[i].value == id) {
                document.spendform.h_id[i].checked = true;
              }
            }

            
        {/literal}

          
      {/if}

        
      {literal}

        }

        function updateCompound() {
          var id = 0;
          var tt = document.spendform.h_id.type;
          if (tt && tt.toLowerCase() == 'hidden') {
            id = document.spendform.h_id.value;
          } else {
            for (i = 0; i < document.spendform.h_id.length; i++) {
              if (document.spendform.h_id[i].checked) {
                id = document.spendform.h_id[i].value;
              }
            }
          }

          var cpObj = document.getElementById('compound_percents');
          if (cpObj) {
            while (cpObj.options.length != 0) {
              cpObj.options[0] = null;
            }
          }

          if (cps[id] && cps[id].length > 0) {
            document.getElementById('coumpond_block').style.display = '';

            for (i in cps[id]) {
              cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
            }
          } else {
            document.getElementById('coumpond_block').style.display = 'none';
          }
        }
        var cps = {};
        -->
      </script>
    {/literal}

    {if $frm.say eq 'deposit_success'}
      <h3>The deposit has been successfully saved.</h3>
      <br><br>
    {/if}

    {if $frm.say eq 'deposit_saved'}
      <h3>The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>
    {/if}


    {if $errors}
      {if $errors.less_min}
        Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing<br><br>
      {/if}
      {if $errors.greater_max}
        Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing<br><br>
      {/if}
      {if $errors.ec_forbidden}
        Sorry, deposit with selected processing is temproary forbidden.<br><br>
      {/if}
      {if $errors.cannot_invest_this_plan_anymore}
        Sorry, you cannot invest this plan anymore<br><br>
      {/if}
    {/if}

    <form
      method=post
      name="spendform"
    >
      <input
        type=hidden
        name=a
        value=deposit
      >
      <h2 class="my-3 text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
        Select Plan
      </h2>

      <div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
        {section name=plans loop=$plans}
          {include file="a_plan.tpl" plans=$plans}
        {/section}
      </div>

      <h2 class="my-3 text-xl font-medium text-slate-800 dark:text-navy-50 lg:text-2xl">
        Your Account Balance
      </h2>

      <div class="grid grid-cols-2 gap-3 sm:grid-cols-3 sm:gap-5 lg:grid-cols-2">

        {include file="deposit_account_balance.tpl" title="Total Balance" balance=$ab_formated.total}


        {* foreach ps as item p, then if p balance is greater than zero then include the deposit account balance and pass the neccessary variables *}

        {section name=p loop=$ps}
          {if $ps[p].balance > 0}
            {include file="deposit_account_balance.tpl" title=$ps[p].name balance=$ps[p].balance}
          {/if}
        {/section}

      </div>

      <h2 class="my-3 text-lg font-medium text-slate-800 dark:text-navy-50 lg:text-xl">
        Add Amount and Select Payment Method
      </h2>

      <div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
        <div>
          <span>How Much are you Investing ?</span>
          <label class="mt-1 flex -space-x-px">
            <div
              class="flex items-center justify-center rounded-l-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450"
            >
              <span>$</span>
            </div>
            <input
              class="form-input w-full border border-slate-300 bg-transparent px-3 py-2 placeholder:text-slate-400/70 hover:z-10 hover:border-slate-400 focus:z-10 focus:border-primary dark:border-navy-450 dark:hover:border-navy-400 dark:focus:border-accent"
              placeholder="Enter Price"
              type="text"
              name=amount
              value='{$min_deposit}'
            />
            <div
              class="flex items-center justify-center rounded-r-lg border border-slate-300 px-3.5 font-inter dark:border-navy-450"
            >
              <span>.00</span>
            </div>
          </label>
        </div>


        {literal}
        <div
          x-data="{activeTab:'tabHome'}"
          class="tabs flex flex-col"
        >
        {/literal}
          <div
            class="is-scrollbar-hidden overflow-x-auto rounded-lg bg-slate-200 text-slate-600 dark:bg-navy-800 dark:text-navy-200"
          >
            <div class="tabs-list flex px-1.5 py-1">
              <button
                @click="activeTab = 'tabHome'"
                :class="activeTab === 'tabHome' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                class="btn shrink-0 px-3 py-1.5 font-medium"
              >
                Home
              </button>
              <button
                @click="activeTab = 'tabProfile'"
                :class="activeTab === 'tabProfile' ? 'bg-white shadow dark:bg-navy-500 dark:text-navy-100' : 'hover:text-slate-800 focus:text-slate-800 dark:hover:text-navy-100 dark:focus:text-navy-100'"
                class="btn shrink-0 px-3 py-1.5 font-medium"
              >
                Profile
              </button>
            </div>
          </div>
          <div class="tab-content pt-4">
            <div
              x-show="activeTab === 'tabHome'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
        <div>
          <label class="block">
            <span>Spend funds from the Account Balance</span>
            <select
              class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
              name=type

            >
              <div>
                <label class="block">
                  <span>Spend funds from the Account Balance</span>
                  <select
                    class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                    name="type"
                  >
                    {section name=p loop=$ps}
                      {if $ps[p].balance > 0 and $ps[p].status == 1}
                        <option value="account_{$ps[p].id}">{$ps[p].name}</option>
                      {/if}
                    {/section}
                  </select>
                </label>
              </div>

              <button
                type=submit
                class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
              >
                Spend
              </button>

            </div>

            <div
              x-show="activeTab === 'tabProfile'"
              x-transition:enter="transition-all duration-500 easy-in-out"
              x-transition:enter-start="opacity-0 [transform:translate3d(1rem,0,0)]"
              x-transition:enter-end="opacity-100 [transform:translate3d(0,0,0)]"
            >
              <div>
                <label class="block">
                  <span>Spend funds from External Wallet</span>
                  <select
                    class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
                    name="type"
                  >
                    {section name=p loop=$ps}
                      {if $ps[p].status}
                        <option
                          value="process_{$ps[p].id}"
                          {if $smarty.section.p.index == 0}selected{/if}
                        >{$ps[p].name}</option>
                      {/if}
                    {/section}
                  </select>
                </label>
              </div>


              <button
                type=submit
                class="btn bg-gradient-to-br from-purple-500 to-indigo-600 font-medium text-white my-4"
              >
                Spend
              </button>
            </div>

          </div>
        </div>

        <div>
          <label class="block">
            <span>Spend funds from External Wallet</span>
            <select
              class="form-select mt-1.5 w-full rounded-lg border border-slate-300 bg-white px-3 py-2 hover:border-slate-400 focus:border-primary dark:border-navy-450 dark:bg-navy-700 dark:hover:border-navy-400 dark:focus:border-accent"
              name=type
            >
              {section name=p loop=$ps}
                {if $ps[p].status}
                  <option value="process_{$ps[p].id}">{$ps[p].name}</option>
                {/if}
              {/section}
            </select>
          </label>
        </div>

      </div>

     

    </form>
    {literal}
      <script language=javascript>
        for (i = 0; i < document.spendform.type.length; i++) {
          if ((document.spendform.type[i].value.match(/^process_/))) {
            document.spendform.type[i].checked = true;
            break;
          }
        }
        updateCompound();
      </script>
    {/literal}

  {/if}
  {include file="footer.tpl"}
