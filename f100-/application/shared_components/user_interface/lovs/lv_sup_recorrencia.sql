prompt --application/shared_components/user_interface/lovs/lv_sup_recorrencia
begin
--   Manifest
--     LV_SUP_RECORRENCIA
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
 p_id=>wwv_flow_imp.id(69986372947723899)
,p_lov_name=>'LV_SUP_RECORRENCIA'
,p_lov_query=>'.'||wwv_flow_imp.id(69986372947723899)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69986783399723900)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Esse problema ocorreu uma \00FAnica vez')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(69987117642723900)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Esse problema \00E9 reincidente')
,p_lov_return_value=>'2'
);
wwv_flow_imp.component_end;
end;
/
