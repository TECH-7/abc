<footer class="footer" role="contentinfo">
    <section class="our-friends">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <header>
                        <h1>Our Friends</h1>
                    </header>
                    <section class="our-friends-loop">
                    <% loop $OurFriends %>
                        <div class="item<% if $First %> first<% end_if %>" style="width: $Top.OurFriendsWidth;">
                            <a href="$Link" alt="$Title" title="$Title" target="_blank">$Logo</a>
                        </div>
                    <% end_loop %>
                    </section>
                </div>
            </div>
        </div>
    </section>     

    <section class="site-info">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <header>
                        <h1>Get in touch</h1>
                    </header>
                    <ul>
                        <li class="row first">
                            <div class="col-xs-2 cell-label">Phone</div>
                            <div class="col-xs-10 cell-value"><a href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></div>
                        </li>
                        <li class="row">
                            <div class="col-xs-2 cell-label">Email</div>
                            <div class="col-xs-10 cell-value cell-value-email"><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></div>
                        </li>
                        <li class="row">
                            <div class="col-xs-2 cell-label">Address</div>
                            <div class="col-xs-10 cell-value"><address>$SiteConfig.Address</address></div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <header>
                        <h1>Follow Us</h1>
                    </header>
                    <ul>
                        <% if $SiteConfig.FacebookLink %>
                        <li class="row first">
                            <div class="col-xs-11 cell-label"><a href="$SiteConfig.FacebookLink" target="_blank">Get our updates on Facebook</a></div>
                            <div class="col-xs-1 cell-value"><a href="$SiteConfig.FacebookLink" target="_blank"><img src="$ThemeDir/images/icon-facebook.png"></a></div>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.InstagramLink %>
                        <li class="row">
                            <div class="col-xs-11 cell-label"><a href="$SiteConfig.InstagramLink" target="_blank">Get our updates on Instagram</a></div>
                            <div class="col-xs-1 cell-value"><a href="$SiteConfig.InstagramLink" target="_blank"><img src="$ThemeDir/images/icon-instagram.png"></a></div>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.FacebookLink == '' %>
                        <li class="row">
                            <div class="col-xs-11 cell-label">&#160;</div>
                            <div class="col-xs-1 cell-value">&#160;</div>
                        </li>
                        <% end_if %>
                        <% if $SiteConfig.InstagramLink == '' %>
                        <li class="row">
                            <div class="col-xs-11 cell-label">&#160;</div>
                            <div class="col-xs-1 cell-value">&#160;</div>
                        </li>
                        <% end_if %>
                        <li class="row">
                            <div class="col-xs-11 cell-label">&#160;</div>
                            <div class="col-xs-1 cell-value">&#160;</div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <header>
                        <h1>ABC Newsletter</h1>
                    </header>
                    <form id="footer-search">
                        <ul>
                            <li class="row first">
                                <div>Signup to recieve our email newsletter</div>
                            </li>
                            <li class="row">
                                <div class="col-xs-12 cell-form"><input name="name" placeholder="Name"></div>
                            </li>
                            <li class="row">
                                <div class="col-xs-6 cell-form"><input name="Email" placeholder="Email"></div>
                                <div class="col-xs-6 cell-form"><input type="submit" value="Sign Up"></div>
                            </li>
                        </ul>
                    </form>
                </div>            
            </div>
        </div>
    </section>
    
    <section class="last-section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-3">
                    <a href="$BaseHref" class="brand" rel="home">
                        <% if $SiteConfig.FooterLogo %>
                            <img class="logo" src="$SiteConfig.FooterLogo.URL" alt="$SiteConfig.Title">
                        <% else %>
                            <h1>$SiteConfig.Title</h1>
                        <% end_if %>      
                    </a>
                </div>
                <div class="col-xs-12 col-md-5 footer-nav-col">
                    <% include Navigation %>
                </div>
                <div class="clearfix visible-xs-block"></div>
                <div class="col-xs-12 col-md-4 copyright">
                    &copy; $CurrentYear $SiteConfig.Title All Rights Reserved.
                </div>
            </div>

    </section>
</footer>