<?php
// created: 2018-05-30 04:45:02
$dictionary["sp_salesInvoice"]["fields"]["sp_site_sp_salesinvoice_1"] = array (
  'name' => 'sp_site_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_site_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_Site',
  'bean_name' => 'sp_Site',
  'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE',
  'id_name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_site_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_site_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE',
  'save' => true,
  'id_name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
  'link' => 'sp_site_sp_salesinvoice_1',
  'table' => 'sp_site',
  'module' => 'sp_Site',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_site_sp_salesinvoice_1sp_site_ida"] = array (
  'name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
  'type' => 'link',
  'relationship' => 'sp_site_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
