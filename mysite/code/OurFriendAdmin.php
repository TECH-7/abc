<?php
class OurFriendAdmin extends ModelAdmin {
    
    private static $menu_title = 'Our Friends';
    
    private static $url_segment = 'our-friends';
    
    private static $managed_models = array(
        'OurFriend'    
    );
    
    //private static $menu_icon = 'mysite/icons/ourfriend.png';
}

