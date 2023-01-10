prompt --application/shared_components/user_interface/lovs/lv_adm_usuario_tipo
begin
--   Manifest
--     LV_ADM_USUARIO_TIPO
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
 p_id=>wwv_flow_imp.id(75476115917823229)
,p_lov_name=>'LV_ADM_USUARIO_TIPO'
,p_lov_query=>'.'||wwv_flow_imp.id(75476115917823229)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75476522974823230)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Administrador'
,p_lov_return_value=>'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75476887631823230)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Desenvolvedor'
,p_lov_return_value=>'CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75477338186823230)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Usu\00E1rio final')
,p_lov_return_value=>'NULL'
);
wwv_flow_imp.component_end;
end;
/
