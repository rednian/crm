<?php
// created: 2018-05-30 04:02:18
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'sp_salesInvoice',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'sp_salesInvoice',
    'width' => '5%',
    'default' => true,
  ),
  'sp_site_sp_salesinvoice_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE',
    'id' => 'SP_SITE_SP_SALESINVOICE_1SP_SITE_IDA',
    'width' => '10%',
    'default' => true,
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'sp_Site',
    'target_record_key' => 'sp_site_sp_salesinvoice_1sp_site_ida',
  ),
);