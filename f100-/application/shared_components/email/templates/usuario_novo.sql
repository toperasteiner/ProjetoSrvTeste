prompt --application/shared_components/email/templates/usuario_novo
begin
--   Manifest
--     REPORT LAYOUT: Usuario novo
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
 p_id=>wwv_flow_imp.id(8706401813679651)
,p_name=>'Usuario novo'
,p_static_id=>'USUARIO_NOVO'
,p_version_number=>2
,p_subject=>unistr('Novo usu\00E1rio NG criado')
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<strong>Ol\00E1 #USUARIO_NOME#</strong>,<br>'),
'<br>',
'Obrigado por se cadastrar no NG!<br>',
'<br>',
unistr('<strong>Usu\00E1rio: #USUARIO_USERNAME#</strong><br>'),
'<strong>Senha: #USUARIO_SENHA#</strong><br>',
'<br>',
'<br>',
'<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/ngdev/ng/login" style="font-size: 14px;">Visite o NG</a>.'))
,p_html_header=>unistr('<b style="font-size: 24px;">Novo usu\00E1rio NG criado</b>')
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello #CUSTOMER_NAME#,',
'',
'Thank you for placing your order!',
'',
'Order Details',
'--------------------------------------------------------------------------------',
'  Order Date:       #ORDER_DATE#',
'  Order Number:     #ORDER_NUMBER#',
'  Ship To:          #SHIP_TO#',
'  Shipping Address: #SHIPPING_ADDRESS_LINE_1#',
'                    #SHIPPING_ADDRESS_LINE_2#',
'  Items Ordered:    #ITEMS_ORDERED#',
'  Order Total:      #ORDER_TOTAL#',
'--------------------------------------------------------------------------------',
'',
'Need to make a change to your order? Manage your order #ORDER_NUMBER# here: #ORDER_URL#'))
);
wwv_flow_imp.component_end;
end;
/
