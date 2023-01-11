prompt --application/shared_components/navigation/lists/ações_chamados
begin
--   Manifest
--     LIST: Ações Chamados
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(70159375483112500)
,p_name=>unistr('A\00E7\00F5es Chamados')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22028795294295756)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Apontamento de horas'
,p_list_item_link_target=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:171:P171_ID_CHAMADO:&P141_ID.:'
,p_list_item_icon=>'fa-alarm-check'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(10,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-success'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27679775942690774)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Direcionamento de chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:174:P174_ID:&P141_ID.:'
,p_list_item_icon=>'fa-tasks'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(11,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-success'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70159698854112500)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Editar convidados'
,p_list_item_link_target=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:155:P155_ID:&P141_ID.:'
,p_list_item_icon=>'fa-edit'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(1,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70160037704112501)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Editar anexos'
,p_list_item_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:156:P156_ID:&P141_ID.:'
,p_list_item_icon=>'fa-edit'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(2,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70160487473112501)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Incluir novas informa\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID_CHAMADO:&P141_ID.:'
,p_list_item_icon=>'fa-edit'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(3,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70160803848112501)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Contestar chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_ID_CHAMADO:&P141_ID.:'
,p_list_item_icon=>'fa-exclamation-triangle-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(4,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-warning'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70161261858112501)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Cancelar chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:157:P157_ID:&P141_ID.:'
,p_list_item_icon=>'fa-remove'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(5,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-danger'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70161629993112502)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Consultar hist\00F3rico')
,p_list_item_link_target=>'f?p=&APP_ID.:159:&SESSION.::&DEBUG.:159:P159_ID_CHAMADO:&P141_ID.:'
,p_list_item_icon=>'fa-info'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(6,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-success'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70162098413112502)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Consultar chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_ID:&P141_ID.:'
,p_list_item_icon=>'fa-info'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(7,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-success'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70162459735112502)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Continuar digita\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_ID:&P141_ID.:'
,p_list_item_icon=>'fa-edit'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   return PKG_SUPORTE.LIBERA_ACAO_STATUS(8,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(70162899727112502)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Eliminar digita\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:158:P158_ID:&P141_ID.:'
,p_list_item_icon=>'fa-trash-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    return PKG_SUPORTE.LIBERA_ACAO_STATUS(9,:P141_ID);',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_06=>'u-danger'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
