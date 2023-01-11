prompt --application/shared_components/user_interface/lovs/lv_sup_envolvidos
begin
--   Manifest
--     LV_SUP_ENVOLVIDOS
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
 p_id=>wwv_flow_imp.id(69867094103583409)
,p_lov_name=>'LV_SUP_ENVOLVIDOS'
,p_lov_query=>'.'||wwv_flow_imp.id(69867094103583409)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69867822610583412)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Meus chamados'
,p_lov_return_value=>'S'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69867463383583412)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Chamados como convidado'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
