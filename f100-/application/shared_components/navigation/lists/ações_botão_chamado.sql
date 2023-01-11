prompt --application/shared_components/navigation/lists/ações_botão_chamado
begin
--   Manifest
--     LIST: Ações botão chamado
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
 p_id=>wwv_flow_imp.id(69873282198583419)
,p_name=>unistr('A\00E7\00F5es bot\00E3o chamado')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69873930312583419)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Relatar problema'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_TP_CHAMADO,P120_CO_PROGRAMA:1,&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-exclamation-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69874345517583419)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Relatar sugest\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_TP_CHAMADO,P120_CO_PROGRAMA:2,&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-commenting-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
