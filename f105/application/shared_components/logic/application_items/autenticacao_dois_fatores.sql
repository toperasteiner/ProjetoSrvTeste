prompt --application/shared_components/logic/application_items/autenticacao_dois_fatores
begin
--   Manifest
--     APPLICATION ITEM: AUTENTICACAO_DOIS_FATORES
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
 p_id=>wwv_flow_imp.id(9709581361016710)
,p_name=>'AUTENTICACAO_DOIS_FATORES'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
