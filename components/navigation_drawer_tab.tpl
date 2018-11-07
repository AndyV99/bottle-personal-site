% if active:
<a class="mdc-list-item mdc-list-item--activated" href="/{{link_to}}">
% else:
<a class="mdc-list-item" href="/{{link_to}}">
% end
    <i class="material-icons mdc-list-item__graphic">{{icon}}</i>
    <div class="mdc-list-item__text">{{label}}</div>
</a>
