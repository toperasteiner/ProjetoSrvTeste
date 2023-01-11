prompt --application/shared_components/user_interface/lovs/lv_sup_status
begin
--   Manifest
--     LV_SUP_STATUS
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
 p_id=>wwv_flow_imp.id(69869843736583416)
,p_lov_name=>'LV_SUP_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(69869843736583416)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69870224048583417)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Aberto'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69870691808583417)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Em an\00E1lise')
,p_lov_return_value=>'B'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69871018807583417)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Aguardando retorno'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69871462746583417)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Cancelado'
,p_lov_return_value=>'D'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69871823872583418)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Encerrado'
,p_lov_return_value=>'E'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69872250592583418)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Finalizado'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69872692967583418)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>unistr('Em digita\00E7\00E3o')
,p_lov_return_value=>'G'
);
wwv_flow_imp.component_end;
end;
/
