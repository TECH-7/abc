<?php
class SiteConfigExtension extends DataExtension {
    
    private static $db = array(
        'FacebookLink' => 'Varchar(255)',
        'InstagramLink' => 'Varchar(255)',
        
        'Phone' => 'Varchar',
        'Email' => 'Varchar',
        'Address' => 'Text',
    );
    
    private static $has_one = array(
        'HeaderLogo' => 'Image',
        'FooterLogo' => 'Image',
    );    
    
    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldsToTab('Root.Main', array(
            $headerLogoUploader = UploadField::create('HeaderLogo', 'Header Logo'),
            $footerLogoUploader = UploadField::create('FooterLogo', 'Footer Logo'),
        ));
        $headerLogoUploader->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        $footerLogoUploader->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        
        $fields->addFieldsToTab('Root.Contact', array(
            TextField::create('Phone', 'Phone displayed in Footer'),
            EmailField::create('Email', 'Email displayed in Footer'),
            TextField::create('Address', 'Address displayed in Footer'),
        ));

        $fields->addFieldsToTab('Root.Social', array(
            TextField::create('FacebookLink', 'Facebook'),
            TextField::create('InstagramLink', 'Instagram'),
        ));

    }
}


