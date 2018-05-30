<?php
 // created: 2018-05-30 05:07:54
$layout_defs["sp_Company"]["subpanel_setup"]['sp_company_sp_salesinvoice_2'] = array (
  'order' => 100,
  'module' => 'sp_salesInvoice',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_SALESINVOICE_TITLE',
  'get_subpanel_data' => 'sp_company_sp_salesinvoice_2',
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
