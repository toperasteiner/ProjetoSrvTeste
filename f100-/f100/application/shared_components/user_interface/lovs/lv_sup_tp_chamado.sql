prompt --application/shared_components/user_interface/lovs/lv_sup_tp_chamado
begin
--   Manifest
--     LV_SUP_TP_CHAMADO
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
 p_id=>wwv_flow_imp.id(76493563630229865)
,p_lov_name=>'LV_SUP_TP_CHAMADO'
,p_lov_query=>'.'||wwv_flow_imp.id(76493563630229865)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(76493951910229867)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Incidente'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(76494303286229867)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Requisi\00E7\00E3o')
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(76494690995229867)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('D\00FAvida')
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
