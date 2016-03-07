<?php
class HomePage extends Page {
    
    private static $db = array (
        'VideoLink' => 'Varchar(255)',
        'AppointmentContent' => 'HTMLText',
        'AppointmentLink' => 'Varchar(255)',
        'Box1Title' => 'Varchar',
        'Box1Link' => 'Varchar(255)',
        'Box2Title' => 'Varchar',
        'Box2Link' => 'Varchar(255)',
        'Box3Title' => 'Varchar',
        'Box3Link' => 'Varchar(255)',
        'MammographyContent' => 'HTMLText',
        'MammographyRightContent' => 'HTMLText',
    );
    
    private static $has_one = array (
        'WelcomeImage' => 'Image',
    );
    
    public function getCMSFields() {
        $fields = parent::getCMSFields();

        
        $fields->fieldByName('Root.Main.Content')->setTitle('Welcome Content');
        $fields->addFieldToTab('Root.Main', TextField::create('VideoLink', 'Video Embed Link')
                ->setDescription("Use 'http://player.vimeo.com/[Video ID]' or 'http://youtu.be/[Video ID]'"), 'Content');
        $fields->addFieldToTab('Root.Main', $welcomeImageUploader = UploadField::create('WelcomeImage', 'Welcome Image'), 'VideoLink');
        $welcomeImageUploader->getValidator()->setAllowedExtensions(array('png','gif','jpg','jpeg'));
        
        $fields->addFieldToTab('Root.Main', TextField::create('AppointmentLink', 'Book Appointment Link'), 'Metadata');
        $fields->addFieldToTab('Root.Main', HtmlEditorField::create('AppointmentContent', 'Appointment Content')
                ->setDescription('Above Book Appoinment Button')
            ,'AppointmentLink');
        
        $fields->addFieldToTab(
            'Root.Main',
            FieldGroup::create(
                TextField::create('Box1Title', "Title (Default: \"{$this->BoxDefault('Box1Title')}\")")
                    ->setMaxLength(50),
                TextField::create('Box1Link', "Link (Default: \"{$this->BoxDefault('Box1Link')}\")")
            )->setTitle('Link Box 1'),
            'Metadata'
        );
        $fields->addFieldToTab(
            'Root.Main',
            FieldGroup::create(
                TextField::create('Box2Title', "Title (Default: \"{$this->BoxDefault('Box2Title')}\")")
                    ->setMaxLength(50),
                TextField::create('Box2Link', "Link (Default: \"{$this->BoxDefault('Box2Link')}\")")
            )->setTitle('Link Box 2'),
            'Metadata'
        );
        $fields->addFieldToTab(
            'Root.Main',
            FieldGroup::create(
                TextField::create('Box3Title', "Title (Default: \"{$this->BoxDefault('Box3Title')}\")")
                    ->setMaxLength(50),
                TextField::create('Box3Link', "Link (Default: \"{$this->BoxDefault('Box3Link')}\")")
            )->setTitle('Link Box 3'),
            'Metadata'
        );                

        $fields->addFieldToTab('Root.Main'
            , HtmlEditorField::create('MammographyContent', 'Mammography Content Left')
            ,'Metadata');
        $fields->addFieldToTab('Root.Main'
            , HtmlEditorField::create('MammographyRightContent', 'Mammography Content Right')
            ,'Metadata');
        
        return $fields;
    }

    /**
     * Default Values for Box Links as per original design
     * 
     * @param type $type
     * @return boolean|string
     */    
    public function BoxDefault($type) {
        switch ($type) {
            case 'Box1Title':
                return 'Radiology';
            case 'Box1Link':
                return 'radiology';
            case 'Box2Title':
                return 'Surgery';
            case 'Box2Link':
                return 'surgery';
            case 'Box3Title':
                return 'Plastic Surgery';
            case 'Box3Link':
                return 'plastic-surgery';
            default:
                return false;
        }
    }    
    
}

class HomePage_Controller extends Page_Controller {
    
}
