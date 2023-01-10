prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_name=>'sup contestar chamado'
,p_alias=>'SUP-CONTESTAR-CHAMADO'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form--large .t-Form-itemWrapper .a-Button, .t-Form-fieldContainer--large .t-Form-itemWrapper .a-Button, .t-Form--large .t-Form-itemWrapper .oj-inputdatetime-input-trigger, .t-Form-fieldContainer--large .t-Form-itemWrapper .oj-inputdatetime-input-t'
||'rigger, .t-Form--large .t-Form-itemWrapper .t-Form-helpButton, .t-Form-fieldContainer--large .t-Form-itemWrapper .t-Form-helpButton, .t-Form--large .apex-item-file--native::-webkit-file-upload-button, .t-Form-fieldContainer--large .apex-item-file--na'
||'tive::-webkit-file-upload-button {',
'    --a-button-padding-y: 0.5rem;',
'    --a-button-padding-x: 0.75rem;',
'    --a-icon-size: 1rem;',
'    background-color: var(--ut-palette-primary);',
'}'))
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221214181707'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53194748628987572100)
,p_plug_name=>'Contestar chamado'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       TITULO,',
'       DESCRICAO,',
'       DATA',
'  from ADM_CHAMADO_DESCRICAO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76652314894338856)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gravar'
,p_button_position=>'CREATE'
,p_button_condition=>'P131_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76652695546338856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19928701476719569)
,p_name=>'P131_EMAILS'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19929035211719572)
,p_name=>'P131_NOME_USUARIO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_item_default=>'SELECT UPPER(V(''APP_USER'')) FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76653153191338856)
,p_name=>'P131_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_item_source_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76653545443338857)
,p_name=>'P131_ID_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_item_source_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_prompt=>unistr('C\00F3digo do chamado: ')
,p_source=>'ID_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(75195688371460444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76653883868338857)
,p_name=>'P131_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_item_source_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76654325953338857)
,p_name=>'P131_TITULO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_prompt=>unistr('T\00EDtulo')
,p_placeholder=>unistr('T\00EDtulo da contesta\00E7\00E3o do chamado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76654686387338857)
,p_name=>'P131_DESCRICAO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_prompt=>unistr('Descri\00E7\00E3o')
,p_placeholder=>unistr('Descri\00E7\00E3o do motivo da contesta\00E7\00E3o do chamado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76655143617338858)
,p_name=>'P131_ANEXO_NOME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_prompt=>'Nome do anexo'
,p_placeholder=>unistr('Nome do arquivo que ser\00E1 anexado')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76655499168338858)
,p_name=>'P131_ANEXO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(75195688371460444)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76655938320338858)
,p_name=>'P131_ID_ANEXO'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53194748628987572100)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19929239585719574)
,p_validation_name=>'Valida nome do anexo'
,p_validation_sequence=>10
,p_validation=>'RETURN PKG_SUPORTE.VALID_NOME_ANEXO(:P131_ANEXO_NOME);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76655143617338858)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19929372908719575)
,p_validation_name=>'Valida anexo'
,p_validation_sequence=>20
,p_validation=>'RETURN PKG_SUPORTE.VALID_ANEXO(:P131_ANEXO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76655499168338858)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19929453926719576)
,p_validation_name=>unistr('Valida t\00EDtulo')
,p_validation_sequence=>30
,p_validation=>'RETURN PKG_SUPORTE.VALID_TITULO_CONTESTACAO(:P131_TITULO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76654325953338857)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22258452294944927)
,p_validation_name=>unistr('Valida descri\00E7\00E3o')
,p_validation_sequence=>40
,p_validation=>'RETURN PKG_SUPORTE.VALID_DESCRICAO_CONTESTACAO(:P131_DESCRICAO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(76654686387338857)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76659255633338861)
,p_name=>'CANCEL-Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76652695546338856)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76659692506338861)
,p_event_id=>wwv_flow_imp.id(76659255633338861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19928874707719570)
,p_name=>'New'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19928951122719571)
,p_event_id=>wwv_flow_imp.id(19928874707719570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P131_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P131_ID_CHAMADO AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P131_EMAILS IS NULL THEN',
'            :P131_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P131_EMAILS := :P131_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P131_ID_CHAMADO'
,p_attribute_03=>'P131_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76657989235338860)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert ADM_CHAMADO_DESCRICAO'
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.NOVA_INFORMACAO(:P131_ID_CHAMADO,:P131_TITULO,:P131_DESCRICAO);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76658817863338860)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert ADM_CHAMADO_ANEXO'
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.INSERE_ANEXO(:P131_ID_CHAMADO,:P131_ANEXO_NOME,:P131_ANEXO);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76658394338338860)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Insert movimenta\00E7\00E3o')
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.MOVIMENTACAO_CHAMADO_CONTESTADO(:P131_ID_CHAMADO,:P131_ID_ANEXO,:P131_ANEXO_NOME,:P131_TITULO);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19929113166719573)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia e-mail'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P131_EMAILS.'
,p_attribute_10=>'N'
,p_attribute_11=>wwv_flow_imp.id(22069454542863316)
,p_attribute_12=>'{"ID_CHAMADO":"&P131_ID_CHAMADO.","USUARIO_NOME":"&P131_NOME_USUARIO.","TITULO":"&P131_TITULO.","DESCRICAO":"&P131_DESCRICAO.","CONTESTACAO":"&P131_ANEXO_NOME."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(76652314894338856)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76657640601338860)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76657261917338859)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53194748628987572100)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
