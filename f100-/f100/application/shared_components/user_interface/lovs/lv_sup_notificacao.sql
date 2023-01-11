prompt --application/shared_components/user_interface/lovs/lv_sup_notificacao
begin
--   Manifest
--     LV_SUP_NOTIFICACAO
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
 p_id=>wwv_flow_imp.id(75256271903579941)
,p_lov_name=>'LV_SUP_NOTIFICACAO'
,p_lov_query=>'.'||wwv_flow_imp.id(75256271903579941)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75257029291579942)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Nova mensagem'
,p_lov_return_value=>'S'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.ID FROM ADM_CHAMADO_CHAT A',
'JOIN ADM_USUARIO B ON B.ID=A.ID_USUARIO',
'JOIN ADM_CHAMADO_ENVOLVIDOS C ON C.ID_CHAMADO = A.ID_CHAMADO',
'WHERE UPPER(USERNAME)!=UPPER(V(''APP_USER'')) AND A.NOTIFICACAO=''S'' AND C.ID_CHAMADO IN (SELECT ID_CHAMADO FROM ADM_USUARIO A',
'JOIN ADM_CHAMADO_ENVOLVIDOS B ON B.ID_USUARIO = A.ID',
'WHERE UPPER(A.USERNAME)=UPPER(V(''APP_USER''))); '))
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(75256662171579942)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Mensagens lidas'
,p_lov_return_value=>'N'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
