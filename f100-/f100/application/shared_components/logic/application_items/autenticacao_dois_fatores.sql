prompt --application/shared_components/logic/application_items/autenticacao_dois_fatores
begin
--   Manifest
--     APPLICATION ITEM: AUTENTICACAO_DOIS_FATORES
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
 p_id=>wwv_flow_imp.id(15097364124013236)
,p_name=>'AUTENTICACAO_DOIS_FATORES'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
