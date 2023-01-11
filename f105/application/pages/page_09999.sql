prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Login Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css',
'https://code.jquery.com/jquery-3.3.1.slim.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js',
'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css',
'https://cdnjs.cloudflare.com/ajax/libs/jquery.countdown/2.2.0/jquery.countdown.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout(function(){',
'   $("#t_Alert_Success").remove();',
'   },3000);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mar-top-4{',
'    margin-top: 4px;',
'}',
'',
'.t-Login-logo{',
'    background-color: transparent;',
'}',
'',
'.apex-page-success{',
'    display: block !IMPORTANT;',
'}',
'',
'.countdown {',
'    text-transform: uppercase;',
'    font-weight: bold;',
'}',
'',
'.countdown span {',
'    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);',
'    font-size: 3rem;',
'    margin-left: 0.8rem;',
'}',
'',
'.countdown span:first-of-type {',
'    margin-left: 0;',
'}',
'',
'.countdown-circles {',
'    text-transform: uppercase;',
'    font-weight: bold;',
'}',
'',
'.countdown-circles span {',
'    width: 100px;',
'    height: 100px;',
'    border-radius: 50%;',
'    background: rgba(255, 255, 255, 0.2);',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);',
'}',
'',
'.countdown-circles span:first-of-type {',
'    margin-left: 0;',
'}',
'',
'.mar-top-10{',
'    margin-top: 10px;',
'}',
'',
'  .t-PageBody,',
'.t-PageBody--login {',
'background-size: cover;',
'background-repeat: no-repeat;',
'}',
'',
'.t-PageBody--login {',
'background: url(''#APP_FILES#wallhaven-nmww3y.jpg'');',
'}',
'',
'',
'',
'@media only screen and (max-width: 480px) {',
'.t-PageBody--login .t-Body {',
'margin-top: 40px; /* Add some space at the top to be able to see the background image */',
'background-color: transparent; /* Prevent white background on mobile */',
'}',
'}'))
,p_step_template=>wwv_flow_imp.id(69666360843463831)
,p_page_template_options=>'#DEFAULT#:t-DeferredRendering'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_last_updated_by=>'NORTHONN'
,p_last_upd_yyyymmddhh24miss=>'20221207113636'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90380850965453591)
,p_plug_name=>'NG'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerIcon'
,p_plug_template=>wwv_flow_imp.id(69754781277463879)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142905875942542802)
,p_plug_name=>'countdown'
,p_parent_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(69712725186463858)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                <!-- Countdown 4-->',
'                <div class="text-white shadow p-5 text-center mb-5 mar-top-10" style="text-align: center;">',
'                    <div id="clock-c" class="countdown py-4"></div>',
'                </div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142906844158542812)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:margin-bottom-md'
,p_plug_template=>wwv_flow_imp.id(69679928583463841)
,p_plug_display_sequence=>90
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9676489909995151)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142906844158542812)
,p_button_name=>'ESQUECEU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'Esqueceu a senha?'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'u-pullRight'
,p_grid_new_row=>'N'
,p_grid_column_span=>6
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9672127699995139)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_button_name=>'LOGIN'
,p_button_static_id=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acessar'
,p_button_condition=>'AUTENTICACAO_DOIS_FATORES'
,p_button_condition2=>'N'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9671789037995139)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_button_name=>'LOGIN_2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Verificar c\00F3digo')
,p_button_condition=>'AUTENTICACAO_DOIS_FATORES'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9671391859995138)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_button_name=>'LOGIN_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acessar'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'AUTENTICACAO_DOIS_FATORES'
,p_button_condition2=>'S'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9672594698995140)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_button_name=>'ALTERAR_SENHA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Confirmar'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9672995218995143)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>unistr('Usu\00E1rio')
,p_placeholder=>unistr('Nome de usu\00E1rio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9673329920995145)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>'Senha'
,p_placeholder=>'Senha'
,p_display_as=>'PLUGIN_COM.FOS.ADVANCED_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'enabled-toggle'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9673793010995145)
,p_name=>'P9999_NOVA_SENHA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>'Senha'
,p_placeholder=>'Nova senha'
,p_display_as=>'PLUGIN_COM.FOS.ADVANCED_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'enabled-toggle'
,p_attribute_02=>'external'
,p_attribute_04=>'require-min-length:require-number:require-spec-char:require-capital-letter:show-pwd-strength-bar:show-caps-lock-on:disable-button-if-incorrect:enable-inline-icons:new-password'
,p_attribute_05=>'7'
,p_attribute_06=>'Deve conter pelo menos #MIN_LENGTH# caracteres.'
,p_attribute_07=>'1'
,p_attribute_08=>unistr('Pelo menos #MIN_NUMS# n\00FAmeros.')
,p_attribute_09=>unistr('?><,./|}[]~\00A7@#$%!')
,p_attribute_10=>'2'
,p_attribute_11=>'Pelo menos #MIN_SPEC_CHARS# da lista: #SPEC_CHARS_LIST#'
,p_attribute_12=>'1'
,p_attribute_13=>unistr('Deve conter pelo menos #MIN_CAPS# letras mai\00FAsculas')
,p_attribute_14=>'P9999_C_NOVA_SENHA'
,p_attribute_15=>'P9999_C_NOVA_SENHA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9674176265995146)
,p_name=>'P9999_C_NOVA_SENHA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>'Confirmar senha'
,p_placeholder=>'Confirmar senha'
,p_display_as=>'PLUGIN_COM.FOS.ADVANCED_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'enabled-toggle'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9674527796995146)
,p_name=>'P9999_OTP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>unistr('C\00F3digo de verifica\00E7\00E3o')
,p_placeholder=>unistr('Informe o c\00F3digo de verifica\00E7\00E3o enviado ao e-mail')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'AUTENTICACAO_DOIS_FATORES'
,p_display_when2=>'S'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(69807905608463918)
,p_item_template_options=>'#DEFAULT#:margin-left-none:margin-right-none'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9674976132995147)
,p_name=>'P9999_OTP_GERADO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9675350690995147)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(90380850965453591)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9676804696995151)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142906844158542812)
,p_prompt=>unistr('Lembrar usu\00E1rio')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>6
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(69807630785463917)
,p_item_css_classes=>'mar-top-4'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9677521634995155)
,p_name=>'P9999_ERRO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9677987688995155)
,p_name=>'P9999_SUCESSO'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9678389754995156)
,p_name=>'P9999_ALTERAR_SENHA'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9678892040995157)
,p_validation_name=>'P9999_NOVA_SENHA-Valid'
,p_validation_sequence=>10
,p_validation=>'return PKG_SEGURANCA.VALID_PASSWORD(:P9999_USERNAME,:P9999_NOVA_SENHA,PKG_SEGURANCA.RETORNA_SENHA_USUARIO(:P9999_USERNAME),'''');'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_imp.id(9673793010995145)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9679256498995158)
,p_validation_name=>'P9999_C_NOVA_SENHA-Valid'
,p_validation_sequence=>20
,p_validation=>'return :P9999_NOVA_SENHA = :P9999_C_NOVA_SENHA;'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('As senhas n\00E3o conferem')
,p_associated_item=>wwv_flow_imp.id(9674176265995146)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(9679609336995158)
,p_validation_name=>'P9999_PASSWORD-Valid'
,p_validation_sequence=>30
,p_validation=>'return PKG_SEGURANCA.AUTH2(:P9999_USERNAME,:P9999_PASSWORD);'
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(9672594698995140)
,p_associated_item=>wwv_flow_imp.id(9673329920995145)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9700210996995174)
,p_name=>'P9999_IDIOMA-Change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_IDIOMA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9701233023995175)
,p_event_id=>wwv_flow_imp.id(9700210996995174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$("#P9999_USERNAME_LABEL").text(''Us\00E1rio'');'),
'$("#P9999_PASSWORD_LABEL").text(''Senha'');',
unistr('$("#P9999_REMEMBER_LABEL").text(''Lembrar usu\00E1rio'');'),
'$("#LOGIN").text(''Acessar'');'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9999_IDIOMA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9701757839995175)
,p_event_id=>wwv_flow_imp.id(9700210996995174)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P9999_USERNAME_LABEL").text(''Username'');',
'$("#P9999_PASSWORD_LABEL").text(''Password'');',
'$("#P9999_REMEMBER_LABEL").text(''Remember username'');',
'$("#LOGIN").text(''Sign In'');',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9999_IDIOMA'
,p_client_condition_expression=>'61'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9700736511995174)
,p_event_id=>wwv_flow_imp.id(9700210996995174)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'APEX_UTIL.SET_SESSION_STATE (''IDIOMA_LOGADO'', :P9999_IDIOMA);'
,p_attribute_02=>'P9999_IDIOMA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9702197238995175)
,p_name=>'LOGIN_1-Click'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9671391859995138)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9702611130995175)
,p_event_id=>wwv_flow_imp.id(9702197238995175)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    L_mensagem varchar(60);',
'    L_EMAIL varchar(60);',
'    L_OTP number;',
'begin',
'    L_mensagem := AUTH2(:P9999_USERNAME, :P9999_PASSWORD);',
'    if L_mensagem is not null then',
'        :P9999_ERRO := L_mensagem;',
'        :P9999_SUCESSO := '''';',
'        :P9999_OTP_GERADO := '''';',
'    else',
'        Select ROUND(DBMS_RANDOM.VALUE(1,999999)) INTO L_OTP from dual;',
'        Select EMAIL INTO L_EMAIL FROM ADM_USUARIO WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'        DELETE FROM ADM_OTP WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'        INSERT INTO ADM_OTP (USERNAME, OTP, EXPIRATION) VALUES (UPPER(:P9999_USERNAME), L_OTP, CURRENT_TIMESTAMP + interval ''2'' minute);',
'        :P9999_OTP_GERADO := 1;',
unistr('        :P9999_SUCESSO  := ''C\00F3digo de verifica\00E7\00E3o enviado para o e-mail ''||L_EMAIL ;'),
'        :P9999_ERRO := '''';',
'',
'        APEX_MAIL.SEND(',
'        p_to        => L_EMAIL,',
'        p_from      => ''suporte@staffinformatica.com.br'',',
unistr('        p_subj      => ''C\00F3digo de verifica\00E7\00E3o de usu\00E1rio NG'','),
unistr('        p_body      => ''C\00F3digo de verifi\00E7\00E3o de usu\00E1rio'','),
unistr('        p_body_html => ''<strong>Ol\00E1 ''||:P9999_USERNAME||''</strong>,<br>''||'),
'                       ''<br>''||',
unistr('                       ''Segue o c\00F3digo de verifi\00E7\00E3o de usu\00E1rio para acessar o sistema NG em duas etapas.<br>''||'),
'                       ''<br>''||',
unistr('                       ''<strong>C\00F3digo de verifica\00E7\00E3o: ''||L_OTP||''</strong><br>''||'),
'                       ''<br>''||',
unistr('                       ''Para sua seguran\00E7a esse c\00F3digo de verifica\00E7\00E3o possui validade de 2 minutos.'''),
'        ',
'                       ',
'        );',
'        apex_mail.push_queue();',
'    end if;',
'end;'))
,p_attribute_02=>'P9999_USERNAME,P9999_PASSWORD'
,p_attribute_03=>'P9999_OTP_GERADO,P9999_ERRO,P9999_SUCESSO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9703101522995176)
,p_event_id=>wwv_flow_imp.id(9702197238995175)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var erro = apex.item("P9999_ERRO").getValue();',
'var suce = apex.item("P9999_SUCESSO").getValue();',
'if (erro) {',
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "page",',
'            message: erro,',
'            unsafe: false',
'        }',
'    ]);',
'}',
'if (suce) {',
'',
'    apex.message.showPageSuccess( suce );',
'    $(function () {',
'',
'    function get15dayFromNow() {',
'        return new Date(new Date().valueOf() + 1 * 1 * 2 * 60 * 1000);',
'    }',
'',
'    $(''#clock-c'').countdown(get15dayFromNow(), function(event) {',
'      var $this = $(this).html(event.strftime(''''',
'',
'        + ''<span class="h1 font-weight-bold">%M</span> Min''',
'        + ''<span class="h1 font-weight-bold">%S</span> Sec''));',
'    });',
'',
'});',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9697979800995173)
,p_name=>'New_1'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9698452764995173)
,p_event_id=>wwv_flow_imp.id(9697979800995173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P0_SUCESSO,P9999_ERRO,P9999_OTP_GERADO,P9999_OTP,P9999_ALTERAR_SENHA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9698965741995173)
,p_event_id=>wwv_flow_imp.id(9697979800995173)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_NOVA_SENHA,P9999_C_NOVA_SENHA'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9697072125995172)
,p_name=>'P9999_USERNAME-Change'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_USERNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9697555282995173)
,p_event_id=>wwv_flow_imp.id(9697072125995172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_EMAIL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'Select EMAIL FROM ADM_USUARIO WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME)'
,p_attribute_07=>'P9999_USERNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P9999_USERNAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9690695690995168)
,p_name=>'Show-Hide'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_OTP_GERADO'
,p_condition_element=>'P9999_OTP_GERADO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9691179343995168)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_OTP,P9999_OTP_GERADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9691643754995169)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USERNAME,P9999_PASSWORD,P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9692168127995170)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142905875942542802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9692637815995170)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9676489909995151)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9693195256995170)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671789037995139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9693676072995171)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(142905875942542802)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9694124250995171)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671391859995138)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9694613379995171)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671391859995138)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9695132635995171)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671789037995139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9695621353995172)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USERNAME,P9999_PASSWORD,P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9696185419995172)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_OTP,P9999_OTP_GERADO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9696684185995172)
,p_event_id=>wwv_flow_imp.id(9690695690995168)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9676489909995151)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9682331801995161)
,p_name=>'ESQUECEU-Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9676489909995151)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9682832092995162)
,p_event_id=>wwv_flow_imp.id(9682331801995161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    L_EMAIL varchar(60);',
'    l_nova_senha varchar(60);',
'begin',
'    :P9999_ERRO := '''';',
'    :P9999_SUCESSO := '''';',
'    if :P9999_USERNAME is not null then',
'        Select EMAIL INTO L_EMAIL FROM ADM_USUARIO WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'        if L_EMAIL is not null then',
'            select dbms_random.string(''X'',10) into l_nova_senha from dual;',
'            UPDATE ADM_USUARIO SET SENHA = l_nova_senha WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'',
unistr('            :P9999_SUCESSO  := ''Senha tempor\00E1ria enviada para o e-mail ''||L_EMAIL ;'),
'',
'            APEX_MAIL.SEND(',
'            p_to        => L_EMAIL,',
'            p_from      => ''suporte@staffinformatica.com.br'',',
unistr('            p_subj      => ''Recupera\00E7\00E3o de senha de usu\00E1rio NG'','),
unistr('            p_body      => ''Recupera\00E7\00E3o de senha de usu\00E1rio NG'','),
unistr('            p_body_html => ''<strong>Ol\00E1 ''||:P9999_USERNAME||''</strong>,<br>''||'),
'                           ''<br>''||',
unistr('                           ''Segue sua senha tempor\00E1ria para acesso no sistema NG<br>''||'),
'                           ''<br>''||',
unistr('                           ''<strong>Senha tempor\00E1ria: ''||l_nova_senha||''</strong><br>''||'),
'                           ''<br>''||',
unistr('                           ''Para sua seguran\00E7a n\00E3o compartilhe sua senha.'''),
'        ',
'                       ',
'            );',
'            apex_mail.push_queue();',
'            :P9999_ALTERAR_SENHA := ''S'';',
'            :P9999_PASSWORD := '''';',
'        else',
unistr('            :P9999_ERRO  := ''Usu\00E1rio informado n\00E3o existe'';'),
'        end if;',
'    else',
unistr('        :P9999_ERRO  := ''Informe o usu\00E1rio'';    '),
'        :P9999_ALTERAR_SENHA := ''N'';',
'    end if;',
'    exception when others then',
unistr('        :P9999_ERRO := ''Usu\00E1rio informado n\00E3o existe'';'),
'end;'))
,p_attribute_02=>'P9999_USERNAME'
,p_attribute_03=>'P9999_SUCESSO,P9999_ERRO,P9999_ALTERAR_SENHA,P9999_PASSWORD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9683315236995163)
,p_event_id=>wwv_flow_imp.id(9682331801995161)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var erro = apex.item("P9999_ERRO").getValue();',
'var suce = apex.item("P9999_SUCESSO").getValue();',
'if (erro) {',
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "page",',
'            message: erro,',
'            unsafe: false',
'        }',
'    ]);',
'}',
'if (suce) {',
unistr('    $(''#P9999_PASSWORD'').attr("placeholder", ''Senha tempor\00E1ria '');'),
'    apex.message.showPageSuccess( suce );',
'    ',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9683884599995163)
,p_event_id=>wwv_flow_imp.id(9682331801995161)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_PASSWORD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9684242879995164)
,p_name=>'P9999_ALTERAR_SENHA-Change'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_ALTERAR_SENHA'
,p_condition_element=>'P9999_ALTERAR_SENHA'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'S'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9684718677995164)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_NOVA_SENHA,P9999_C_NOVA_SENHA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9685292745995165)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671391859995138)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9685775143995166)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9672594698995140)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9686240362995166)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9676489909995151)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9686752211995166)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USERNAME,P9999_REMEMBER,P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9687219709995166)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USERNAME,P9999_REMEMBER,P9999_PERSISTENT_AUTH'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9687790807995167)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9672127699995139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9688213730995167)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9672127699995139)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9688791770995167)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9672594698995140)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9689267390995168)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9676489909995151)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9689741481995168)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_NOVA_SENHA,P9999_C_NOVA_SENHA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9690298995995168)
,p_event_id=>wwv_flow_imp.id(9684242879995164)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(9671391859995138)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9699379889995174)
,p_name=>'ALTERAR_SENHA-Click'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9672594698995140)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9699829274995174)
,p_event_id=>wwv_flow_imp.id(9699379889995174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P9999_PASSWORD'').attr("placeholder", ''Senha'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9680322531995159)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9679956263995158)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_mensage varchar(60);',
'begin',
'    if :AUTENTICACAO_DOIS_FATORES = ''S'' THEN',
'        l_mensage := PKG_SEGURANCA.AUTH_OTP(:P9999_USERNAME, :P9999_OTP, CURRENT_TIMESTAMP);        ',
'        if l_mensage is not null then ',
'            apex_error.add_error (',
'            p_message          => l_mensage,',
'            p_display_location => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name   => '''');',
'        else',
'            apex_authentication.login(',
'                p_username => :P9999_USERNAME,',
'                p_password => :P9999_PASSWORD,',
'                p_set_persistent_auth => nvl(:P9999_PERSISTENT_AUTH, ''N'') = ''Y'' );',
'        end if;',
'    else',
'        apex_authentication.login(',
'                    p_username => :P9999_USERNAME,',
'                    p_password => :P9999_PASSWORD,',
'                    p_set_persistent_auth => nvl(:P9999_PERSISTENT_AUTH, ''N'') = ''Y'' );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P9999_ALTERAR_SENHA'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9681943794995160)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Altera senha'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    L_EMAIL varchar(60);',
'begin',
'    UPDATE ADM_USUARIO SET SENHA = :P9999_NOVA_SENHA WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'    Select EMAIL INTO L_EMAIL FROM ADM_USUARIO WHERE UPPER(USERNAME) = UPPER(:P9999_USERNAME);',
'    APEX_MAIL.SEND(',
'        p_to        => L_EMAIL,',
'        p_from      => ''suporte@staffinformatica.com.br'',',
unistr('        p_subj      => ''Altera\00E7\00E3o de senha de usu\00E1rio NG'','),
unistr('        p_body      => ''Altera\00E7\00E3o de senha de usu\00E1rio NG'','),
unistr('        p_body_html => ''<strong>Ol\00E1 ''||:P9999_USERNAME||''</strong>,<br>''||'),
'                       ''<br>''||',
unistr('                       ''Segue novos dados de usu\00E1rio para acesso ao NG<br>''||'),
'                       ''<br>''||',
unistr('                       ''<strong>Usu\00E1rio: ''||:P9999_USERNAME||''</strong><br>''||'),
'                       ''<strong>Senha: ''||:P9999_NOVA_SENHA||''</strong><br>''||',
'                       ''<br>''||',
unistr('                       ''Para sua seguran\00E7a n\00E3o compartilhe seus dados de acesso ao sistema NG''||'),
'                       ''<br>''||',
'                       ''<a href="https://geae26552a5af32-dbng.adb.sa-vinhedo-1.oraclecloudapps.com/ords/r/ngdev/ng/login" style="font-size: 14px;">Visite o NG</a>.''',
'        ',
'                       ',
'        );',
'        apex_mail.push_queue();',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9672594698995140)
,p_process_when=>'P9999_ALTERAR_SENHA'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Senha alterada com sucesso'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9681132204995159)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(9672127699995139)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9680742770995159)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9681593595995159)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_aut_dois_fatores varchar(60);',
'begin',
'    select nvl(valor,''N'') into l_aut_dois_fatores from ADM_PARAMETROS where codigo = 1;',
'    APEX_UTIL.SET_SESSION_STATE(''AUTENTICACAO_DOIS_FATORES'',l_aut_dois_fatores);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''AUTENTICACAO_DOIS_FATORES'',''N'');',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
