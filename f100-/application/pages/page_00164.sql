prompt --application/pages/page_00164
begin
--   Manifest
--     PAGE: 00164
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
 p_id=>164
,p_name=>'sup novo anexo'
,p_alias=>'SUP-NOVO-ANEXO'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P192_VIATRANSPORTE_CONTAINER" ).addClass( "is-active" );'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-header{',
'    background-color: white;',
'    border-radius: 10px !IMPORTANT;',
'}',
'',
'/*.t-Form--large .t-Form-itemWrapper .a-Button, .t-Form-fieldContainer--large .t-Form-itemWrapper .a-Button, .t-Form--large .t-Form-itemWrapper .oj-inputdatetime-input-trigger, .t-Form-fieldContainer--large .t-Form-itemWrapper .oj-inputdatetime-input'
||'-trigger, .t-Form--large .t-Form-itemWrapper .t-Form-helpButton, .t-Form-fieldContainer--large .t-Form-itemWrapper .t-Form-helpButton, .t-Form--large .apex-item-file--native::-webkit-file-upload-button, .t-Form-fieldContainer--large .apex-item-file--'
||'native::-webkit-file-upload-button {',
'    --a-button-padding-y: 0.5rem;',
'    --a-button-padding-x: 0.75rem;',
'    --a-icon-size: 1rem;',
'    background-color: var(--ut-palette-primary);',
'}*/',
'.apex-item-filedrop-action{',
'    background-color: var(--ut-palette-primary);',
'}'))
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221216174021'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(128890879045852153934)
,p_plug_name=>'Novo anexo'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       NOME,',
'       ANEXO,',
'       FILENAME,',
'       MIMETYPE,',
'       CHARSET,',
'       USUARIO',
'  from ADM_CHAMADO_ANEXO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70121878125936516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_SALVAR.'
,p_button_position=>'NEXT'
,p_button_condition=>'P164_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70122274868936516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14537656745723010)
,p_name=>'P164_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_default=>'SELECT UPPER(A.USERNAME) FROM ADM_USUARIO A WHERE UPPER(A.USERNAME)=UPPER(V(''APP_USER'')); '
,p_item_default_type=>'SQL_QUERY'
,p_source=>'USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70122617837936517)
,p_name=>'P164_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70123088417936517)
,p_name=>'P164_ID_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_source=>'ID_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70123482536936517)
,p_name=>'P164_NOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_prompt=>'Nome'
,p_placeholder=>'Nome do anexo'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>400
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Informe uma descri\00E7\00E3o para identificar o anexo')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70123840807936518)
,p_name=>'P164_ANEXO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_source=>'ANEXO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70124257325936518)
,p_name=>'P164_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70124602543936518)
,p_name=>'P164_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_item_source_plug_id=>wwv_flow_imp.id(128890879045852153934)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14536971320723003)
,p_validation_name=>'Valida nome do anexo'
,p_validation_sequence=>10
,p_validation=>'RETURN PKG_SUPORTE.VALID_NOME_ANEXO(:P164_NOME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(70123482536936517)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14537073111723004)
,p_validation_name=>'Valida anexo'
,p_validation_sequence=>20
,p_validation=>'RETURN PKG_SUPORTE.VALID_ANEXO(:P164_ANEXO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(70123840807936518)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70128041550936520)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70122274868936516)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70128559404936521)
,p_event_id=>wwv_flow_imp.id(70128041550936520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70128911159936521)
,p_name=>'P164_VARIAVEL-Change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_VARIAVEL'
,p_condition_element=>'P164_VARIAVEL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70129448581936521)
,p_event_id=>wwv_flow_imp.id(70128911159936521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_TIPO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select TIPO from ADM_VARIAVEL where CODIGO = :P164_VARIAVEL;'
,p_attribute_07=>'P164_VARIAVEL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70129859603936522)
,p_name=>'P164_TIPO-Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P164_TIPO'
,p_condition_element=>'P164_TIPO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70130378645936522)
,p_event_id=>wwv_flow_imp.id(70129859603936522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_INSTRUCAO,P164_AJUDA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70130860289936522)
,p_event_id=>wwv_flow_imp.id(70129859603936522)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P164_INSTRUCAO,P164_AJUDA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70127658277936520)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insere anexo'
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.INSERE_ANEXO(:P164_ID_CHAMADO,:P164_NOME,:P164_ANEXO, :P164_USUARIO);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70127258738936520)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70126849467936520)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(128890879045852153934)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Incluir conte\00FAdo')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
