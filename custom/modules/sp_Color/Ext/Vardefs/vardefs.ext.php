<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2018-05-30 05:12:02
$dictionary["sp_Color"]["fields"]["sp_color_sp_color_1"] = array (
  'name' => 'sp_color_sp_color_1',
  'type' => 'link',
  'relationship' => 'sp_color_sp_color_1',
  'source' => 'non-db',
  'module' => 'sp_Color',
  'bean_name' => 'sp_Color',
  'vname' => 'LBL_SP_COLOR_SP_COLOR_1_FROM_SP_COLOR_L_TITLE',
  'id_name' => 'sp_color_sp_color_1sp_color_ida',
);
$dictionary["sp_Color"]["fields"]["sp_color_sp_color_1_name"] = array (
  'name' => 'sp_color_sp_color_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_SP_COLOR_SP_COLOR_1_FROM_SP_COLOR_L_TITLE',
  'save' => true,
  'id_name' => 'sp_color_sp_color_1sp_color_ida',
  'link' => 'sp_color_sp_color_1',
  'table' => 'sp_color',
  'module' => 'sp_Color',
  'rname' => 'name',
);
$dictionary["sp_Color"]["fields"]["sp_color_sp_color_1sp_color_ida"] = array (
  'name' => 'sp_color_sp_color_1sp_color_ida',
  'type' => 'link',
  'relationship' => 'sp_color_sp_color_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_SP_COLOR_SP_COLOR_1_FROM_SP_COLOR_R_TITLE',
);

?>