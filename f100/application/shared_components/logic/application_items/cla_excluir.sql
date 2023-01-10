prompt --application/shared_components/logic/application_items/cla_excluir
begin
--   Manifest
--     APPLICATION ITEM: CLA_EXCLUIR
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
 p_id=>wwv_flow_imp.id(13877251951748496)
,p_name=>'CLA_EXCLUIR'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
