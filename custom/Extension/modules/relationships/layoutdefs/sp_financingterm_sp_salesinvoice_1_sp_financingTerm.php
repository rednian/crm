<?php
 // created: 2018-05-30 05:13:20
$layout_defs["sp_financingTerm"]["subpanel_setup"]['sp_financingterm_sp_salesinvoice_1'] = array (
  'order' => 100,
  'module' => 'sp_salesInvoice',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
  'get_subpanel_data' => 'sp_financingterm_sp_salesinvoice_1',
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
