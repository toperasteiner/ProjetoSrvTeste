prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221221142117'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65053411596778445)
,p_name=>'Page load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65053554523778446)
,p_event_id=>wwv_flow_imp.id(65053411596778445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_SESSION_STATE (''D_COL_EXCLUIR'', ''<div class="ng-botao-lista u-color u-danger"><span class="fa fa-trash-o"><span class="t-Card-initials" role="presentation"></span></span></div>'');',
'APEX_UTIL.SET_SESSION_STATE (''D_COL_EDITAR'', ''<div class="ng-botao-lista u-color u-info"><span class="fa fa-edit"><span class="t-Card-initials" role="presentation"></span></span></div>'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_PROSSEGUIR'', ''Prosseguir'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_VOLTAR'', ''Voltar'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_CANCELAR'', ''Cancelar'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_GRAVAR'', ''Gravar'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_SALVAR'', ''Salvar'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_NOVO'', ''Incluir'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_EXCLUIR'', ''Excluir'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_ACESSAR'', ''Acessar cadastro'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_SELECIONAR'', ''Selecionar'');',
'APEX_UTIL.SET_SESSION_STATE (''D_BTN_MAIS_DETALHES'', ''Mais detalhes'');',
unistr('APEX_UTIL.SET_SESSION_STATE (''D_TIT_CONFIRMA_EXCLUSAO'', ''Confirma a exclus\00E3o?'');'),
'APEX_UTIL.SET_SESSION_STATE (''D_ICON_CHAT'', ''<div class="ng-botao-lista u-color u-normal"><span class="fa fa-users-chat"><span class="t-Card-initials" role="presentation"></span></span></div>'');',
'APEX_UTIL.SET_SESSION_STATE (''CLA_EDITAR'', ''fa fa-edit'');',
'APEX_UTIL.SET_SESSION_STATE (''CLA_EXCLUIR'', ''fa fa-trash'');',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
