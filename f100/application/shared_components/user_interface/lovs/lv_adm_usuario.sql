prompt --application/shared_components/user_interface/lovs/lv_adm_usuario
begin
--   Manifest
--     LV_ADM_USUARIO
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
 p_id=>wwv_flow_imp.id(76347117704020689)
,p_lov_name=>'LV_ADM_USUARIO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ADM_USUARIO'
,p_return_column_name=>'ID'
,p_display_column_name=>'NOME'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
