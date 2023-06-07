
</main>
</div>
<!-- 
    This is a place for Alpine.js Teleport feature 
    @see https://alpinejs.dev/directives/teleport
  -->
<div id="x-teleport-target"></div>
<script>
  window.addEventListener("DOMContentLoaded", () => Alpine.start());
</script>

{literal}
  <script>
    function handleClick(event) {
      const anchor = event.currentTarget.querySelector('a');
      anchor.click();
    }
  </script>
{/literal}
</body>

</html>
