%########################################################################
%# Copyright (c) 1988-2019 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: t.t
%#
%# Author: $author$
%#   Date: 4/29/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%Name,%(%else-then(%Name%,%(Name)%)%)%,%
%FGColor,%(%else-then(%FGColor%,%(black)%)%)%,%
%BGColor,%(%else-then(%BGColor%,%(lightgrey)%)%)%,%
%HoverFG,%(%else-then(%HoverFG%,%(%FGColor%)%)%)%,%
%HoverBG,%(%else-then(%HoverBG%,%(%BGColor%)%)%)%,%
%Items,%(%else-then(%Items%,%(Home;About;Contact)%)%)%,%
%ItemFG,%(%else-then(%ItemFG%,%(black)%)%)%,%
%ItemBG,%(%else-then(%ItemBG%,%(#f1f1f1)%)%)%,%
%ItemHoverFG,%(%else-then(%ItemHoverFG%,%(%ItemFG%)%)%)%,%
%ItemHoverBG,%(%else-then(%ItemHoverBG%,%(#e1e1e1)%)%)%,%
%%(
<style>
.dropdown-button%Name% {
  background-color: %BGColor%;
  color: %FGColor%;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}
.dropdown-button%Name%:hover, .dropdown-button%Name%:focus {
  background-color: %HoverBG%;
  color: %HoverFG%;
}
.dropdown%Name% {
  float: right;
  position: relative;
  display: inline-block;
}
.dropdown-content%Name% {
  display: none;
  position: absolute;
  color: %ItemFG%;
  background-color: %ItemBG%;
  font-family: Arial;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  right: 0;
  z-index: 1;
}
.dropdown-content%Name% a {
  color: %ItemFG%;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdown%Name% a:hover {
  color: %ItemHoverFG%;
  background-color: %ItemHoverBG%;
}
.show {
  display: block;
}
</style>
<script>
function onClickDropdown%Name%() {
  document.getElementById("idDropdown%Name%").classList.toggle("show");
}
function onOutClickDropdown%Name%(event) {
  if (!event.target.matches('.dropdown-button%Name%')) {
    var dropdowns = document.getElementsByClassName("dropdown-content%Name%");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
window.onclick = function(event) {
  onOutClickDropdown%Name%(event);
}
</script>
<div class="dropdown%Name%">
  <button onclick="onClickDropdown%Name%()" class="dropdown-button%Name%">Dropdown</button>
  <div id="idDropdown%Name%" class="dropdown-content%Name%">%parse(%Items%,;,,,,%(%
%%with(%
%Label,%(%else-then(%Label%,%(%else-then(%left(%Item%,:)%,%Item%)%)%)%)%,%
%Location,%(%else-then(%Location%,%(%else-then(%right-of-left(%Item%,:)%,#%Item%)%)%)%)%,%
%%(
     <a href="%Location%">%Label%</a>)%)%%
%)%,Item)%
  </div>
</div>
)%)%