<?php
// created: 2018-05-30 04:50:30
$dictionary["sp_salesInvoice"]["fields"]["sp_model_sp_salesinvoice_1"] = array (
  'name' => 'sp_model_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_model_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_model',
  'bean_name' => 'sp_model',
  'vname' => 'LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE',
  'id_name' => 'sp_model_sp_salesinvoice_1sp_model_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_model_sp_salesinvoice_1_name"] = array (
  'name' => 'sp_model_sp_salesinvoice_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE',
  'save' => true,
  'id_name' => 'sp_model_sp_salesinvoice_1sp_model_ida',
  'link' => 'sp_model_sp_salesinvoice_1',
  'table' => 'sp_model',
  'module' => 'sp_model',
  'rname' => 'name',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_model_sp_salesinvoice_1sp_model_ida"] = array (
  'name' => 'sp_model_sp_salesinvoice_1sp_model_ida',
  'type' => 'link',
  'relationship' => 'sp_model_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);
