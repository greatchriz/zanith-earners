<div class="card mt-4 px-4 pb-4 sm:px-5">

    <div class="flex items-center justify-between py-3">
        <h2 class="font-medium tracking-wide text-slate-700 dark:text-navy-100">
            Account Details
        </h2>
    </div>

    <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
       
        {* include accoubnt_detail *}

        {include file="cards/account_detail.tpl"
             info="{$userinfo.username}"
             title="Username"
             icon="images/svg/userdetails/username.svg"
        }

        {include file="cards/account_detail.tpl"
             info="https://zenith-earners.com/?ref={$userinfo.username}"
             title="Referral Link"
             icon="images/svg/userdetails/referral.svg"
        }

        {* $ab_formated.withdraw_pending *}

        {include file="cards/account_detail.tpl"
             info="{$currency_sign}{$ab_formated.withdraw_pending}"
             title="Pending Withdrawal"
             icon="images/svg/userdetails/pending-withdrawal.svg"
        }

        {* ab_formated.active_deposit *}

        {include file="cards/account_detail.tpl"
             info="{$currency_sign}{$ab_formated.active_deposit}"
             title="Active Deposit"
             icon="images/svg/userdetails/active-deposit.svg"
        }
        
    </div>
</div>
