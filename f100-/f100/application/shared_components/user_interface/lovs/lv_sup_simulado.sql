prompt --application/shared_components/user_interface/lovs/lv_sup_simulado
begin
--   Manifest
--     LV_SUP_SIMULADO
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
 p_id=>wwv_flow_imp.id(75375547834720426)
,p_lov_name=>'LV_SUP_SIMULADO'
,p_lov_query=>'.'||wwv_flow_imp.id(75375547834720426)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75375937428720427)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Este problema pode ser reproduzido'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75376310883720427)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Este problema \00E9 aleat\00F3rio, n\00E3o consigo reproduzi-lo')
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
