    <div class="container home-container">
        <section class="welcome">
            <div class="row">
                <div class="col-md-12">
                <% if $WelcomeImage %>
                    <% if $VideoLink %>
                    <a href="$VideoLink" data-toggle="lightbox" data-width="1280">
                    <% end_if %>
                        <img class="welcome-image" src="$WelcomeImage.SetWidth(1651).URL">
                        <div class="welcome-content">$Content</div>
                    <% if $VideoLink %>
                        <img class="icon-play" src="$ThemeDir/images/icon-play.png">
                    </a>
                    <% end_if %>
                <% end_if %>
                </div>
            </div>
        </section>
        
        <section class="boxes">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <a class="box-wrapper" href="<% if $Box1Link == "" %>$BoxDefault("Box1Link")<% else %>$Box1Link<% end_if %>">
                        <div class='slides'></div>
                        <figure>
                            <img class="box-1-image" src="$ThemeDir/images/home_box_1.jpg">
                            <figcaption class="title"><% if $Box1Title == "" %>$BoxDefault("Box1Title")<% else %>$Box1Title<% end_if %></figcaption>
                        </figure>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <a class="box-wrapper" href="<% if $Box2Link == "" %>$BoxDefault("Box2Link")<% else %>$Box2Link<% end_if %>">
                        <div class='slides'></div>
                        <figure>
                            <img class="box-2-image" src="$ThemeDir/images/home_box_2.jpg">
                            <figcaption class="title"><% if $Box2Title == "" %>$BoxDefault("Box2Title")<% else %>$Box2Title<% end_if %></figcaption>
                        </figure>
                    </a>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <a class="box-wrapper" href="<% if $Box3Link == "" %>$BoxDefault("Box3Link")<% else %>$Box3Link<% end_if %>">
                        <div class='slides'></div>
                        <figure>
                            <img class="box-3-image" src="$ThemeDir/images/home_box_3.jpg">
                            <figcaption class="title"><% if $Box3Title == "" %>$BoxDefault("Box3Title")<% else %>$Box3Title<% end_if %></figcaption>
                        </figure>
                    </a>
                </div>
            </div>
        </section>
        
        <section class="appointment">
            <div class="row">
                $AppointmentContent
                <a href="$AppointmentLink" class="appointment-link">Book Appointment</a>
            </div>
        </section>
        
        <section class="mammography">
            <div class="row">
                <div class="col-md-6">
                    $MammographyContent
                </div>
                <div class="col-md-6 mammography-right">
                    $MammographyRightContent
                </div>
            </div>
        </section>
    </div>
