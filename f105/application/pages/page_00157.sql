prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
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
 p_id=>157
,p_name=>'sup cancelar chamado'
,p_alias=>'SUP-CANCELAR-CHAMADO'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P192_VIATRANSPORTE_CONTAINER" ).addClass( "is-active" );'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-header{',
'    background-color: white;',
'    border-radius: 10px !IMPORTANT;',
'}'))
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221215182253'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128847685928947277323)
,p_plug_name=>'Confirma o cancelamento?'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ADM_CHAMADO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71021776814118428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
,p_button_position=>'NEXT'
,p_button_condition=>'P157_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71022191379118428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14540471335723038)
,p_name=>'P157_EMAILS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14540880511723042)
,p_name=>'P157_NOME_USUARIO'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_item_default=>'SELECT UPPER(V(''APP_USER'')) FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71022559414118428)
,p_name=>'P157_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_item_source_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_prompt=>unistr('C\00F3digo do chamado')
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71022991696118429)
,p_name=>'P157_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_item_source_plug_id=>wwv_flow_imp.id(128847685928947277323)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'LV_SUP_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(69869843736583416)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71025521670118431)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71022191379118428)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71026072742118431)
,p_event_id=>wwv_flow_imp.id(71025521670118431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14540595970723039)
,p_name=>'New'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14540634625723040)
,p_event_id=>wwv_flow_imp.id(14540595970723039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P157_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P157_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P157_EMAILS IS NULL THEN',
'            :P157_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P157_EMAILS := :P157_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P157_ID'
,p_attribute_03=>'P157_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71025150383118430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Insert movimenta\00E7\00E3o')
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.MOVIMENTACAO_CANCELAR_CHAMADO(:P157_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71024329935118430)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cancelar chamado'
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.CANCELAR_CHAMADO(:P157_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14540756243723041)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia e-mail '
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P157_EMAILS.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(16678073984806088)
,p_attribute_12=>'{"ID_CHAMADO":"&P157_ID.","USUARIO_NOME":"&P157_NOME_USUARIO."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(71021776814118428)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71024753457118430)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71023940695118429)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(128847685928947277323)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Incluir conte\00FAdo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
