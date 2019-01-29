<?php

namespace Huubl\ElementalTextImage\Models;

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Assets\Image;


use SilverStripe\ORM\DataExtension;
use Heyday\ColorPalette\Fields\ColorPaletteField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;

use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\Tab;
use SilverStripe\Forms\TabSet;
use SilverStripe\Forms\TextField;
use SilverStripe\Core\Config\Configurable;

class ElementTextImage extends BaseElement
{
    private static $icon = 'font-icon-block-content';

    public static $np = 'p-0';

    private static $db = [
        'Text' => 'HTMLText',
        'ImagePosition' => 'Enum("right,left","right")'
    ];

    private static $has_one = [
        'Image' => Image::class
    ];

    private static $owns = [
        'Image'
    ];

    private static $table_name = 'ElementTextImage';

    private static $singular_name = 'text/image element';

    private static $plural_name = 'text/image element';

    private static $description = 'text/image element';

    /**
     * Re-title the HTML field to Content
     *
     * {@inheritDoc}
     */
    public function getCMSFields()
    {
        $this->beforeUpdateCMSFields(function (FieldList $fields) {
            $fields->fieldByName('Root.Main.Text')->setTitle(_t(__CLASS__ . '.ContentLabel', 'Content'));
        });

        return parent::getCMSFields();
    }

    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName('ImagePosition');
        DropdownField::create('ImagePosition', 'ImagePosition', $this->owner->dbObject('ImagePosition')->enumValues(),'right');

    }

    public function getSummary()
    {
        return DBField::create_field('HTMLText', $this->Text)->Summary(20);
    }

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Text/Image');
    }

}
