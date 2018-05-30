<?php
// created: 2018-05-30 05:19:37
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1"] = array (
  'name' => 'leads_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'leads_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_sp_salesinvoice_1leads_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1_name"] = array (
  'name' => 'leads_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE',
  'save' => true,
  'id_name' => 'leads_sp_salesinvoice_1leads_ida',
  'link' => 'leads_sp_salesinvoice_1',
  'table' => 'leads',
  'module' => 'Leads',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1leads_ida"] = array (
  'name' => 'leads_sp_salesinvoice_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
