<?php

namespace ATW\ElementalTextImage\Models;

use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\Assets\Image;

class ElementTextImage extends BaseElement
{
    private static $icon = 'font-icon-block-content';

    private static $db = [
        'Text' => 'HTMLText'
    ];

    private static $has_one = [
        'Image' => Image::class
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
            $fields
                ->fieldByName('Root.Main.Text')
                ->setTitle(_t(__CLASS__ . '.ContentLabel', 'Content'));
        });
        return parent::getCMSFields();
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
