<?php
// created: 2018-05-30 05:07:54
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2"] = array (
  'name' => 'sp_company_sp_salesinvoice_2',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_2',
  'source' => 'non-db',
  'module' => 'sp_Company',
  'bean_name' => 'sp_Company',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE',
  'id_name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2_name"] = array (
  'name' => 'sp_company_sp_salesinvoice_2_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE',
  'save' => true,
  'id_name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
  'link' => 'sp_company_sp_salesinvoice_2',
  'table' => 'sp_company',
  'module' => 'sp_Company',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2sp_company_ida"] = array (
  'name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_SALESINVOICE_TITLE',
);
