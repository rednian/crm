<?php
// created: 2018-05-30 05:11:04
$dictionary["sp_salesInvoice"]["fields"]["sp_promoname_sp_salesinvoice_1"] = array (
  'name' => 'sp_promoname_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_promoname_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_promoName',
  'bean_name' => 'sp_promoName',
  'vname' => 'LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE',
  'id_name' => 'sp_promoname_sp_salesinvoice_1sp_promoname_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_promoname_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_promoname_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE',
  'save' => true,
  'id_name' => 'sp_promoname_sp_salesinvoice_1sp_promoname_ida',
  'link' => 'sp_promoname_sp_salesinvoice_1',
  'table' => 'sp_promoname',
  'module' => 'sp_promoName',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_promoname_sp_salesinvoice_1sp_promoname_ida"] = array (
  'name' => 'sp_promoname_sp_salesinvoice_1sp_promoname_ida',
  'type' => 'link',
  'relationship' => 'sp_promoname_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
