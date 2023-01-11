prompt --application/shared_components/user_interface/lovs/lv_sup_status
begin
--   Manifest
--     LV_SUP_STATUS
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
 p_id=>wwv_flow_imp.id(75257626499579942)
,p_lov_name=>'LV_SUP_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(75257626499579942)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75258006811579943)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Aberto'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75258474571579943)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Em an\00E1lise')
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75258801570579943)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Aguardando retorno'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75259245509579943)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Cancelado'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75259606635579944)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Encerrado'
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75260033355579944)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Finalizado'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75260475730579944)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>unistr('Em digita\00E7\00E3o')
,p_lov_return_value=>'G'
);
wwv_flow_imp.component_end;
end;
/
