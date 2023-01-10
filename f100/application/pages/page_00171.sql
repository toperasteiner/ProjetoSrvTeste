prompt --application/pages/page_00171
begin
--   Manifest
--     PAGE: 00171
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
 p_id=>171
,p_name=>'sup apontamento de horas'
,p_alias=>'SUP-APONTAMENTO-DE-HORAS'
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
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221226140520'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22261395092944957)
,p_plug_name=>'Apontamento de horas'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'ADM_APONTAMENTOS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22262269991944965)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_image_alt=>'&D_BTN_CANCELAR.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29134897713137863)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_SALVAR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P171_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22262372286944966)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_GRAVAR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P171_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261586686944959)
,p_name=>'P171_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261686157944960)
,p_name=>'P171_ID_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_prompt=>unistr('N\00FAmero do chamado')
,p_source=>'ID_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(75195688371460444)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Este \00E9 o n\00FAmero do chamado!')
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261840764944961)
,p_name=>'P171_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_default=>'RETURN RETORNA_ID_USUARIO_LOGADO;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261930250944962)
,p_name=>'P171_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_prompt=>unistr('Descri\00E7\00E3o')
,p_placeholder=>unistr('Descri\00E7\00E3o das atividades')
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Descreva as atividades realizadas durante o per\00EDodo! ')
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22261983367944963)
,p_name=>'P171_DATA'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_prompt=>'Data'
,p_placeholder=>'Data das atividades'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'DATA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_cMaxlength=>10
,p_tag_attributes=>'onkeydown="return isNumber(event);"'
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Informe a data em que foram realizadas as atividades! '
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22262091757944964)
,p_name=>'P171_QTD_HORAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>unistr('Informe a quantidade de horas direcionadas para a realiza\00E7\00E3o das atividades! ')
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22262876311944971)
,p_name=>'P171_MINUTOS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>unistr('Informe a quantidade de minutos direcionadas para a realiza\00E7\00E3o das atividades! ')
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22262967492944972)
,p_name=>'P171_HORA_TESTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29131494868137829)
,p_name=>'P171_CURRENT_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_default=>'SELECT TO_CHAR(CURRENT_DATE, ''DD/MM/YYYY'') FROM DUAL'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29131890510137833)
,p_name=>'P171_HORAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_item_source_plug_id=>wwv_flow_imp.id(22261395092944957)
,p_prompt=>'Horas'
,p_placeholder=>'00:00'
,p_source=>'QTD_HORAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_APEX MASK PLUGIN'
,p_cSize=>30
,p_cMaxlength=>4
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(75197003758460445)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>unistr('Informe a quantidade de horas direcionadas para a realiza\00E7\00E3o das atividades, utilizando o formato HH:MM')
,p_attribute_01=>'00:00'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(29131667153137830)
,p_validation_name=>'Valida horas'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P171_QTD_HORAS IS NULL THEN',
'RETURN ''Quantidade de horas deve ser informada!'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(22262091757944964)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(29131709285137831)
,p_validation_name=>'Valida minutos'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P171_MINUTOS IS NULL THEN',
'RETURN ''Quantidade de minutos deve ser informada!'';',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(22262876311944971)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(29133660200137850)
,p_validation_name=>unistr('Valida descri\00E7\00E3o')
,p_validation_sequence=>60
,p_validation=>'RETURN PKG_SUPORTE.VALID_APONTAMENTO_DESCRICAO(:P171_DESCRICAO);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(22261930250944962)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(29133687934137851)
,p_validation_name=>'Valida data'
,p_validation_sequence=>70
,p_validation=>'RETURN PKG_SUPORTE.VALID_APONTAMENTO_DATA(:P171_DATA, :P171_CURRENT_DATE);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(22261983367944963)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(29133801825137852)
,p_validation_name=>'Valida horas trabalhadas'
,p_validation_sequence=>80
,p_validation=>'RETURN PKG_SUPORTE.VALID_APONTAMENTO_HORAS(:P171_HORAS);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(29131890510137833)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22262422826944967)
,p_name=>'Cancelar'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22262269991944965)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22262519069944968)
,p_event_id=>wwv_flow_imp.id(22262422826944967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22263185727944975)
,p_name=>'Seta horas'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P171_QTD_HORAS,P171_MINUTOS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22263286967944976)
,p_event_id=>wwv_flow_imp.id(22263185727944975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P171_HORA_TESTE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P171_QTD_HORAS||'':''||:P171_MINUTOS'
,p_attribute_07=>'P171_QTD_HORAS,P171_MINUTOS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22262631817944969)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22261395092944957)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Apontamento de horas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27402146326253133)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22261548111944958)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22261395092944957)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form sup apontamento de horas'
);
wwv_flow_imp.component_end;
end;
/
