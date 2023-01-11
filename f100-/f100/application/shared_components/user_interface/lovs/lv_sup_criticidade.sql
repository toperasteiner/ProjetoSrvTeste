prompt --application/shared_components/user_interface/lovs/lv_sup_criticidade
begin
--   Manifest
--     LV_SUP_CRITICIDADE
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
 p_id=>wwv_flow_imp.id(75372319157720424)
,p_lov_name=>'LV_SUP_CRITICIDADE'
,p_lov_query=>'.'||wwv_flow_imp.id(75372319157720424)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75372714547720424)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('N\00E3o \00E9 cr\00EDtico')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75373172164720425)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Est\00E1 impedindo uma funcionalidade imprescind\00EDvel')
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75373578392720425)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Est\00E1 impedindo o uso do NG de forma geral')
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
