prompt --application/shared_components/email/templates/nova_informacao
begin
--   Manifest
--     REPORT LAYOUT: Nova informacao
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
 p_id=>wwv_flow_imp.id(22062855783702952)
,p_name=>'Nova informacao'
,p_static_id=>'NOVA_INFORMACAO'
,p_version_number=>2
,p_subject=>unistr('Novas informa\00E7\00F5es no chamado NG')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>Confirma\00E7\00E3o de novas informa\00E7\00F5es no chamado para o sistema NG</strong><br>'),
'<br>',
unistr('<strong>N\00FAmero do chamado:</strong> #ID_CHAMADO#<br>'),
unistr('<strong>Usu\00E1rio que enviou as novas informa\00E7\00F5es:</strong> #USUARIO_NOME#<br>'),
unistr('<strong>T\00EDtulo:</strong> #TITULO#<br>'),
unistr('<strong>Descri\00E7\00E3o:</strong> #DESCRICAO#<br>'),
'<br>',
'<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/srvdev/ng-srv/login" style="font-size: 14px;">Visite o SRV para acompanhar o progresso do seu chamado</a>.'))
,p_html_header=>unistr('<b style="font-size: 24px;">Novas informa\00E7\00F5es no chamado NG</b>')
,p_html_footer=>unistr('N\00E3o responder esse e-mail')
);
wwv_flow_imp.component_end;
end;
/
