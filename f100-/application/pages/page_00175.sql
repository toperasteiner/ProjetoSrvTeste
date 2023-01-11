prompt --application/pages/page_00175
begin
--   Manifest
--     PAGE: 00175
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>175
,p_name=>unistr('sup chamado funcion\00E1rio ')
,p_alias=>unistr('SUP-CHAMADO-FUNCION\00C1RIO')
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function isNumber(event) {',
'  if (event) {',
'  var charCode = (event.which) ? event.which : event.keyCode;',
'  if (charCode != 190 && charCode > 31 && ',
'  (charCode < 48 || charCode > 57) && ',
'  (charCode < 96 || charCode > 105) && ',
'  (charCode < 37 || charCode > 40) && ',
'  charCode != 110 && charCode != 8 && charCode != 46 )',
'  return false;',
'  }',
'  return false;',
'}',
'/*',
'function mascara(o,f){',
'	v_obj=o',
'	v_fun=f',
'	setTimeout("execmascara()",1)',
'}',
'function execmascara(){',
'	v_obj.value=v_fun(v_obj.value)',
'}',
'function mdata(v){',
'	v=v.replace(/\D/g,"");',
'	v=v.replace(/(\d{2})(\d)/,"$1/$2");',
'	v=v.replace(/(\d{2})(\d)/,"$1/$2");',
'',
'	v=v.replace(/(\d{2})(\d{2})$/,"$1$2");',
'	return v;',
'}*/'))
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221229165303'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47450641776198769)
,p_plug_name=>unistr('Novo funcion\00E1rio')
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'ADM_CHAMADO_FUNCIONARIO'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30577921292250386)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30578793519250388)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_SALVAR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30578353263250388)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_GRAVAR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27286373888429432)
,p_name=>'P175_ANALISTA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_item_source_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_prompt=>'Analista'
,p_source=>'ANALISTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_GERAL_EH_ATIVO'
,p_lov=>'.'||wwv_flow_imp.id(70046243179736991)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27286403596429433)
,p_name=>'P175_ATENDENTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_item_source_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_prompt=>'Atendente'
,p_source=>'ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_GERAL_EH_ATIVO'
,p_lov=>'.'||wwv_flow_imp.id(70046243179736991)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30579137791250391)
,p_name=>'P175_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_item_source_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30579506229250394)
,p_name=>'P175_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_item_source_plug_id=>wwv_flow_imp.id(47450641776198769)
,p_prompt=>unistr('Funcion\00E1rio')
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUP_FUNCIONARIO'
,p_lov=>'SELECT ID, NOME||'' ''||SOBRENOME FROM ADM_USUARIO'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30591124963250427)
,p_name=>'Cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30577921292250386)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30591679033250430)
,p_event_id=>wwv_flow_imp.id(30591124963250427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30588333547250407)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(47450641776198769)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Apontamento de horas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30590715395250426)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30587967329250405)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(47450641776198769)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form sup apontamento de horas'
);
wwv_flow_imp.component_end;
end;
/
