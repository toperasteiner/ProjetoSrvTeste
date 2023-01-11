prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_name=>unistr('sup dados espec\00EDficos')
,p_alias=>unistr('SUP-DADOS-ESPEC\00CDFICOS')
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221208145208'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53175801151731463264)
,p_plug_name=>unistr('Mais informa\00E7\00F5es')
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_EMPRESA,',
'       ID_STATUS,',
'       ID_ATENDENTE,',
'       TP_CHAMADO,',
'       URGENCIA,',
'       CO_PROGRAMA,',
'       VERSAO,',
'       PACTH,',
'       RELEASE,',
'       RECORRENCIA,',
'       SIMULACAO,',
'       CONTORNO,',
'       DT_ABERTURA,',
'       STATUS,',
'       RESULTADOS_NEGATIVOS,',
'       CONCLUSAO_ERRO',
'  from ADM_CHAMADO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79869302221668618937)
,p_plug_name=>unistr('Solicita\00E7\00E3o de suporte')
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(69932455322704719)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(69802488292463914)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69966778285723886)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gravar'
,p_button_position=>'CREATE'
,p_button_condition=>'P124_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69967156911723886)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_PROSSEGUIR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P124_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69967528841723887)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'Voltar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_ID:&P124_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69984247747723898)
,p_branch_name=>'Go to 123'
,p_branch_action=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123:P123_ID:&P124_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69967936278723887)
,p_name=>'P124_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69968332219723887)
,p_name=>'P124_VERSAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'VERSAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69968737689723888)
,p_name=>'P124_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'RELEASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69969135819723888)
,p_name=>'P124_ID_EMPRESA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'ID_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69969559883723888)
,p_name=>'P124_ID_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'ID_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69969922501723888)
,p_name=>'P124_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69970375517723888)
,p_name=>'P124_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69970770770723889)
,p_name=>'P124_PACTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'PACTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69971127311723889)
,p_name=>'P124_DT_ABERTURA'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'DT_ABERTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69971541338723889)
,p_name=>'P124_TP_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69971910830723889)
,p_name=>'P124_RESULTADOS_NEGATIVOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>unistr('Descrever aqui os resultados negativos que est\00E3o sendo produzidos pelo problema, a fim de auxiliar no diagn\00F3stico:')
,p_source=>'RESULTADOS_NEGATIVOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69972330702723890)
,p_name=>'P124_CONCLUSAO_ERRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>unistr('Descrever aqui como se concluiu que \00E9 erro no produto:')
,p_source=>'CONCLUSAO_ERRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69972751423723890)
,p_name=>'P124_RECORRENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>unistr('Recorr\00EAncia')
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LV_SUP_RECORRENCIA'
,p_lov=>'.'||wwv_flow_imp.id(69986372947723899)||'.'
,p_display_when=>'P124_TP_CHAMADO'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69973135011723890)
,p_name=>'P124_SIMULACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>unistr('Simula\00E7\00E3o')
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LV_SUP_SIMULADO'
,p_lov=>'.'||wwv_flow_imp.id(69987765071723900)||'.'
,p_begin_on_new_line=>'N'
,p_display_when=>'P124_TP_CHAMADO'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69973581194723890)
,p_name=>'P124_CONTORNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>unistr('Solu\00E7\00E3o de contorno')
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LV_SUP_SOLUCAO'
,p_lov=>'.'||wwv_flow_imp.id(69989152415723901)||'.'
,p_display_when=>'P124_TP_CHAMADO'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69973901336723891)
,p_name=>'P124_URGENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_prompt=>'Criticidade'
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LV_SUP_CRITICIDADE'
,p_lov=>'.'||wwv_flow_imp.id(69984536394723898)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69974330889723891)
,p_name=>'P124_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_item_source_plug_id=>wwv_flow_imp.id(53175801151731463264)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472391428539116)
,p_validation_name=>'Valida resultados negativos'
,p_validation_sequence=>10
,p_validation=>'RETURN PKG_SUPORTE.VALID_RESULTADOS(:P124_RESULTADOS_NEGATIVOS);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69971910830723889)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472459241539117)
,p_validation_name=>unistr('Valida conclus\00E3o erro')
,p_validation_sequence=>20
,p_validation=>'RETURN PKG_SUPORTE.VALID_CONCLUSAO(:P124_CONCLUSAO_ERRO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69972330702723890)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472565896539118)
,p_validation_name=>unistr('Valida recorr\00EAncia')
,p_validation_sequence=>30
,p_validation=>'RETURN PKG_SUPORTE.VALID_RECORRENCIA(:P124_RECORRENCIA);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69972751423723890)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472644245539119)
,p_validation_name=>unistr('Valida simula\00E7\00E3o')
,p_validation_sequence=>40
,p_validation=>'RETURN PKG_SUPORTE.VALID_SIMULACAO(:P124_SIMULACAO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69973135011723890)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472749506539120)
,p_validation_name=>unistr('Valida solu\00E7\00E3o de contorno')
,p_validation_sequence=>50
,p_validation=>'RETURN PKG_SUPORTE.VALID_CONTORNO(:P124_CONTORNO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69973581194723890)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(8472825551539121)
,p_validation_name=>unistr('Valida urg\00EAncia')
,p_validation_sequence=>60
,p_validation=>'RETURN PKG_SUPORTE.VALID_URGENCIA(:P124_URGENCIA);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(69973901336723891)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69980946176723896)
,p_name=>'Hide tp chamado'
,p_event_sequence=>10
,p_condition_element=>'P124_TP_CHAMADO'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69981459193723896)
,p_event_id=>wwv_flow_imp.id(69980946176723896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P124_RECORRENCIA,P124_SIMULACAO,P124_CONTORNO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69981816522723897)
,p_name=>'Load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69982314377723897)
,p_event_id=>wwv_flow_imp.id(69981816522723897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'&ON_DISABLE_CLOSE.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69982722713723897)
,p_name=>'CLOSE-click'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'parent.$(''.ui-dialog-titlebar-close'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69983240631723897)
,p_event_id=>wwv_flow_imp.id(69982722713723897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('O chamado n\00E3o ser\00E1 aberto, mas voc\00EA poder\00E1 continuar a digita\00E7\00E3o.')
,p_attribute_02=>unistr('Aten\00E7\00E3o!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69983780150723898)
,p_event_id=>wwv_flow_imp.id(69982722713723897)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69980226581723895)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53175801151731463264)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Abrir chamado'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69979844818723895)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53175801151731463264)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
