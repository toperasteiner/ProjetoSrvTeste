prompt --application/shared_components/user_interface/lovs/lv_sup_solucao
begin
--   Manifest
--     LV_SUP_SOLUCAO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(75376935178720427)
,p_lov_name=>'LV_SUP_SOLUCAO'
,p_lov_query=>'.'||wwv_flow_imp.id(75376935178720427)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75377296014720427)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Temos solu\00E7\00E3o de contorno para o problema reportado')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75377712082720428)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('N\00E3o temos uma solu\00E7\00E3o de contorno para esse problema')
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
