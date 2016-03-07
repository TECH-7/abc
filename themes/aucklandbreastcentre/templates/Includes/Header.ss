<header class="header" role="banner">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-md-3 col-lg-3 header-brand-col">
            <a href="$BaseHref" class="navbar-brand" rel="home">
                <% if $SiteConfig.HeaderLogo %>
                    <img class="logo" src="$SiteConfig.HeaderLogo.URL" alt="$SiteConfig.Title">
                <% else %>
                    <h1>$SiteConfig.Title</h1>
                <% end_if %>      
            </a>
            </div>
            <div class="col-md-6 col-lg-5 header-nav-col">
                <% include Navigation %>
            </div>
            <div class="col-xs-12 col-md-3 col-lg-4 header-right">
                <a id="header-appointment" class="appointment-link" href="$AppointmentLink">Request an Appointment</a>
                <div id="header-search">
                    <div id="sb-search" class="sb-search">
                        <form>
                                <input class="sb-search-input" placeholder="Enter your search term..." type="text" value="" name="search" id="search">
                                <input class="sb-search-submit" type="submit" value="">
                                <span class="sb-icon-search"></span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
