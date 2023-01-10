prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(100)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:140:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(75028779730460327)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(75192628143460441)
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(75222801591460475)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(75192217818460441)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
