prompt --application/shared_components/navigation/lists/wizard_suporte
begin
--   Manifest
--     LIST: Wizard suporte
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
 p_id=>wwv_flow_imp.id(69932455322704719)
,p_name=>'Wizard suporte'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69932793061704719)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dados do chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'120,602'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69933137412704719)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Localiza\00E7\00E3o do erro')
,p_list_item_link_target=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P120_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P132_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P124_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P123_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P121_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P125_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P602_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P612_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'132,612'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69933532382704720)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Mais informa\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:124:::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P120_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P132_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P124_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P123_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P121_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P125_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P602_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'124,613'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69933953867704720)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Anexos'
,p_list_item_link_target=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'123,605'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69934383825704720)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Convidados'
,p_list_item_link_target=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:121:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'121,610'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69934761962704721)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Termo de aceite'
,p_list_item_link_target=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:125:::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P120_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P132_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P124_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P123_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P121_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P125_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'IF :P602_TP_CHAMADO = 1 THEN',
'RETURN TRUE;',
'END IF;',
'END;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
