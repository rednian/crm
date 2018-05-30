<?php 
 //WARNING: The contents of this file are auto-generated


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


// created: 2018-05-30 05:19:37
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1"] = array (
  'name' => 'leads_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'leads_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'Leads',
  'bean_name' => 'Lead',
  'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE',
  'id_name' => 'leads_sp_salesinvoice_1leads_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1_name"] = array (
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
);
$dictionary["sp_salesInvoice"]["fields"]["leads_sp_salesinvoice_1leads_ida"] = array (
  'name' => 'leads_sp_salesinvoice_1leads_ida',
  'type' => 'link',
  'relationship' => 'leads_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_LEADS_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);


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


// created: 2018-05-30 04:51:38
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_1"] = array (
  'name' => 'sp_company_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_Company',
  'bean_name' => 'sp_Company',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE',
  'id_name' => 'sp_company_sp_salesinvoice_1sp_company_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_1_name"] = array (
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
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_1sp_company_ida"] = array (
  'name' => 'sp_company_sp_salesinvoice_1sp_company_ida',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);


// created: 2018-05-30 05:07:54
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2"] = array (
  'name' => 'sp_company_sp_salesinvoice_2',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_2',
  'source' => 'non-db',
  'module' => 'sp_Company',
  'bean_name' => 'sp_Company',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE',
  'id_name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2_name"] = array (
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
);
$dictionary["sp_salesInvoice"]["fields"]["sp_company_sp_salesinvoice_2sp_company_ida"] = array (
  'name' => 'sp_company_sp_salesinvoice_2sp_company_ida',
  'type' => 'link',
  'relationship' => 'sp_company_sp_salesinvoice_2',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_SALESINVOICE_TITLE',
);


// created: 2018-05-30 05:13:20
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1"] = array (
  'name' => 'sp_financingterm_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_financingterm_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_financingTerm',
  'bean_name' => 'sp_financingTerm',
  'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE',
  'id_name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1_name"] = array (
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
);
$dictionary["sp_salesInvoice"]["fields"]["sp_financingterm_sp_salesinvoice_1sp_financingterm_ida"] = array (
  'name' => 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida',
  'type' => 'link',
  'relationship' => 'sp_financingterm_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);


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


// created: 2018-05-30 05:15:13
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1"] = array (
  'name' => 'sp_scheme_sp_salesinvoice_1',
  'type' => 'link',
  'relationship' => 'sp_scheme_sp_salesinvoice_1',
  'source' => 'non-db',
  'module' => 'sp_Scheme',
  'bean_name' => 'sp_Scheme',
  'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE',
  'id_name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
);
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1_name"] = array (
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
);
$dictionary["sp_salesInvoice"]["fields"]["sp_scheme_sp_salesinvoice_1sp_scheme_ida"] = array (
  'name' => 'sp_scheme_sp_salesinvoice_1sp_scheme_ida',
  'type' => 'link',
  'relationship' => 'sp_scheme_sp_salesinvoice_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SALESINVOICE_TITLE',
);


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

?>