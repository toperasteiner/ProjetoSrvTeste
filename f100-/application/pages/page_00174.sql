prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_name=>'sup direcionamento de chamado'
,p_alias=>'SUP-DIRECIONAMENTO-DE-CHAMADO'
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
'} '))
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221230164953'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53167907016995278555)
,p_plug_name=>'Direcionamento de chamado'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_ANALISTA,       ',
'       ID_ATENDENTE,       ',
'       ID_CHAMADO_AREA,',
'       PRIORIDADE,',
'       PRAZO, ',
'       TITULO,',
'       DESCRICAO       ',
'  from ADM_CHAMADO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27270914973424190)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_GRAVAR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P174_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27271387989424192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23747830022141344)
,p_name=>'P174_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_prompt=>'Atendente'
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUP_ATENDENTE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID, NOME||'' ''||SOBRENOME AS NOME FROM ADM_USUARIO A ',
'JOIN ADM_CHAMADO_FUNCIONARIO B ON B.ID_USUARIO = A.ID      ',
'WHERE B.ATENDENTE = ''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>unistr('Selecione um usu\00E1rio como atendente respons\00E1vel pelo chamado!')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27271758978424195)
,p_name=>'P174_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27283726187429406)
,p_name=>'P174_ID_CHAMADO_AREA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_prompt=>unistr('\00C1rea do chamado')
,p_source=>'ID_CHAMADO_AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUP_AREA'
,p_lov=>'SELECT ID, NOME FROM ADM_CHAMADO_AREA WHERE ATIVO=1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>unistr('\00C1rea destinada do chamado solicitado pelo usu\00E1rio!')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27284374857429412)
,p_name=>'P174_ID_ANALISTA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_prompt=>'Analista'
,p_source=>'ID_ANALISTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUP_ANALISTA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID, NOME||'' ''||SOBRENOME AS NOME FROM ADM_USUARIO A ',
'JOIN ADM_CHAMADO_FUNCIONARIO B ON B.ID_USUARIO = A.ID      ',
'WHERE B.ANALISTA = ''S'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>unistr('Selecione um usu\00E1rio como \00E1nalista respons\00E1vel pelo chamado!')
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27284484650429413)
,p_name=>'P174_PRIORIDADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_prompt=>'Prioridade'
,p_source=>'PRIORIDADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_SUP_PRIORIDADE'
,p_lov=>'SELECT ID, NOME FROM ADM_CHAMADO_PRIORIDADE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Selecione--'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Informe a prioridade de atendimento deste chamado!'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27284508445429414)
,p_name=>'P174_PRAZO'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_prompt=>'Prazo'
,p_placeholder=>'Prazo previsto de acordo com a prioridade'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'PRAZO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_field_template=>wwv_flow_imp.id(69809220995463919)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Informe uma data como prazo para resolu\00E7\00E3o do chamado!')
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27286895351429437)
,p_name=>'P174_ID_USUARIO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27287929669429448)
,p_name=>'P174_EMAIL_ATENDENTE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33176540532966605)
,p_name=>'P174_EMAIL_ANALISTA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33177038038966610)
,p_name=>'P174_USUARIO_LOGADO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_default=>'UPPER(V(''APP_USER''))'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33177116386966611)
,p_name=>'P174_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33177253010966612)
,p_name=>'P174_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_source_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33177429327966614)
,p_name=>'P174_EMAIL_CONVIDADOS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33177941468966619)
,p_name=>'P174_NOME_AREA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_default=>'SELECT NOME FROM ADM_CHAMADO_AREA WHERE ID=:P174_ID_CHAMADO_AREA;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33178035508966620)
,p_name=>'P174_NOME_PRIORIDADE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53167907016995278555)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'CASE ',
'WHEN PRIORIDADE=1 THEN ''Emergente'' ',
'WHEN PRIORIDADE=2 THEN ''Muito urgente''',
'WHEN PRIORIDADE=3 THEN ''Urgente''',
'WHEN PRIORIDADE=4 THEN ''Pouco urgente''',
unistr('WHEN PRIORIDADE=5 THEN ''N\00E3o urgente'''),
'END AS PRIORIDADE',
'FROM ADM_CHAMADO WHERE ID=:P174_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(27286935489429438)
,p_computation_sequence=>10
,p_computation_item=>'P174_ID_USUARIO'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'RETORNA_ID_USUARIO_LOGADO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27285451341429423)
,p_validation_name=>unistr('Valida \00E1rea destinada')
,p_validation_sequence=>10
,p_validation=>'RETURN PKG_SUPORTE.VALID_AREA_DESTINADA(:P174_ID_CHAMADO_AREA);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(27283726187429406)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27285531644429424)
,p_validation_name=>'Valida analista'
,p_validation_sequence=>50
,p_validation=>'RETURN PKG_SUPORTE.VALID_DIRECIONAMENTO_ANALISTA(:P174_ID_ANALISTA);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(27284374857429412)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27285602663429425)
,p_validation_name=>'Valida atendente'
,p_validation_sequence=>60
,p_validation=>'RETURN PKG_SUPORTE.VALID_DIRECIONAMENTO_ATENDENTE(:P174_ID_ATENDENTE);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(23747830022141344)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27285247731429421)
,p_validation_name=>'Valida prioridade'
,p_validation_sequence=>70
,p_validation=>'RETURN PKG_SUPORTE.VALID_DIRECIONAMENTO_PRIORIDADE(:P174_PRIORIDADE);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(27284484650429413)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(27285167396429420)
,p_validation_name=>'Valida prazo'
,p_validation_sequence=>80
,p_validation=>'RETURN PKG_SUPORTE.VALID_DIRECIONAMENTO_PRAZO(:P174_PRAZO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(27284508445429414)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27281498298424222)
,p_name=>'CANCEL-Click'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27271387989424192)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27281953309424224)
,p_event_id=>wwv_flow_imp.id(27281498298424222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33176352809966603)
,p_name=>'Change analista'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P174_ID_ANALISTA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33176466910966604)
,p_event_id=>wwv_flow_imp.id(33176352809966603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P174_EMAIL_ANALISTA := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_USUARIO',
'                    where ID = :P174_ID_ANALISTA AND EMAIL IS NOT NULL',
'                )',
'    LOOP',
'        IF :P174_EMAIL_ANALISTA IS NULL THEN',
'            :P174_EMAIL_ANALISTA := REP.EMAIL;',
'        ELSE',
'            :P174_EMAIL_ANALISTA := :P174_EMAIL_ANALISTA || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P174_ID_ANALISTA'
,p_attribute_03=>'P174_EMAIL_ANALISTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33176602942966606)
,p_name=>'Change atendente'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P174_ID_ATENDENTE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33176758024966607)
,p_event_id=>wwv_flow_imp.id(33176602942966606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P174_EMAIL_ATENDENTE := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_USUARIO',
'                    where ID = :P174_ID_ATENDENTE AND EMAIL IS NOT NULL',
'                )',
'    LOOP',
'        IF :P174_EMAIL_ATENDENTE IS NULL THEN',
'            :P174_EMAIL_ATENDENTE := REP.EMAIL;',
'        ELSE',
'            :P174_EMAIL_ATENDENTE := :P174_EMAIL_ATENDENTE || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P174_ID_ATENDENTE'
,p_attribute_03=>'P174_EMAIL_ATENDENTE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33177504259966615)
,p_name=>'Change area, prioridade, prazo'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P174_ID_CHAMADO_AREA,P174_PRIORIDADE,P174_PRAZO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33177622052966616)
,p_event_id=>wwv_flow_imp.id(33177504259966615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P174_EMAIL_CONVIDADOS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P174_ID AND EMAIL IS NOT NULL',
'                )   ',
'    LOOP',
'        IF :P174_EMAIL_CONVIDADOS IS NULL THEN',
'            :P174_EMAIL_CONVIDADOS := REP.EMAIL;',
'        ELSE',
'            :P174_EMAIL_CONVIDADOS := :P174_EMAIL_CONVIDADOS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P174_ID'
,p_attribute_03=>'P174_EMAIL_CONVIDADOS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27278279602424205)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53167907016995278555)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Direcionamento de chamado'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33176971580966609)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia e-mail para analista'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P174_EMAIL_ANALISTA.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(33183322843071141)
,p_attribute_12=>'{"ID_CHAMADO":"&P174_ID.","USUARIO_NOME":"&P174_USUARIO_LOGADO.","TITULO":"&P174_TITULO.","DESCRICAO":"&P174_DESCRICAO."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P174_EMAIL_ANALISTA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33177316415966613)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia e-mail para atendente'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P174_EMAIL_ATENDENTE.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(33183694715096204)
,p_attribute_12=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "ID_CHAMADO": "&P174_ID.",',
'    "USUARIO_NOME": "&P174_USUARIO_LOGADO.",',
'    "TITULO": "&P174_TITULO.",',
'    "DESCRICAO": "&P174_DESCRICAO."',
'}'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P174_EMAIL_ATENDENTE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33177846895966618)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia e-mail para convidados'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P174_EMAIL_CONVIDADOS.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(33194740708401105)
,p_attribute_12=>'{"ID_CHAMADO":"&P174_ID.","USUARIO_NOME":"&P174_USUARIO_LOGADO.","AREA_CHAMADO":"&P174_NOME_AREA.","PRIORIDADE":"&P174_NOME_PRIORIDADE.","PRAZO":"&P174_PRAZO.","TITULO":"&P174_TITULO.","DESCRICAO":"&P174_DESCRICAO."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P174_EMAIL_CONVIDADOS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27281079638424221)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27277861665424204)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53167907016995278555)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Direcionamento de chamado'
);
wwv_flow_imp.component_end;
end;
/
