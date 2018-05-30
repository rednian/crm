<?php 
 $GLOBALS["dictionary"]["sp_salesInvoice"]=array (
  'table' => 'sp_salesinvoice',
  'audited' => true,
  'inline_edit' => true,
  'duplicate_merge' => true,
  'fields' => 
  array (
    'id' => 
    array (
      'name' => 'id',
      'vname' => 'LBL_ID',
      'type' => 'id',
      'required' => true,
      'reportable' => true,
      'comment' => 'Unique identifier',
      'inline_edit' => false,
    ),
    'name' => 
    array (
      'name' => 'name',
      'vname' => 'LBL_NAME',
      'type' => 'name',
      'link' => true,
      'dbType' => 'varchar',
      'len' => 255,
      'unified_search' => true,
      'full_text_search' => 
      array (
        'boost' => 3,
      ),
      'required' => true,
      'importable' => 'required',
      'duplicate_merge' => 'enabled',
      'merge_filter' => 'selected',
    ),
    'date_entered' => 
    array (
      'name' => 'date_entered',
      'vname' => 'LBL_DATE_ENTERED',
      'type' => 'datetime',
      'group' => 'created_by_name',
      'comment' => 'Date record created',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'date_modified' => 
    array (
      'name' => 'date_modified',
      'vname' => 'LBL_DATE_MODIFIED',
      'type' => 'datetime',
      'group' => 'modified_by_name',
      'comment' => 'Date record last modified',
      'enable_range_search' => true,
      'options' => 'date_range_search_dom',
      'inline_edit' => false,
    ),
    'modified_user_id' => 
    array (
      'name' => 'modified_user_id',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_MODIFIED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'group' => 'modified_by_name',
      'dbType' => 'id',
      'reportable' => true,
      'comment' => 'User who last modified record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'modified_by_name' => 
    array (
      'name' => 'modified_by_name',
      'vname' => 'LBL_MODIFIED_NAME',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'rname' => 'user_name',
      'table' => 'users',
      'id_name' => 'modified_user_id',
      'module' => 'Users',
      'link' => 'modified_user_link',
      'duplicate_merge' => 'disabled',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by' => 
    array (
      'name' => 'created_by',
      'rname' => 'user_name',
      'id_name' => 'modified_user_id',
      'vname' => 'LBL_CREATED',
      'type' => 'assigned_user_name',
      'table' => 'users',
      'isnull' => 'false',
      'dbType' => 'id',
      'group' => 'created_by_name',
      'comment' => 'User who created record',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'created_by_name' => 
    array (
      'name' => 'created_by_name',
      'vname' => 'LBL_CREATED',
      'type' => 'relate',
      'reportable' => false,
      'link' => 'created_by_link',
      'rname' => 'user_name',
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'created_by',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
      'importable' => 'false',
      'massupdate' => false,
      'inline_edit' => false,
    ),
    'description' => 
    array (
      'name' => 'description',
      'vname' => 'LBL_DESCRIPTION',
      'type' => 'text',
      'comment' => 'Full text of the note',
      'rows' => 6,
      'cols' => 80,
    ),
    'deleted' => 
    array (
      'name' => 'deleted',
      'vname' => 'LBL_DELETED',
      'type' => 'bool',
      'default' => '0',
      'reportable' => false,
      'comment' => 'Record deletion indicator',
    ),
    'created_by_link' => 
    array (
      'name' => 'created_by_link',
      'type' => 'link',
      'relationship' => 'sp_salesinvoice_created_by',
      'vname' => 'LBL_CREATED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'modified_user_link' => 
    array (
      'name' => 'modified_user_link',
      'type' => 'link',
      'relationship' => 'sp_salesinvoice_modified_user',
      'vname' => 'LBL_MODIFIED_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
    ),
    'assigned_user_id' => 
    array (
      'name' => 'assigned_user_id',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'vname' => 'LBL_ASSIGNED_TO_ID',
      'group' => 'assigned_user_name',
      'type' => 'relate',
      'table' => 'users',
      'module' => 'Users',
      'reportable' => true,
      'isnull' => 'false',
      'dbType' => 'id',
      'audited' => true,
      'comment' => 'User ID assigned to record',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_name' => 
    array (
      'name' => 'assigned_user_name',
      'link' => 'assigned_user_link',
      'vname' => 'LBL_ASSIGNED_TO_NAME',
      'rname' => 'user_name',
      'type' => 'relate',
      'reportable' => false,
      'source' => 'non-db',
      'table' => 'users',
      'id_name' => 'assigned_user_id',
      'module' => 'Users',
      'duplicate_merge' => 'disabled',
    ),
    'assigned_user_link' => 
    array (
      'name' => 'assigned_user_link',
      'type' => 'link',
      'relationship' => 'sp_salesinvoice_assigned_user',
      'vname' => 'LBL_ASSIGNED_TO_USER',
      'link_type' => 'one',
      'module' => 'Users',
      'bean_name' => 'User',
      'source' => 'non-db',
      'duplicate_merge' => 'enabled',
      'rname' => 'user_name',
      'id_name' => 'assigned_user_id',
      'table' => 'users',
    ),
    'SecurityGroups' => 
    array (
      'name' => 'SecurityGroups',
      'type' => 'link',
      'relationship' => 'securitygroups_sp_salesinvoice',
      'module' => 'SecurityGroups',
      'bean_name' => 'SecurityGroup',
      'source' => 'non-db',
      'vname' => 'LBL_SECURITYGROUPS',
    ),
    'accounts_sp_salesinvoice_1' => 
    array (
      'name' => 'accounts_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'accounts_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'Accounts',
      'bean_name' => 'Account',
      'vname' => 'LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE',
      'id_name' => 'accounts_sp_salesinvoice_1accounts_ida',
    ),
    'accounts_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'accounts_sp_salesinvoice_1accounts_ida' => 
    array (
      'name' => 'accounts_sp_salesinvoice_1accounts_ida',
      'type' => 'link',
      'relationship' => 'accounts_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'leads_sp_salesinvoice_1' => 
    array (
      'name' => 'leads_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'leads_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'Leads',
      'bean_name' => 'Lead',
      'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE',
      'id_name' => 'leads_sp_salesinvoice_1leads_ida',
    ),
    'leads_sp_salesinvoice_1_name' => 
    array (
      'name' => 'leads_sp_salesinvoice_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE',
      'save' => true,
      'id_name' => 'leads_sp_salesinvoice_1leads_ida',
      'link' => 'leads_sp_salesinvoice_1',
      'table' => 'leads',
      'module' => 'Leads',
      'rname' => 'name',
      'db_concat_fields' => 
      array (
        0 => 'first_name',
        1 => 'last_name',
      ),
    ),
    'leads_sp_salesinvoice_1leads_ida' => 
    array (
      'name' => 'leads_sp_salesinvoice_1leads_ida',
      'type' => 'link',
      'relationship' => 'leads_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_bank_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_bank_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_bank_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_bank',
      'bean_name' => 'sp_bank',
      'vname' => 'LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE',
      'id_name' => 'sp_bank_sp_salesinvoice_1sp_bank_ida',
    ),
    'sp_bank_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_bank_sp_salesinvoice_1sp_bank_ida' => 
    array (
      'name' => 'sp_bank_sp_salesinvoice_1sp_bank_ida',
      'type' => 'link',
      'relationship' => 'sp_bank_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_charges_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_charges_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_charges_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_Charges',
      'bean_name' => 'sp_Charges',
      'vname' => 'LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE',
      'id_name' => 'sp_charges_sp_salesinvoice_1sp_charges_ida',
    ),
    'sp_charges_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_charges_sp_salesinvoice_1sp_charges_ida' => 
    array (
      'name' => 'sp_charges_sp_salesinvoice_1sp_charges_ida',
      'type' => 'link',
      'relationship' => 'sp_charges_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_company_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_company_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_Company',
      'bean_name' => 'sp_Company',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE',
      'id_name' => 'sp_company_sp_salesinvoice_1sp_company_ida',
    ),
    'sp_company_sp_salesinvoice_1_name' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE',
      'save' => true,
      'id_name' => 'sp_company_sp_salesinvoice_1sp_company_ida',
      'link' => 'sp_company_sp_salesinvoice_1',
      'table' => 'sp_company',
      'module' => 'sp_Company',
      'rname' => 'name',
    ),
    'sp_company_sp_salesinvoice_1sp_company_ida' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_1sp_company_ida',
      'type' => 'link',
      'relationship' => 'sp_company_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_company_sp_salesinvoice_2' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2',
      'type' => 'link',
      'relationship' => 'sp_company_sp_salesinvoice_2',
      'source' => 'non-db',
      'module' => 'sp_Company',
      'bean_name' => 'sp_Company',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE',
      'id_name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
    ),
    'sp_company_sp_salesinvoice_2_name' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE',
      'save' => true,
      'id_name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
      'link' => 'sp_company_sp_salesinvoice_2',
      'table' => 'sp_company',
      'module' => 'sp_Company',
      'rname' => 'name',
    ),
    'sp_company_sp_salesinvoice_2sp_company_ida' => 
    array (
      'name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
      'type' => 'link',
      'relationship' => 'sp_company_sp_salesinvoice_2',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_financingterm_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_financingterm_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_financingterm_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_financingTerm',
      'bean_name' => 'sp_financingTerm',
      'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE',
      'id_name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
    ),
    'sp_financingterm_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida' => 
    array (
      'name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
      'type' => 'link',
      'relationship' => 'sp_financingterm_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_invoicevehichle_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_invoicevehichle_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_invoicevehichle_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_invoiceVehichle',
      'bean_name' => 'sp_invoiceVehichle',
      'vname' => 'LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE',
      'id_name' => 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida',
    ),
    'sp_invoicevehichle_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida' => 
    array (
      'name' => 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida',
      'type' => 'link',
      'relationship' => 'sp_invoicevehichle_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_model_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_model_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_model_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_model',
      'bean_name' => 'sp_model',
      'vname' => 'LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE',
      'id_name' => 'sp_model_sp_salesinvoice_1sp_model_ida',
    ),
    'sp_model_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_model_sp_salesinvoice_1sp_model_ida' => 
    array (
      'name' => 'sp_model_sp_salesinvoice_1sp_model_ida',
      'type' => 'link',
      'relationship' => 'sp_model_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_promoname_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_promoname_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_promoname_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_promoName',
      'bean_name' => 'sp_promoName',
      'vname' => 'LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE',
      'id_name' => 'sp_promoname_sp_salesinvoice_1sp_promoname_ida',
    ),
    'sp_promoname_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_promoname_sp_salesinvoice_1sp_promoname_ida' => 
    array (
      'name' => 'sp_promoname_sp_salesinvoice_1sp_promoname_ida',
      'type' => 'link',
      'relationship' => 'sp_promoname_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_scheme_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_scheme_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_scheme_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_Scheme',
      'bean_name' => 'sp_Scheme',
      'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE',
      'id_name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
    ),
    'sp_scheme_sp_salesinvoice_1_name' => 
    array (
      'name' => 'sp_scheme_sp_salesinvoice_1_name',
      'type' => 'relate',
      'source' => 'non-db',
      'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE',
      'save' => true,
      'id_name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
      'link' => 'sp_scheme_sp_salesinvoice_1',
      'table' => 'sp_scheme',
      'module' => 'sp_Scheme',
      'rname' => 'name',
    ),
    'sp_scheme_sp_salesinvoice_1sp_scheme_ida' => 
    array (
      'name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
      'type' => 'link',
      'relationship' => 'sp_scheme_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
    'sp_site_sp_salesinvoice_1' => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1',
      'type' => 'link',
      'relationship' => 'sp_site_sp_salesinvoice_1',
      'source' => 'non-db',
      'module' => 'sp_Site',
      'bean_name' => 'sp_Site',
      'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE',
      'id_name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
    ),
    'sp_site_sp_salesinvoice_1_name' => 
    array (
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
    ),
    'sp_site_sp_salesinvoice_1sp_site_ida' => 
    array (
      'name' => 'sp_site_sp_salesinvoice_1sp_site_ida',
      'type' => 'link',
      'relationship' => 'sp_site_sp_salesinvoice_1',
      'source' => 'non-db',
      'reportable' => false,
      'side' => 'right',
      'vname' => 'LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
    ),
  ),
  'relationships' => 
  array (
    'sp_salesinvoice_modified_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'modified_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'sp_salesinvoice_created_by' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'created_by',
      'relationship_type' => 'one-to-many',
    ),
    'sp_salesinvoice_assigned_user' => 
    array (
      'lhs_module' => 'Users',
      'lhs_table' => 'users',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'assigned_user_id',
      'relationship_type' => 'one-to-many',
    ),
    'securitygroups_sp_salesinvoice' => 
    array (
      'lhs_module' => 'SecurityGroups',
      'lhs_table' => 'securitygroups',
      'lhs_key' => 'id',
      'rhs_module' => 'sp_salesInvoice',
      'rhs_table' => 'sp_salesinvoice',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'securitygroups_records',
      'join_key_lhs' => 'securitygroup_id',
      'join_key_rhs' => 'record_id',
      'relationship_role_column' => 'module',
      'relationship_role_column_value' => 'sp_salesInvoice',
    ),
  ),
  'optimistic_locking' => true,
  'unified_search' => true,
  'indices' => 
  array (
    'id' => 
    array (
      'name' => 'sp_salesinvoicepk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
  ),
  'templates' => 
  array (
    'security_groups' => 'security_groups',
    'assignable' => 'assignable',
    'basic' => 'basic',
  ),
  'custom_fields' => false,
);