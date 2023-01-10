prompt --application/shared_components/user_interface/lovs/lv_sup_s_n
begin
--   Manifest
--     LV_SUP_S_N
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
 p_id=>wwv_flow_imp.id(76347769354020696)
,p_lov_name=>'LV_SUP_S_N'
,p_lov_query=>'.'||wwv_flow_imp.id(76347769354020696)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(76348483142020697)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Sim'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(76348119525020697)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('N\00E3o')
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
