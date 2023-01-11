prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(69813456122463931)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(69651519767463824)
,p_default_dialog_template=>wwv_flow_imp.id(69668935057463833)
,p_error_template=>wwv_flow_imp.id(69666360843463831)
,p_printer_friendly_template=>wwv_flow_imp.id(69651519767463824)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(69666360843463831)
,p_default_button_template=>wwv_flow_imp.id(69810446314463921)
,p_default_region_template=>wwv_flow_imp.id(69712725186463858)
,p_default_chart_template=>wwv_flow_imp.id(69712725186463858)
,p_default_form_template=>wwv_flow_imp.id(69712725186463858)
,p_default_reportr_template=>wwv_flow_imp.id(69712725186463858)
,p_default_tabform_template=>wwv_flow_imp.id(69712725186463858)
,p_default_wizard_template=>wwv_flow_imp.id(69712725186463858)
,p_default_menur_template=>wwv_flow_imp.id(69725320667463865)
,p_default_listr_template=>wwv_flow_imp.id(69712725186463858)
,p_default_irr_template=>wwv_flow_imp.id(69710688381463857)
,p_default_report_template=>wwv_flow_imp.id(69763882233463889)
,p_default_label_template=>wwv_flow_imp.id(69807905608463918)
,p_default_menu_template=>wwv_flow_imp.id(69812087930463923)
,p_default_calendar_template=>wwv_flow_imp.id(69812165208463924)
,p_default_list_template=>wwv_flow_imp.id(69797819295463910)
,p_default_nav_list_template=>wwv_flow_imp.id(69806612811463916)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(69806612811463916)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(69804845380463915)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(69679928583463841)
,p_default_dialogr_template=>wwv_flow_imp.id(69677178106463840)
,p_default_option_label=>wwv_flow_imp.id(69807905608463918)
,p_default_required_label=>wwv_flow_imp.id(69809220995463919)
,p_default_navbar_list_template=>wwv_flow_imp.id(69804435055463915)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.1/')
,p_files_version=>74
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(81000682079651401)
,p_theme_id=>101
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(80854240982651315)
,p_default_dialog_template=>wwv_flow_imp.id(80849116091651313)
,p_error_template=>wwv_flow_imp.id(80839121361651308)
,p_printer_friendly_template=>wwv_flow_imp.id(80854240982651315)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(80839121361651308)
,p_default_button_template=>wwv_flow_imp.id(80997668640651399)
,p_default_region_template=>wwv_flow_imp.id(80924815965651351)
,p_default_chart_template=>wwv_flow_imp.id(80924815965651351)
,p_default_form_template=>wwv_flow_imp.id(80924815965651351)
,p_default_reportr_template=>wwv_flow_imp.id(80924815965651351)
,p_default_tabform_template=>wwv_flow_imp.id(80924815965651351)
,p_default_wizard_template=>wwv_flow_imp.id(80924815965651351)
,p_default_menur_template=>wwv_flow_imp.id(80937205525651359)
,p_default_listr_template=>wwv_flow_imp.id(80924815965651351)
,p_default_irr_template=>wwv_flow_imp.id(80920175344651349)
,p_default_report_template=>wwv_flow_imp.id(80962713052651376)
,p_default_label_template=>wwv_flow_imp.id(80995164037651397)
,p_default_menu_template=>wwv_flow_imp.id(80999287647651399)
,p_default_calendar_template=>wwv_flow_imp.id(80999433665651400)
,p_default_list_template=>wwv_flow_imp.id(80979052214651387)
,p_default_nav_list_template=>wwv_flow_imp.id(80990884562651394)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(80990884562651394)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(80985524542651391)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(80867163877651322)
,p_default_dialogr_template=>wwv_flow_imp.id(80864390467651320)
,p_default_option_label=>wwv_flow_imp.id(80995164037651397)
,p_default_required_label=>wwv_flow_imp.id(80996525442651397)
,p_default_navbar_list_template=>wwv_flow_imp.id(80985045683651391)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(101),'#APEX_FILES#themes/theme_42/22.1/')
,p_files_version=>186
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
