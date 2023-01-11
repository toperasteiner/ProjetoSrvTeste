prompt --application/shared_components/email/templates/contestar_chamado
begin
--   Manifest
--     REPORT LAYOUT: Contestar chamado
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(16681671779866790)
,p_name=>'Contestar chamado'
,p_static_id=>'CONTESTAR_CHAMADO'
,p_version_number=>2
,p_subject=>unistr('Contesta\00E7\00E3o de chamado NG')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>Confirma\00E7\00E3o de contesta\00E7\00E3o de chamado para o sistema NG</strong><br>'),
'<br>',
unistr('<strong>N\00FAmero do chamado:</strong> #ID_CHAMADO#<br>'),
unistr('<strong>Solicitante da contesta\00E7\00E3o:</strong> #USUARIO_NOME#<br>'),
unistr('<strong>T\00EDtulo:</strong> #TITULO#<br>'),
unistr('<strong>Descri\00E7\00E3o:</strong> #DESCRICAO#<br>'),
unistr('<strong>Anexo da contesta\00E7\00E3o:</strong> #CONTESTACAO#<br>'),
'<br>',
'<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/srvdev/ng-srv/login" style="font-size: 14px;">Visite o SRV para acompanhar o progresso do seu chamado</a>.'))
,p_html_header=>unistr('<b style="font-size: 24px;">Contesta\00E7\00E3o de chamado NG</b>')
,p_html_footer=>unistr('N\00E3o responder esse e-mail')
);
wwv_flow_imp.component_end;
end;
/
