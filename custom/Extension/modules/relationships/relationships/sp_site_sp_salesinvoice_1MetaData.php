<?php
// created: 2018-05-30 04:45:02
$dictionary["sp_site_sp_salesinvoice_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'sp_site_sp_salesinvoice_1' => 
    array (
      'lhs_module' => 'sp_Site',
      'lhs_table' => 'sp_site',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sp_site_sp_salesinvoice_1_c',
      'join_key_lhs' => 'sp_site_sp_salesinvoice_1sp_site_ida',
      'join_key_rhs' => 'sp_site_sp_salesinvoice_1sp_salesinvoice_idb',
    ),
  ),
  'table' => 'sp_site_sp_salesinvoice_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1sp_salesinvoice_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sp_site_sp_salesinvoice_1sp_site_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sp_site_sp_salesinvoice_1sp_salesinvoice_idb',
      ),
    ),
  ),
);