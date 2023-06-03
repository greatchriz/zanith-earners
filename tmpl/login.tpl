{extends file='header.tpl'}

{block name=sidebar}
  <div class="fixed top-0 hidden p-6 lg:block lg:px-12">
    <a href="#" class="flex items-center space-x-2">
      <img class="h-12 w-12" src="images/app-logo.svg" alt="logo" />
      <p
        class="text-xl font-semibold uppercase text-slate-700 dark:text-navy-100"
      >
        lineone
      </p>
    </a>
  </div>
  <div class="hidden w-full place-items-center lg:grid">
    <div class="w-full max-w-lg p-6">
      <img
        class="w-full"
        x-show="!$store.global.isDarkModeEnabled"
        src="images/illustrations/dashboard-check.svg"
        alt="image"
      />
      <img
        class="w-full"
        x-show="$store.global.isDarkModeEnabled"
        src="images/illustrations/dashboard-check-dark.svg"
        alt="image"
      />
    </div>
  </div>
{/block}

{block name=content}
<main
class="flex w-full flex-col items-center bg-white dark:bg-navy-700 lg:max-w-md"
>
    {literal}
    <script language=javascript>
    function checkform() {
      if (document.mainform.username.value=='') {
        alert("Please type your username!");
        document.mainform.username.focus();
        return false;
      }
      if (document.mainform.password.value=='') {
        alert("Please type your password!");
        document.mainform.password.focus();
        return false;
      }
      return true;
    }
    </script>
    {/literal}

    {if $frm.say eq 'invalid_login'}
    <h3>Login error:</h3><br><br>

    Your login or password or turing image code is wrong. Please check this information.
    {/if}
    <h3>Login:</h3>
    <br>
    <form method=post name=mainform onsubmit="return checkform()">
    <input type=hidden name=a value='do_login'>
    <input type=hidden name=follow value='{$frm.follow}'>
    <input type=hidden name=follow_id value='{$frm.follow_id}'>
    <table cellspacing=0 cellpadding=2 border=0>
    <tr>
    <td>Username:</td>
    <td><input type=text name=username value='{$frm.username|escape:"html"}' class=inpts size=30 autofocus="autofocus"></td>
    </tr><tr>
    <td>Password:</td>
    <td><input type=password name=password value='' class=inpts size=30></td>
    </tr>
    {include file="captcha.tpl" action="login"}
    <tr>
    <td>&nbsp;</td>
    <td><input type=submit value="Login" class=sbmt></td>
    </tr></table>
    </form>
    <br><br>
    or <a href="{"?a=forgot_password"|encurl}">remember your login information</a>.

</main>

{/block}