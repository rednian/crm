<?php
// created: 2018-05-30 05:15:13
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1"] = array (
  'name' => 'sp_scheme_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_scheme_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_Scheme',
  'bean_name' => 'sp_Scheme',
  'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE',
  'id_name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_scheme_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE',
  'save' => true,
  'id_name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
  'link' => 'sp_scheme_sp_salesinvoice_1',
  'table' => 'sp_scheme',
  'module' => 'sp_Scheme',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1sp_scheme_ida"] = array (
  'name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
  'type' => 'link',
  'relationship' => 'sp_scheme_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
