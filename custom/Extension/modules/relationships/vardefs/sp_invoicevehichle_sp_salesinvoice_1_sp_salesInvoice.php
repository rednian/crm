<?php
// created: 2018-05-30 05:09:13
$dictionary["sp_salesInvoice"]["fields"]["sp_invoicevehichle_sp_salesinvoice_1"] = array (
  'name' => 'sp_invoicevehichle_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_invoicevehichle_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_invoiceVehichle',
  'bean_name' => 'sp_invoiceVehichle',
  'vname' => 'LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE',
  'id_name' => 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_invoicevehichle_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_invoicevehichle_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE',
  'save' => true,
  'id_name' => 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida',
  'link' => 'sp_invoicevehichle_sp_salesinvoice_1',
  'table' => 'sp_invoicevehichle',
  'module' => 'sp_invoiceVehichle',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida"] = array (
  'name' => 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida',
  'type' => 'link',
  'relationship' => 'sp_invoicevehichle_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
