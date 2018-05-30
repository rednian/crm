<?php
// created: 2018-05-30 05:07:54
$dictionary["sp_company_sp_salesinvoice_2"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'sp_company_sp_salesinvoice_2' => 
    array (
      'lhs_module' => 'sp_Company',
      'lhs_table' => 'sp_company',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'sp_company_sp_salesinvoice_2_c',
      'join_key_lhs' => 'sp_company_sp_salesinvoice_2sp_company_ida',
      'join_key_rhs' => 'sp_company_sp_salesinvoice_2sp_salesinvoice_idb',
    ),
  ),
  'table' => 'sp_company_sp_salesinvoice_2_c',
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
      'name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2sp_salesinvoice_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'sp_company_sp_salesinvoice_2sp_company_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'sp_company_sp_salesinvoice_2sp_salesinvoice_idb',
      ),
    ),
  ),
);