prompt --application/shared_components/user_interface/lovs/lv_sup_dt_abertura
begin
--   Manifest
--     LV_SUP_DT_ABERTURA
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
 p_id=>wwv_flow_imp.id(35603676469011948)
,p_lov_name=>'LV_SUP_DT_ABERTURA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'CASE WHEN DT_ABERTURA = CURRENT_DATE THEN ''Hoje'' ',
'END AS DATA,',
'CASE WHEN DT_ABERTURA < CURRENT_DATE AND DT_ABERTURA > (CURRENT_DATE-7) THEN ''Esta semana''',
'END AS SEMANA, ',
'CASE WHEN DT_ABERTURA < (CURRENT_DATE-7) THEN ''Antigos''',
'END AS ANTIGOS',
'FROM ADM_CHAMADO'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'DATA'
,p_default_sort_column_name=>'DATA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
