<?php
class OurFriend extends DataObject {

    private static $db = array(
        'Title' => 'Varchar',
        'Link' => 'Varchar(255)',
    );

    private static $has_one = array(
        'Logo' => 'Image'
    );
    
    private static $summary_fields = array(
        'Logo.CMSThumbnail' => '', // Will use default thumb size (no need to write own func)
        'Title' => 'Title',
        'Link' => 'URL',
    );
    
    /*
    public function getGridThumbnail() {
        if ($this->Logo()->exists()) {
            return $this->Logo()->SetWidth(100);
        }
        return '(no image)';
    }
     */
    
    public function getCMSActions() {
        // New separate admin for this obj
        $fields = FieldList::create(TabSet::create('Root'));
            
        $fields->addFieldsToTab('Root.Main', array(            
            TextField::create('Title')->setMaxLength(50),
            TextField::create('Link'),
            $uploader = UploadField::create('Logo'),
        ));
        
        $uploader->setFolderName('ourstory-logos');
        $uploader->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        
        return $fields;
    }    
}