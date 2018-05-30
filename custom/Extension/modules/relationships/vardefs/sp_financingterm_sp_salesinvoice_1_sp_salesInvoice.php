<?php
// created: 2018-05-30 05:13:20
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1"] = array (
  'name' => 'sp_financingterm_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_financingterm_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_financingTerm',
  'bean_name' => 'sp_financingTerm',
  'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE',
  'id_name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_financingterm_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE',
  'save' => true,
  'id_name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
  'link' => 'sp_financingterm_sp_salesinvoice_1',
  'table' => 'sp_financingterm',
  'module' => 'sp_financingTerm',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1sp_financingterm_ida"] = array (
  'name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
  'type' => 'link',
  'relationship' => 'sp_financingterm_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
