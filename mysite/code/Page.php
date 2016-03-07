<?php

class Page extends SiteTree {

    private static $db = array(
    );
    private static $has_one = array(
    );
    
}

class Page_Controller extends ContentController {

    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init() {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements
        $ThemeDir = $this->ThemeDir();
        
        Requirements::CSS("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css");
        
        Requirements::javascript("https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js");
        Requirements::javascript("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"); 
        Requirements::javascript("$ThemeDir/javascript/ie10-viewport-bug-workaround.js"); 
        Requirements::javascript("$ThemeDir/javascript/script.js");
        
        Requirements::javascript("$ThemeDir/javascript/ekko-lightbox.min.js");
        Requirements::javascript("$ThemeDir/javascript/classie.js");
        Requirements::javascript("$ThemeDir/javascript/uisearch.js");
        Requirements::javascript("$ThemeDir/javascript/jquery.slicknav.min.js");
        Requirements::customScript(<<<JS
            new UISearch( document.getElementById( 'sb-search' ) );
            $(document).ready(function(){
                // delegate calls to data-toggle="lightbox"
                $(document).delegate('*[data-toggle="lightbox"]:not([data-gallery="navigateTo"])', 'click', function(event) {
                        event.preventDefault();
                        return $(this).ekkoLightbox({
                                onShown: function() {
                                        if (window.console) {
                                                return console.log('onShown event fired');
                                        }
                                },
                                onContentLoaded: function() {
                                        if (window.console) {
                                                return console.log('onContentLoaded event fired');
                                        }
                                },
                                onNavigate: function(direction, itemIndex) {
                                        if (window.console) {
                                                return console.log('Navigating '+direction+'. Current item: '+itemIndex);
                                        }
                                }
                        });
                });

                //Programatically call
                $('#open-image').click(function (e) {
                        e.preventDefault();
                        $(this).ekkoLightbox();
                });
                $('#open-youtube').click(function (e) {
                        e.preventDefault();
                        $(this).ekkoLightbox();
                });

                $(document).delegate('*[data-gallery="navigateTo"]', 'click', function(event) {
                        event.preventDefault();
                        return $(this).ekkoLightbox({
                                onShown: function() {
                                        var lb = this;
                                        $(lb.modal_content).on('click', '.modal-footer a#jumpit', function(e) {
                                                e.preventDefault();
                                                lb.navigateTo(2);
                                        });
                                        $(lb.modal_content).on('click', '.modal-footer a#closeit', function(e) {
                                                e.preventDefault();
                                                lb.close();
                                        });
                                }
                        });
                });                    
   
                $('.header .menu').slicknav();
            });            
JS
        );
    }
    
    public function OurFriends($limit = 7) {
        return OurFriend::get()->limit($limit);
    }
    
    /**
     * Percentage width CSS value for Our Friends layout
     * 
     * @param type $limit
     * @return string
     */
    public function OurFriendsWidth($limit = 7) {
        return round(100.0 / $this->OurFriends($limit)->Count(),4) . '%';
    }     
    
    public function CurrentYear() {
        return date('Y');
    }
}
