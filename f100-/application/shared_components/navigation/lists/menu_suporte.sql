prompt --application/shared_components/navigation/lists/menu_suporte
begin
--   Manifest
--     LIST: Menu Suporte
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
 p_id=>wwv_flow_imp.id(69853250857566020)
,p_name=>'Menu Suporte'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69853544920566022)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Meus Chamados'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:140:::'
,p_list_item_icon=>'fa-headset'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
