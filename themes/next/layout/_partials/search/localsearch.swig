{% if theme.scheme %}
  <div class="site-search-div">

    <button class="search-icon fa fa-search" id="search-button"></button>

    <input type="text" id="local-search-input" class="st-search-input">
    <i id='local-search-close'>×</i>
  </div>
{% endif %}

<script type="text/javascript" id="local.search.active">
    {/* var inputArea       = document.querySelector("#local-search-input");
    inputArea.onclick   = function(){ getSearchFile(); this.focus(); }
    inputArea.onkeydown = function(){ if(event.keyCode == 13) return false } */}
</script>
