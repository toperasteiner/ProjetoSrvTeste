prompt --application/shared_components/user_interface/lovs/lv_sup_teste_envolvido
begin
--   Manifest
--     LV_SUP_TESTE_ENVOLVIDO
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
 p_id=>wwv_flow_imp.id(76421471219135630)
,p_lov_name=>'LV_SUP_TESTE_ENVOLVIDO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT U.ID, ''Adicionado convidado: ''||U.ID , ''Adicionado convidado: ''||UPPER(U.NOME) FROM ADM_USUARIO U ',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'''ADICIONADOCONVIDADO:''||U.ID'
,p_display_column_name=>'''ADICIONADOCONVIDADO:''||UPPER(U.NOME)'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
