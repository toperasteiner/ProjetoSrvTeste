prompt --application/shared_components/email/templates/novo_anexo_com_chamado_aberto
begin
--   Manifest
--     REPORT LAYOUT: Novo anexo com chamado aberto
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
 p_id=>wwv_flow_imp.id(16672662802584503)
,p_name=>'Novo anexo com chamado aberto'
,p_static_id=>'NOVO_ANEXO_COM_CHAMADO_ABERTO'
,p_version_number=>2
,p_subject=>'Novo anexo no chamado NG'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>Confirma\00E7\00E3o de arquivo anexado no chamado para o sistema NG</strong><br>'),
'<br>',
unistr('<strong>N\00FAmero do chamado:</strong> #ID_CHAMADO#<br>'),
unistr('<strong>Usu\00E1rio que adicionou o arquivo:</strong> #USUARIO_NOME#<br>'),
'<strong>Nome do arquivo:</strong> #TITULO#<br>',
'<br>',
'<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/srvdev/ng-srv/login" style="font-size: 14px;">Visite o SRV para acompanhar o progresso do seu chamado</a>.'))
,p_html_header=>'<b style="font-size: 24px;">Adicionado novo anexo no chamado NG</b>'
,p_html_footer=>unistr('N\00E3o responder esse e-mail')
);
wwv_flow_imp.component_end;
end;
/
