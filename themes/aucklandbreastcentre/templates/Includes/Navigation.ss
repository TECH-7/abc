<nav class="primary">
    <ul class="menu">
    <% loop Menu(1) %>
    <% if Children %>
        <li class="$LinkingMode $FirstLast"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
            <ul class="sub-menu">
            <% loop Children %>
                <li><a href="$Link" title="$Title.XML" class="$LinkingMode"><span>$MenuTitle.XML</span></a></li>
            <% end_loop %>
            </ul>
        </li>
    <% else %>
        <li class="$LinkingMode $FirstLast"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
    <% end_if %>
    <% end_loop %>
    </ul>
</nav>
