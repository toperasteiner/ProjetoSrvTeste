prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_imp.id(69640996967463801)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69843058651463982)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69852366791566001)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Suporte'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-headset'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,140'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69856906585583390)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Meus chamados'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-headset'
,p_parent_list_item_id=>wwv_flow_imp.id(69852366791566001)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'140'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8672104548615688)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_icon=>'fa-gears'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9072523668379059)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:::'
,p_list_item_icon=>'fa-user'
,p_parent_list_item_id=>wwv_flow_imp.id(8672104548615688)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27100848504730828)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Meus apontamentos'
,p_list_item_link_target=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-alarm-check'
,p_parent_list_item_id=>wwv_flow_imp.id(8672104548615688)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'172'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32578207411300550)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Funcion\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:176:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-check'
,p_parent_list_item_id=>wwv_flow_imp.id(8672104548615688)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'176'
);
wwv_flow_imp.component_end;
end;
/
