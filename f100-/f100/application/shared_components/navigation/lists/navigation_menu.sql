prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
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
 p_id=>wwv_flow_imp.id(75028779730460327)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75230841414460508)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75240149554562527)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Suporte'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-headset'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,140'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75244689348579916)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Meus chamados'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-headset'
,p_parent_list_item_id=>wwv_flow_imp.id(75240149554562527)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'140'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14059887311612214)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_icon=>'fa-gears'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14460306431375585)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:::'
,p_list_item_icon=>'fa-user'
,p_parent_list_item_id=>wwv_flow_imp.id(14059887311612214)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32488631267727354)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Meus apontamentos'
,p_list_item_link_target=>'f?p=&APP_ID.:172:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-alarm-check'
,p_parent_list_item_id=>wwv_flow_imp.id(14059887311612214)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'172'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37965990174297076)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Funcion\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:176:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-check'
,p_parent_list_item_id=>wwv_flow_imp.id(14059887311612214)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'176'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5420654153669317)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'teste daniel github'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp.component_end;
end;
/
