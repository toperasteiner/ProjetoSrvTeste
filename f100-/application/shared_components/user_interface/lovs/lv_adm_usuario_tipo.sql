prompt --application/shared_components/user_interface/lovs/lv_adm_usuario_tipo
begin
--   Manifest
--     LV_ADM_USUARIO_TIPO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(70088333154826703)
,p_lov_name=>'LV_ADM_USUARIO_TIPO'
,p_lov_query=>'.'||wwv_flow_imp.id(70088333154826703)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70088740211826704)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Administrador'
,p_lov_return_value=>'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70089104868826704)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Desenvolvedor'
,p_lov_return_value=>'CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(70089555423826704)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Usu\00E1rio final')
,p_lov_return_value=>'NULL'
);
wwv_flow_imp.component_end;
end;
/
