<?php
// created: 2018-05-30 05:21:18
$dictionary["sp_salesInvoice"]["fields"]["accounts_sp_salesinvoice_1"] = array (
  'name' => 'accounts_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'accounts_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_sp_salesinvoice_1accounts_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["accounts_sp_salesinvoice_1_name"] = array (
  'name' => 'accounts_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_sp_salesinvoice_1accounts_ida',
  'link' => 'accounts_sp_salesinvoice_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["accounts_sp_salesinvoice_1accounts_ida"] = array (
  'name' => 'accounts_sp_salesinvoice_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
