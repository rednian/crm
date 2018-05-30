

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
{$PAGINATION}
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=sp_salesInvoice'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sp_salesInvoice", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
{$PAGINATION}
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='sp_salesInvoice'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

<span class="required">*</span>
{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if}  
<input type='text' name='{$fields.name.name}' 
id='{$fields.name.name}' size='30' 
maxlength='255' 
value='{$value}' title=''      >
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ASSIGNED_TO_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.assigned_user_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.assigned_user_name.name}" size="" value="{$fields.assigned_user_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.assigned_user_name.id_name}" 
id="{$fields.assigned_user_name.id_name}" 
value="{$fields.assigned_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.assigned_user_name.name}" id="btn_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.assigned_user_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.assigned_user_name.name}" id="btn_clr_{$fields.assigned_user_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.assigned_user_name.name}', '{$fields.assigned_user_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.assigned_user_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DESCRIPTION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description"  >
{counter name="panelFieldCount" print=false}

{if empty($fields.description.value)}
{assign var="value" value=$fields.description.default_value }
{else}
{assign var="value" value=$fields.description.value }
{/if}
<textarea  id='{$fields.description.name}' name='{$fields.description.name}'
rows="6"
cols="80"
title='' tabindex="0" 
 >{$value}</textarea>
{literal}{/literal}
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_MODIFIED_NAME">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_MODIFIED_NAME' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="modified_by_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.modified_by_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.modified_by_name.name}" size="" value="{$fields.modified_by_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.modified_by_name.id_name}" 
id="{$fields.modified_by_name.id_name}" 
value="{$fields.modified_user_id.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.modified_by_name.name}" id="btn_{$fields.modified_by_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_USERS_LABEL"}"
onclick='open_popup(
"{$fields.modified_by_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"modified_user_id","user_name":"modified_by_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.modified_by_name.name}" id="btn_clr_{$fields.modified_by_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.modified_by_name.name}', '{$fields.modified_by_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_USERS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.modified_by_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DATE_MODIFIED">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_MODIFIED' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetime" field="date_modified"  >
{counter name="panelFieldCount" print=false}


{if strlen($fields.date_modified.value) <= 0}
{assign var="value" value=$fields.date_modified.default_value }
{else}
{assign var="value" value=$fields.date_modified.value }
{/if}
<span class="sugar_field" id="{$fields.date_modified.name}">{$value}</span>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_site_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_site_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_site_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_site_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_site_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_site_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_site_sp_salesinvoice_1sp_site_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_site_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_site_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_site_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_site_sp_salesinvoice_1sp_site_ida","name":"sp_site_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_site_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_site_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_site_sp_salesinvoice_1_name.name}', '{$fields.sp_site_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_site_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_site_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_site_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_site_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_site_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_site_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_site_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_site_sp_salesinvoice_1sp_site_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_site_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_site_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_site_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_site_sp_salesinvoice_1sp_site_ida","name":"sp_site_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_site_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_site_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_site_sp_salesinvoice_1_name.name}', '{$fields.sp_site_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_site_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_model_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_model_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_model_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_model_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_model_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_model_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_model_sp_salesinvoice_1sp_model_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_model_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_model_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_model_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_model_sp_salesinvoice_1sp_model_ida","name":"sp_model_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_model_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_model_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_model_sp_salesinvoice_1_name.name}', '{$fields.sp_model_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_model_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_company_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_company_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_company_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_company_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_company_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_company_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_company_sp_salesinvoice_1sp_company_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_company_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_company_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_company_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_company_sp_salesinvoice_1sp_company_ida","name":"sp_company_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_company_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_company_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_company_sp_salesinvoice_1_name.name}', '{$fields.sp_company_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_company_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_company_sp_salesinvoice_2_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_company_sp_salesinvoice_2_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_company_sp_salesinvoice_2_name.name}" size="" value="{$fields.sp_company_sp_salesinvoice_2_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_company_sp_salesinvoice_2_name.id_name}" 
id="{$fields.sp_company_sp_salesinvoice_2_name.id_name}" 
value="{$fields.sp_company_sp_salesinvoice_2sp_company_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_company_sp_salesinvoice_2_name.name}" id="btn_{$fields.sp_company_sp_salesinvoice_2_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_company_sp_salesinvoice_2_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_company_sp_salesinvoice_2sp_company_ida","name":"sp_company_sp_salesinvoice_2_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_company_sp_salesinvoice_2_name.name}" id="btn_clr_{$fields.sp_company_sp_salesinvoice_2_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_company_sp_salesinvoice_2_name.name}', '{$fields.sp_company_sp_salesinvoice_2_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_company_sp_salesinvoice_2_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_invoicevehichle_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida","name":"sp_invoicevehichle_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}', '{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_invoicevehichle_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_charges_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_charges_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_charges_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_charges_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_charges_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_charges_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_charges_sp_salesinvoice_1sp_charges_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_charges_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_charges_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_charges_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_charges_sp_salesinvoice_1sp_charges_ida","name":"sp_charges_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_charges_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_charges_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_charges_sp_salesinvoice_1_name.name}', '{$fields.sp_charges_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_charges_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_promoname_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_promoname_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_promoname_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_promoname_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_promoname_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_promoname_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_promoname_sp_salesinvoice_1sp_promoname_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_promoname_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_promoname_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_promoname_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_promoname_sp_salesinvoice_1sp_promoname_ida","name":"sp_promoname_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_promoname_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_promoname_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_promoname_sp_salesinvoice_1_name.name}', '{$fields.sp_promoname_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_promoname_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_financingterm_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_financingterm_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_financingterm_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_financingterm_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_financingterm_sp_salesinvoice_1sp_financingterm_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_financingterm_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_financingterm_sp_salesinvoice_1sp_financingterm_ida","name":"sp_financingterm_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_financingterm_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_financingterm_sp_salesinvoice_1_name.name}', '{$fields.sp_financingterm_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_financingterm_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_bank_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_bank_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_bank_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_bank_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_bank_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_bank_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_bank_sp_salesinvoice_1sp_bank_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_bank_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_bank_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_bank_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_bank_sp_salesinvoice_1sp_bank_ida","name":"sp_bank_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_bank_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_bank_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_bank_sp_salesinvoice_1_name.name}', '{$fields.sp_bank_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_bank_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="sp_scheme_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.sp_scheme_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.sp_scheme_sp_salesinvoice_1_name.name}" size="" value="{$fields.sp_scheme_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.sp_scheme_sp_salesinvoice_1_name.id_name}" 
id="{$fields.sp_scheme_sp_salesinvoice_1_name.id_name}" 
value="{$fields.sp_scheme_sp_salesinvoice_1sp_scheme_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.sp_scheme_sp_salesinvoice_1_name.name}" id="btn_{$fields.sp_scheme_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.sp_scheme_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"sp_scheme_sp_salesinvoice_1sp_scheme_ida","name":"sp_scheme_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.sp_scheme_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.sp_scheme_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.sp_scheme_sp_salesinvoice_1_name.name}', '{$fields.sp_scheme_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.sp_scheme_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="leads_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.leads_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.leads_sp_salesinvoice_1_name.name}" size="" value="{$fields.leads_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.leads_sp_salesinvoice_1_name.id_name}" 
id="{$fields.leads_sp_salesinvoice_1_name.id_name}" 
value="{$fields.leads_sp_salesinvoice_1leads_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.leads_sp_salesinvoice_1_name.name}" id="btn_{$fields.leads_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_SELECT_BUTTON_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_SELECT_BUTTON_LABEL"}"
onclick='open_popup(
"{$fields.leads_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"leads_sp_salesinvoice_1leads_ida","name":"leads_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.leads_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.leads_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.leads_sp_salesinvoice_1_name.name}', '{$fields.leads_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_RELATE_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.leads_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE' module='sp_salesInvoice'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="accounts_sp_salesinvoice_1_name"  >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.accounts_sp_salesinvoice_1_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.accounts_sp_salesinvoice_1_name.name}" size="" value="{$fields.accounts_sp_salesinvoice_1_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.accounts_sp_salesinvoice_1_name.id_name}" 
id="{$fields.accounts_sp_salesinvoice_1_name.id_name}" 
value="{$fields.accounts_sp_salesinvoice_1accounts_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.accounts_sp_salesinvoice_1_name.name}" id="btn_{$fields.accounts_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_ACCOUNTS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_ACCOUNTS_LABEL"}"
onclick='open_popup(
"{$fields.accounts_sp_salesinvoice_1_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"accounts_sp_salesinvoice_1accounts_ida","name":"accounts_sp_salesinvoice_1_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.accounts_sp_salesinvoice_1_name.name}" id="btn_clr_{$fields.accounts_sp_salesinvoice_1_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_ACCOUNTS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.accounts_sp_salesinvoice_1_name.name}', '{$fields.accounts_sp_salesinvoice_1_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_ACCOUNTS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.accounts_sp_salesinvoice_1_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=sp_salesInvoice'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=sp_salesInvoice", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () {ldelim} initEditView(document.forms.EditView) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'accounts_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'leads_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_bank_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_charges_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_company_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_company_sp_salesinvoice_2_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_financingterm_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_invoicevehichle_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_model_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_promoname_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_scheme_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidate('EditView', 'sp_site_sp_salesinvoice_1_name', 'relate', false,'{/literal}{sugar_translate label='LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE' module='sp_salesInvoice' for_js=true}{literal}' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='sp_salesInvoice' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('EditView', 'modified_by_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='sp_salesInvoice' for_js=true}{literal}', 'modified_user_id' );
addToValidateBinaryDependency('EditView', 'accounts_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ACCOUNTS_SP_SALESINVOICE_1_FROM_ACCOUNTS_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'accounts_sp_salesinvoice_1accounts_ida' );
addToValidateBinaryDependency('EditView', 'leads_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_LEADS_SP_SALESINVOICE_1_FROM_LEADS_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'leads_sp_salesinvoice_1leads_ida' );
addToValidateBinaryDependency('EditView', 'sp_bank_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_BANK_SP_SALESINVOICE_1_FROM_SP_BANK_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_bank_sp_salesinvoice_1sp_bank_ida' );
addToValidateBinaryDependency('EditView', 'sp_charges_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_CHARGES_SP_SALESINVOICE_1_FROM_SP_CHARGES_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_charges_sp_salesinvoice_1sp_charges_ida' );
addToValidateBinaryDependency('EditView', 'sp_company_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_1_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_company_sp_salesinvoice_1sp_company_ida' );
addToValidateBinaryDependency('EditView', 'sp_company_sp_salesinvoice_2_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_COMPANY_SP_SALESINVOICE_2_FROM_SP_COMPANY_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_company_sp_salesinvoice_2sp_company_ida' );
addToValidateBinaryDependency('EditView', 'sp_financingterm_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_FINANCINGTERM_SP_SALESINVOICE_1_FROM_SP_FINANCINGTERM_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_financingterm_sp_salesinvoice_1sp_financingterm_ida' );
addToValidateBinaryDependency('EditView', 'sp_invoicevehichle_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_INVOICEVEHICHLE_SP_SALESINVOICE_1_FROM_SP_INVOICEVEHICHLE_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida' );
addToValidateBinaryDependency('EditView', 'sp_model_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_MODEL_SP_SALESINVOICE_1_FROM_SP_MODEL_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_model_sp_salesinvoice_1sp_model_ida' );
addToValidateBinaryDependency('EditView', 'sp_promoname_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_PROMONAME_SP_SALESINVOICE_1_FROM_SP_PROMONAME_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_promoname_sp_salesinvoice_1sp_promoname_ida' );
addToValidateBinaryDependency('EditView', 'sp_scheme_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_SCHEME_SP_SALESINVOICE_1_FROM_SP_SCHEME_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_scheme_sp_salesinvoice_1sp_scheme_ida' );
addToValidateBinaryDependency('EditView', 'sp_site_sp_salesinvoice_1_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='sp_salesInvoice' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_SP_SITE_SP_SALESINVOICE_1_FROM_SP_SITE_TITLE' module='sp_salesInvoice' for_js=true}{literal}', 'sp_site_sp_salesinvoice_1sp_site_ida' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_assigned_user_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['EditView_modified_by_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["modified_by_name","modified_user_id"],"required_list":["modified_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_site_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_Site"],"group":"or","field_list":["name","id"],"populate_list":["sp_site_sp_salesinvoice_1_name","sp_site_sp_salesinvoice_1sp_site_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_model_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_model"],"group":"or","field_list":["name","id"],"populate_list":["sp_model_sp_salesinvoice_1_name","sp_model_sp_salesinvoice_1sp_model_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_company_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_Company"],"group":"or","field_list":["name","id"],"populate_list":["sp_company_sp_salesinvoice_1_name","sp_company_sp_salesinvoice_1sp_company_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_company_sp_salesinvoice_2_name']={"form":"EditView","method":"query","modules":["sp_Company"],"group":"or","field_list":["name","id"],"populate_list":["sp_company_sp_salesinvoice_2_name","sp_company_sp_salesinvoice_2sp_company_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_invoicevehichle_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_invoiceVehichle"],"group":"or","field_list":["name","id"],"populate_list":["sp_invoicevehichle_sp_salesinvoice_1_name","sp_invoicevehichle_sp_salesinvoice_1sp_invoicevehichle_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_charges_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_Charges"],"group":"or","field_list":["name","id"],"populate_list":["sp_charges_sp_salesinvoice_1_name","sp_charges_sp_salesinvoice_1sp_charges_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_promoname_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_promoName"],"group":"or","field_list":["name","id"],"populate_list":["sp_promoname_sp_salesinvoice_1_name","sp_promoname_sp_salesinvoice_1sp_promoname_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_financingterm_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_financingTerm"],"group":"or","field_list":["name","id"],"populate_list":["sp_financingterm_sp_salesinvoice_1_name","sp_financingterm_sp_salesinvoice_1sp_financingterm_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_bank_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_bank"],"group":"or","field_list":["name","id"],"populate_list":["sp_bank_sp_salesinvoice_1_name","sp_bank_sp_salesinvoice_1sp_bank_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_sp_scheme_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["sp_Scheme"],"group":"or","field_list":["name","id"],"populate_list":["sp_scheme_sp_salesinvoice_1_name","sp_scheme_sp_salesinvoice_1sp_scheme_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_leads_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["Leads"],"group":"or","field_list":["name","id"],"populate_list":["leads_sp_salesinvoice_1_name","leads_sp_salesinvoice_1leads_ida"],"required_list":["parent_id"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"order":"name","limit":"30","no_match_text":"No Match"};sqs_objects['EditView_accounts_sp_salesinvoice_1_name']={"form":"EditView","method":"query","modules":["Accounts"],"group":"or","field_list":["name","id"],"populate_list":["EditView_accounts_sp_salesinvoice_1_name","accounts_sp_salesinvoice_1accounts_ida"],"conditions":[{"name":"name","op":"like_custom","end":"%","value":""}],"required_list":["accounts_sp_salesinvoice_1accounts_ida"],"order":"name","limit":"30","no_match_text":"No Match"};</script>{/literal}
