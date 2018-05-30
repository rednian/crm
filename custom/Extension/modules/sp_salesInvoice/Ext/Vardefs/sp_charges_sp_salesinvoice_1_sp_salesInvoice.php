<?php
// created: 2018-05-30 05:10:06
$dictionary["sp_salesInvoice"]["fields"]["sp_charges_sp_salesinvoice_1"] = array (
  'name' => 'sp_charges_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_charges_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_Charges',
  'bean_name' => 'sp_Charges',
  'vname' => 'LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE',
  'id_name' => 'sp_charges_sp_salesinvoice_1sp_charges_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_charges_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_charges_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE',
  'save' => true,
  'id_name' => 'sp_charges_sp_salesinvoice_1sp_charges_ida',
  'link' => 'sp_charges_sp_salesinvoice_1',
  'table' => 'sp_charges',
  'module' => 'sp_Charges',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_charges_sp_salesinvoice_1sp_charges_ida"] = array (
  'name' => 'sp_charges_sp_salesinvoice_1sp_charges_ida',
  'type' => 'link',
  'relationship' => 'sp_charges_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
