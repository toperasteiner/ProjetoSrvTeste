prompt --application/pages/page_00160
begin
--   Manifest
--     PAGE: 00160
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_page.create_page(
 p_id=>160
,p_name=>'sup email para externo chamado aberto'
,p_alias=>'SUP-EMAIL-PARA-EXTERNO-CHAMADO-ABERTO'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221214171310'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53203415877934669736)
,p_plug_name=>unistr('E-mail para n\00E3o usu\00E1rio NG')
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       USUARIO_PRINCIPAL,',
'       NOME,',
'       EMAIL',
'  from ADM_CHAMADO_ENVOLVIDOS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76329251208013130)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gravar'
,p_button_position=>'CREATE'
,p_button_condition=>'P160_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76329661892013130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861541679535656)
,p_name=>'P160_TITULO'
,p_item_sequence=>10
,p_item_default=>'SELECT TITULO FROM ADM_CHAMADO WHERE ID=:P160_ID_CHAMADO;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861649223535657)
,p_name=>'P160_DESCRICAO'
,p_item_sequence=>20
,p_item_default=>'SELECT DESCRICAO FROM ADM_CHAMADO WHERE ID=:P160_ID_CHAMADO;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13861952979535660)
,p_name=>'P160_USUARIO_SOLICITANTE'
,p_item_sequence=>30
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NOME||'' ''||A.SOBRENOME FROM ADM_USUARIO A',
'JOIN ADM_CHAMADO_ENVOLVIDOS B ON B.ID_USUARIO = A.ID ',
'WHERE ID_CHAMADO=:P160_ID_CHAMADO AND USUARIO_PRINCIPAL=''S'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76330044007013131)
,p_name=>'P160_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76330446679013131)
,p_name=>'P160_ID_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_source=>'ID_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76330882528013131)
,p_name=>'P160_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76331247217013131)
,p_name=>'P160_USUARIO_PRINCIPAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_source=>'USUARIO_PRINCIPAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76331637097013132)
,p_name=>'P160_NOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_prompt=>'Nome'
,p_placeholder=>unistr('Nome de n\00E3o-usu\00E1rio NG')
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Digite o nome da pessoa que receber\00E1 um e-mail informando a abertura do chamado! ')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76332550652013133)
,p_name=>'P160_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_item_source_plug_id=>wwv_flow_imp.id(53203415877934669736)
,p_prompt=>'E-mail'
,p_placeholder=>unistr('Endere\00E7o de e-mail de n\00E3o-usu\00E1rio NG')
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Digite o endere\00E7o de e-mail para qual ser\00E1 informado sobre a abertura do chamado!')
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(13862972995535670)
,p_validation_name=>'Valida nome externo'
,p_validation_sequence=>10
,p_validation=>'RETURN PKG_SUPORTE.VALID_NOME_EXTERNO(:P160_NOME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76331637097013132)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(13863062473535671)
,p_validation_name=>'Valida e-mail externo'
,p_validation_sequence=>20
,p_validation=>'RETURN PKG_SUPORTE.VALID_EMAIL_EXTERNO(:P160_EMAIL);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76332550652013133)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76337160748013138)
,p_name=>'CANCEL-Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76329661892013130)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76337609268013138)
,p_event_id=>wwv_flow_imp.id(76337160748013138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76335573168013136)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53203415877934669736)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form E-mail para n\00E3o usu\00E1rio NG')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76335967029013136)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Insere movimenta\00E7\00E3o')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'    v_id_usuario NUMBER;',
'BEGIN',
'    SELECT ID INTO v_id_usuario FROM ADM_USUARIO WHERE UPPER(USERNAME)=UPPER(V(''APP_USER''));',
'    INSERT INTO ADM_CHAMADO_MOVIMENTACAO (ID_CHAMADO, ID_USUARIO, DESCRICAO, DATA)',
'    VALUES (:P160_ID_CHAMADO, v_id_usuario, ''Enviado e-mail externo para :''||:P160_NOME, CURRENT_DATE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76336316453013137)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Enviar e-mail'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P160_EMAIL.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(17662988002958857)
,p_attribute_12=>'{"USUARIO_NOME":"&P160_USUARIO_SOLICITANTE.","ID_CHAMADO":"&P160_ID_CHAMADO.","TITULO":"&P160_TITULO.","DESCRICAO":"&P160_DESCRICAO."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76336705516013137)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76335129815013136)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53203415877934669736)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form E-mail para n\00E3o usu\00E1rio NG')
);
wwv_flow_imp.component_end;
end;
/
