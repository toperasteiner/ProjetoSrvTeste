prompt --application/shared_components/logic/application_items/d_btn_mais_detalhes
begin
--   Manifest
--     APPLICATION ITEM: D_BTN_MAIS_DETALHES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(70844718081795905)
,p_name=>'D_BTN_MAIS_DETALHES'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/
