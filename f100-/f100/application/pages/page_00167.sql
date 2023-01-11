prompt --application/pages/page_00167
begin
--   Manifest
--     PAGE: 00167
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>3800482787096639
,p_default_application_id=>100
,p_default_id_offset=>5387782762996526
,p_default_owner=>'NG'
);
wwv_flow_imp_page.create_page(
 p_id=>167
,p_name=>'sup chat chamado'
,p_alias=>'SUP-CHAT-CHAMADO'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-labelContainer{',
'    height: 0px;',
'}',
'',
'.SRV-margin-top-5{',
'    margin-top: 5px;',
'}',
'',
'',
'.t-Button .a-Icon {',
'    --a-icon-size: var(--a-button-icon-size);',
'    color: white;',
'}',
'/* BEGIN comments/chat region styles */',
'.t-Chat .t-Chat--own .t-Comments-icon {',
'  margin-right: 0;',
'  margin-left: 12px;',
'}',
' ',
'.t-Chat .t-Chat--own {',
'  flex-direction: row-reverse;',
'}',
' ',
'.t-Chat .t-Chat--own .t-Comments-body {',
'  align-items: flex-end;',
'}',
' ',
'.t-Chat .t-Chat--own .t-Comments-comment:after {',
'  border-left-color: var(--ut-comment-chat-background-color);',
'  border-right-color: rgba(0,0,0,0);',
'  right: none;',
'  left: 100%;',
'}',
'/* END comments/chat region styles */',
'',
'/*a{',
'    color: var(--ut-text-color);',
'} */',
''))
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221212183516'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53201515992889695617)
,p_plug_name=>'Visualizar chamado'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ADM_CHAMADO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245659204763740098)
,p_plug_name=>'Chat'
,p_region_name=>'functional_chat'
,p_parent_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(75073977913460370)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P167_STATUS'
,p_plug_display_when_cond2=>'g'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(245658208826740088)
,p_name=>'Chat messages'
,p_region_name=>'chat-messages'
,p_parent_plug_id=>wwv_flow_imp.id(245659204763740098)
,p_template=>wwv_flow_imp.id(75100507949460384)
,p_display_sequence=>10
,p_region_css_classes=>'t-Chat'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ID,',
'       A.ID_CHAMADO,',
'       A.ID_USUARIO,',
'       USERNAME AS USER_NAME,',
'       MENSAGEM AS COMMENT_TEXT,',
'       DATA AS COMMENT_DATE,',
'       NOTIFICACAO,      ',
'       apex_string.get_initials(USERNAME) user_icon,  ',
'       NULL                 as COMMENT_ATTACHMENTS,',
'       NULL                 as attribute_1,',
'       NULL                 as attribute_2,',
'       NULL                 as attribute_3,',
'       NULL                 as attribute_4, ',
'       CASE ANEXO WHEN ''S'' THEN ''Visualizar anexos'' END as actions,',
'       case UPPER(USERNAME)',
'       when UPPER(V(''APP_USER'')) then ''t-Chat--own''',
'       else null',
'       end comment_modifiers       ',
'  from ADM_CHAMADO_CHAT A',
'  join ADM_USUARIO B on B.ID=A.ID_USUARIO       ',
'  where A.ID_CHAMADO=:P167_ID',
'  order by A.DATA ASC;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P167_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(75149207854460413)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76552964077270850)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76553321416270851)
,p_query_column_id=>2
,p_column_alias=>'ID_CHAMADO'
,p_column_display_sequence=>20
,p_column_heading=>'Id Chamado'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76553776792270851)
,p_query_column_id=>3
,p_column_alias=>'ID_USUARIO'
,p_column_display_sequence=>30
,p_column_heading=>'Id Usuario'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76554161453270851)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>160
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76554526307270851)
,p_query_column_id=>5
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>260
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76554959112270852)
,p_query_column_id=>6
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>170
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH24:MI:SS'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76555355837270852)
,p_query_column_id=>7
,p_column_alias=>'NOTIFICACAO'
,p_column_display_sequence=>180
,p_column_heading=>'Notificacao'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76555752904270852)
,p_query_column_id=>8
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>90
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76556139374270853)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_ATTACHMENTS'
,p_column_display_sequence=>270
,p_column_heading=>'Comment Attachments'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:ADM_CHAMADO_ANEXO:ANEXO:ID::MIMETYPE:FILENAME:::attachment::'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76556512731270853)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>200
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76556920106270853)
,p_query_column_id=>11
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>210
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76557338862270854)
,p_query_column_id=>12
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>220
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76557683786270854)
,p_query_column_id=>13
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>230
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76558177817270854)
,p_query_column_id=>14
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>190
,p_column_heading=>'Actions'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:166:&SESSION.::&DEBUG.:166:P166_ID:#ID_CHAMADO#'
,p_column_linktext=>'#ACTIONS#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(76558571176270855)
,p_query_column_id=>15
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>150
,p_column_heading=>'Comment Modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(245659545831740101)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(245659204763740098)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(75100507949460384)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76559185101270855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(245659545831740101)
,p_button_name=>'SEND'
,p_button_static_id=>'post-message-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(75197483695460446)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enviar mensagem'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'SRV-margin-top-5'
,p_icon_css_classes=>'fa-chevron-circle-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76559588729270856)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(245659545831740101)
,p_button_name=>'ANEXO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(75197483695460446)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anexar documento'
,p_button_redirect_url=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:108:P108_ID_CHAMADO:&P167_ID.'
,p_button_condition=>'P167_STATUS'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'SRV-margin-top-5'
,p_icon_css_classes=>'fa-paperclip'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76541391267270839)
,p_name=>'P167_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76541846294270841)
,p_name=>'P167_ID_EMPRESA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'ID_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76542183154270841)
,p_name=>'P167_ID_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'ID_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76542670338270841)
,p_name=>'P167_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76543034340270841)
,p_name=>'P167_TP_CHAMADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76543452659270842)
,p_name=>'P167_URGENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76543846867270842)
,p_name=>'P167_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76544263390270842)
,p_name=>'P167_VERSAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'VERSAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76544637668270842)
,p_name=>'P167_PACTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'PACTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76545020050270843)
,p_name=>'P167_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'RELEASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76545447777270843)
,p_name=>'P167_RECORRENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76545794919270843)
,p_name=>'P167_SIMULACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76546264636270843)
,p_name=>'P167_CONTORNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76546633906270843)
,p_name=>'P167_DT_ABERTURA'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'DT_ABERTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76547043198270844)
,p_name=>'P167_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_item_source_plug_id=>wwv_flow_imp.id(53201515992889695617)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76560017164270856)
,p_name=>'P167_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(245659545831740101)
,p_placeholder=>'Digite sua mensagem...'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(75195662379460444)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76560435892270857)
,p_name=>'Post message on button click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76559185101270855)
,p_condition_element=>'P167_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76560924848270857)
,p_event_id=>wwv_flow_imp.id(76560435892270857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_usuario NUMBER;     ',
'    v_id_chamado NUMBER;    ',
'BEGIN',
'    SELECT ID INTO v_id_usuario FROM ADM_USUARIO WHERE UPPER(USERNAME)=UPPER(V(''APP_USER''));  ',
'    v_id_chamado := :P167_ID;         ',
'    INSERT INTO ADM_CHAMADO_CHAT (ID_CHAMADO, ID_USUARIO, MENSAGEM, DATA, NOTIFICACAO)',
'    VALUES (v_id_chamado, v_id_usuario, :P167_MESSAGE, CURRENT_DATE, ''S'');    ',
'    COMMIT;',
'END;'))
,p_attribute_02=>'P167_ID,P167_MESSAGE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76561445314270858)
,p_event_id=>wwv_flow_imp.id(76560435892270857)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("chat-messages").refresh();',
'apex.item(P167_MESSAGE).setValue("");',
'apex.item(P167_MESSAGE).enable();',
'apex.item(P167_MESSAGE).setFocus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76561876622270858)
,p_name=>'Post message on enter key down'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76559185101270855)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76562317586270858)
,p_event_id=>wwv_flow_imp.id(76561876622270858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(76559185101270855)
,p_attribute_01=>'$(''#post-message-btn'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76562760064270858)
,p_name=>unistr('Reset notifica\00E7\00E3o')
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'SELECT ID_CHAMADO FROM ADM_CHAMADO_CHAT WHERE ID_CHAMADO=:P167_ID;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76563230310270859)
,p_event_id=>wwv_flow_imp.id(76562760064270858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_id_usuario NUMBER;',
'    v_usuario NUMBER;',
'    v_id_chamado NUMBER;    ',
'BEGIN',
'    v_id_chamado := :P167_ID;',
'    SELECT ID INTO v_id_usuario FROM ADM_USUARIO WHERE UPPER(USERNAME)=UPPER(V(''APP_USER''));   ',
'    SELECT ID_USUARIO INTO v_usuario FROM ADM_CHAMADO_CHAT WHERE ID_CHAMADO=v_id_chamado AND ROWNUM=1; ',
'    IF v_usuario IS NOT NULL THEN',
'    IF v_id_usuario != v_usuario THEN ',
'        UPDATE ADM_CHAMADO_CHAT',
'        SET NOTIFICACAO=''N''',
'        WHERE ID_CHAMADO=v_id_chamado;       ',
'    END IF;',
'    END IF;',
'  ',
'END;',
'',
''))
,p_attribute_02=>'P167_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76563631910270859)
,p_name=>'Chat em tempo real'
,p_event_sequence=>90
,p_condition_element=>'P167_STATUS'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'g'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76564131142270859)
,p_event_id=>wwv_flow_imp.id(76563631910270859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function() {',
'  apex.region("chat-messages").refresh(1);',
'}, 1000);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13863559864535676)
,p_name=>'Clear'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19924545957719527)
,p_event_id=>wwv_flow_imp.id(13863559864535676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(P167_MESSAGE).setValue("");',
'apex.item(P167_MESSAGE).enable();',
'apex.item(P167_MESSAGE).setFocus();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76551902759270847)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53201515992889695617)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
