<?php
$module_name = 'sp_salesInvoice';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 'date_entered',
          1 => 'date_modified',
        ),
        2 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'sp_site_sp_salesinvoice_1_name',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'sp_site_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_site_sp_salesinvoice_1_name',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'sp_site_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_model_sp_salesinvoice_1_name',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'sp_company_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_company_sp_salesinvoice_2_name',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'sp_invoicevehichle_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_charges_sp_salesinvoice_1_name',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'sp_promoname_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_financingterm_sp_salesinvoice_1_name',
          ),
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'sp_bank_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'sp_scheme_sp_salesinvoice_1_name',
          ),
        ),
        9 => 
        array (
          0 => 
          array (
            'name' => 'leads_sp_salesinvoice_1_name',
          ),
          1 => 
          array (
            'name' => 'accounts_sp_salesinvoice_1_name',
          ),
        ),
      ),
    ),
  ),
);
;
?>
