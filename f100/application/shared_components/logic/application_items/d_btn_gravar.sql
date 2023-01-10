prompt --application/shared_components/logic/application_items/d_btn_gravar
begin
--   Manifest
--     APPLICATION ITEM: D_BTN_GRAVAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(75554501305130145)
,p_name=>'D_BTN_GRAVAR'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
