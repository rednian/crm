<?php
// created: 2018-05-30 05:14:13
$dictionary["sp_salesInvoice"]["fields"]["sp_bank_sp_salesinvoice_1"] = array (
  'name' => 'sp_bank_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_bank_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_bank',
  'bean_name' => 'sp_bank',
  'vname' => 'LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE',
  'id_name' => 'sp_bank_sp_salesinvoice_1sp_bank_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_bank_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_bank_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE',
  'save' => true,
  'id_name' => 'sp_bank_sp_salesinvoice_1sp_bank_ida',
  'link' => 'sp_bank_sp_salesinvoice_1',
  'table' => 'sp_bank',
  'module' => 'sp_bank',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_bank_sp_salesinvoice_1sp_bank_ida"] = array (
  'name' => 'sp_bank_sp_salesinvoice_1sp_bank_ida',
  'type' => 'link',
  'relationship' => 'sp_bank_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
