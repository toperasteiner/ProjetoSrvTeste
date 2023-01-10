prompt --application/shared_components/user_interface/lovs/lv_adm_idioma
begin
--   Manifest
--     LV_ADM_IDIOMA
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
 p_id=>wwv_flow_imp.id(15091324827991705)
,p_lov_name=>'LV_ADM_IDIOMA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'ADM_IDIOMA'
,p_query_where=>'ESTA_ATIVO = ''S'''
,p_return_column_name=>'ID'
,p_display_column_name=>'IDIOMA'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
