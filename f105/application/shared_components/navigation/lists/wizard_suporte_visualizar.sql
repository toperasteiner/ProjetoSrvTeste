prompt --application/shared_components/navigation/lists/wizard_suporte_visualizar
begin
--   Manifest
--     LIST: Wizard suporte - visualizar
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
 p_id=>wwv_flow_imp.id(71064510356191634)
,p_name=>'Wizard suporte - visualizar'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(71064851657191635)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dados do chamado'
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(71065240735191636)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Localiza\00E7\00E3o do erro')
,p_list_item_link_target=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:165:::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'SELECT ID FROM ADM_CHAMADO WHERE TP_CHAMADO=1 AND ID IN (:P150_ID,:P165_ID,:P151_ID,:P153_ID,:P154_ID)'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(71065626524191636)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Mais informa\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:154:::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>'SELECT ID FROM ADM_CHAMADO WHERE TP_CHAMADO=1 AND ID IN (:P150_ID,:P165_ID,:P151_ID,:P153_ID,:P154_ID)'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(71066008099191636)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Anexos'
,p_list_item_link_target=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.:153:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(71066475762191637)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Convidados'
,p_list_item_link_target=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:151:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
