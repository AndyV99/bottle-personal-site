<div class="mdc-drawer">
    <div class="mdc-drawer__header">
        <div class="mdc-drawer__title">Andrew Vorndran</div>
        <div class="mdc-drawer__subtitle">My Webpage</div>
    </div>

    <div class="mdc-list-divider"></div>

    <div class="mdc-drawer__content">
        <div class="mdc-list">
            % include('components/navigation_drawer_tab.tpl', active=(active_tab=='index'), link_to='', icon='home', label='Homepage')

            % include('components/navigation_drawer_tab.tpl', active=(active_tab=='projects'), link_to='projects', icon='code', label='Projects')

            % include('components/navigation_drawer_tab.tpl', active=(active_tab=='work'), link_to='work', icon='work', label='Work')

            % include('components/navigation_drawer_tab.tpl', active=(active_tab=='blog'), link_to='blog', icon='create', label='Blog')

        </div>
    </div>


</div>