<?php
 // created: 2018-05-30 04:45:02
$layout_defs["sp_Site"]["subpanel_setup"]['sp_site_sp_salesinvoice_1'] = array (
  'order' => 100,
  'module' => 'sp_salesInvoice',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
  'get_subpanel_data' => 'sp_site_sp_salesinvoice_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
