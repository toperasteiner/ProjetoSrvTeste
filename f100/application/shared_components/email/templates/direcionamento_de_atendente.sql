prompt --application/shared_components/email/templates/direcionamento_de_atendente
begin
--   Manifest
--     REPORT LAYOUT: Direcionamento de atendente
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(38571477478092730)
,p_name=>'Direcionamento de atendente'
,p_static_id=>'DIRECIONAMENTO_DE_ATENDENTE'
,p_version_number=>2
,p_subject=>'Direcionamento de atendente em chamado NG'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>Confirma\00E7\00E3o de direcionamento de atendente em chamado para o sistema NG</strong><br>'),
'<br>',
unistr('<strong>Voc\00EA foi direcionado como Atendente no chamado:</strong> #ID_CHAMADO#<br>'),
'<strong>Solicitante:</strong> #USUARIO_NOME#<br>',
unistr('<strong>T\00EDtulo:</strong> #TITULO#<br>'),
unistr('<strong>Descri\00E7\00E3o:</strong> #DESCRICAO#<br>'),
'<br>',
'<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/srvdev/ng-srv/login" style="font-size: 14px;">Visite o SRV para acompanhar o progresso do seu chamado</a>.'))
,p_html_header=>'<b style="font-size: 24px;">Direcionamento de atendente em chamado NG</b>'
,p_html_footer=>unistr('N\00E3o responder esse e-mail')
);
wwv_flow_imp.component_end;
end;
/
