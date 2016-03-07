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
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td class="cell-label">Phone</td>
                                <td class="cell-value"><a href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></td>
                            </tr>
                            <tr>
                                <td class="cell-label">Email</td>
                                <td class="cell-value"><a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></td>
                            </tr>
                            <tr>
                                <td class="cell-label">Address</td>
                                <td class="cell-value"><address>$SiteConfig.Address</address></td>
                            </tr>
                            <tr>
                                <td class="cell-label">&#160;</td>
                                <td class="cell-value">&#160;</td>
                            </tr>                    
                        </table>
                    </div>
                </div>
                <div class="col-md-4">
                    <header>
                        <h1>Follow Us</h1>
                    </header>
                    <table class="table">
                        <% if $SiteConfig.FacebookLink %>
                        <tr>
                            <td class="cell-label"><a href="$SiteConfig.FacebookLink" target="_blank">Get our updates on Facebook</a></td>
                            <td class="cell-value"><a href="$SiteConfig.FacebookLink" target="_blank"><img src="$ThemeDir/images/icon-facebook.png"></a></td>
                        </tr>
                        <% end_if %>
                        <% if $SiteConfig.InstagramLink %>
                        <tr>
                            <td class="cell-label"><a href="$SiteConfig.InstagramLink" target="_blank">Get our updates on Instagram</a></td>
                            <td class="cell-value"><a href="$SiteConfig.InstagramLink" target="_blank"><img src="$ThemeDir/images/icon-instagram.png"></a></td>
                        </tr>
                        <% end_if %>
                        <% if $SiteConfig.FacebookLink == '' %>
                        <tr>
                            <td class="cell-label">&#160;</td>
                            <td class="cell-value">&#160;</td>
                        </tr>
                        <% end_if %>
                        <% if $SiteConfig.InstagramLink == '' %>
                        <tr>
                            <td class="cell-label">&#160;</td>
                            <td class="cell-value">&#160;</td>
                        </tr>
                        <% end_if %>
                        <tr>
                            <td class="cell-label">&#160;</td>
                            <td class="cell-value">&#160;</td>
                        </tr>
                        <tr>
                            <td class="cell-label">&#160;</td>
                            <td class="cell-value">&#160;</td>
                        </tr>                      
                    </table>
                </div>
                <div class="col-md-4">
                    <header>
                        <h1>ABC Newsletter</h1>
                    </header>
                    <form><table class="table" width="100%">
                        <tr>
                            <td colspan="2">Signup to recieve our email newsletter</td>
                        </tr>
                        <tr>
                            <td class="cell-form" colspan="2"><input name="name" placeholder="Name"></td>
                        </tr>
                        <tr>
                            <td class="cell-form" width="50%"><input name="Email" placeholder="Email"></td>
                            <td class="cell-form" width="50%"><input type="submit" value="Sign Up"></td>
                        </tr>
                    </table></form>
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