prompt --application/shared_components/navigation/lists/menu_suporte
begin
--   Manifest
--     LIST: Menu Suporte
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(75241033620562546)
,p_name=>'Menu Suporte'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75241327683562548)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Meus Chamados'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:140:::'
,p_list_item_icon=>'fa-headset'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
