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


          {* the radio button and plan name *}
          {* <tr>
            <td colspan=3>
              {if $qplans > 1}
                <input
                  type=radio
                  name=h_id
                  value='{$plans[plans].id}'
                  {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)}
                    checked
                  {/if}
                  onclick="updateCompound()"
                >
                <!--	<input type=radio name=h_id value='{$plans[plans].id}' {if (($smarty.section.plans.first == 1) && ($frm.h_id eq '')) || ($frm.h_id == $plans[plans].id)} checked {/if} {if $compounding_available > 0}onclick="document.spendform.compound.disabled={if $plans[plans].use_compound == 1}false{else}true{/if};"{/if}> -->
              {else}
                <input
                  type=hidden
                  name=h_id
                  value='{$plans[plans].id}'
                >
              {/if}

              <b>{$plans[plans].name}</b>
            </td>
          </tr> *}



          <div class="grid grid-cols-1 gap-4 sm:gap-5 lg:grid-cols-3 lg:gap-6">
            {section name=plans loop=$plans}
              {include file="a_plan.tpl" plans=$plans}
            {/section}
          </div>

      <table
        cellspacing=0
        cellpadding=2
        border=0
      >
        <tr>
          <td>Your account balance ({$currency_sign}):</td>
          <td align=right>{$currency_sign}{$ab_formated.total}</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td align=right>
            <small>
              {section name=p loop=$ps}
                {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}
                  {if $hold[p].amount > 0} /
                  {$currency_sign}{$hold[p].amount} on hold{/if}<br>
                {/if}
              {/section}
            </small>
          </td>
        </tr>
        <tr>
          <td>Amount to Spend ({$currency_sign}):</td>
          <td align=right><input
              type=text
              name=amount
              value='{$min_deposit}'
              class=inpts
              size=15
              style="text-align:right;"
            ></td>
        </tr>
        <tr
          id="coumpond_block"
          style="display:none"
        >
          <td>Compounding(%):</td>
          <td align=right>
            <select
              name="compound"
              class=inpts
              id="compound_percents"
            ></select>
          </td>
        </tr>

        <tr>
          <td colspan=2>
            <table
              cellspacing=0
              cellpadding=2
              border=0
            >
              {section name=p loop=$ps}
                {if $ps[p].balance > 0 and $ps[p].status == 1}
                  <tr>
                    <td><input
                        type=radio
                        name=type
                        value="account_{$ps[p].id}"
                      ></td>
                    <td>Spend funds from the Account Balance {$ps[p].name}</td>
                  </tr>
                {/if}
              {/section}
              {section name=p loop=$ps}
                {if $ps[p].status}
                  <tr>
                    <td><input
                        type=radio
                        name=type
                        value="process_{$ps[p].id}"
                        {if $smarty.section.p.index == 0}checked{/if}
                      ></td>
                    <td>Spend funds from {$ps[p].name}</td>
                  </tr>
                {/if}
              {/section}
            </table>
          </td>
        </tr>
        <tr>
          <td colspan=2><input
              type=submit
              value="Spend"
              class=sbmt
            ></td>
        </tr>
      </table>
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
