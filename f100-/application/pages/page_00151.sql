prompt --application/pages/page_00151
begin
--   Manifest
--     PAGE: 00151
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
 p_id=>151
,p_name=>'sup visualizar dados dos envolvidos'
,p_alias=>'SUP-VISUALIZAR-DADOS-DOS-ENVOLVIDOS'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(69911181420692451)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221206113837'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53232432876265677369)
,p_plug_name=>'Visualizar Convidados'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
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
 p_id=>wwv_flow_imp.id(201658348522873171)
,p_plug_name=>'Externos'
,p_parent_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,       ',
'       NOME,',
'       EMAIL',
'  from ADM_CHAMADO_ENVOLVIDOS',
'  WHERE ID_CHAMADO=:P151_ID AND ID_USUARIO IS NULL AND NOME IS NOT NULL AND EMAIL IS NOT NULL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Externos'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(201658402326873172)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>201658402326873172
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71141838474246510)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71142282379246511)
,p_db_column_name=>'NOME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00E3o-usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71142622114246511)
,p_db_column_name=>'EMAIL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(201671698794977040)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'609555'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NOME:EMAIL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(246542537393594448)
,p_plug_name=>'Convidados'
,p_parent_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select E.ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       UPPER(A.NOME)||'' ''||UPPER(SOBRENOME) AS NOME,',
'       USUARIO_PRINCIPAL,',
'       A.EMAIL      ',
'  from ADM_CHAMADO_ENVOLVIDOS E',
'  join ADM_USUARIO A',
'  ON A.ID=E.ID_USUARIO',
'  where ID_CHAMADO = :P151_ID',
'  AND USUARIO_PRINCIPAL=''N'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P151_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Anexos'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(246542711886594449)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'Nenhum convidado adicionado!'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>246542711886594449
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71144459235246513)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71144899354246513)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71143657651246512)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>unistr('Id usu\00E1rio')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71144003836246513)
,p_db_column_name=>'USUARIO_PRINCIPAL'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>unistr('Usu\00E1rio principal?')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(70046243179736991)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71145271883246514)
,p_db_column_name=>'NOME'
,p_display_order=>120
,p_column_identifier=>'V'
,p_column_label=>unistr('Usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71145619374246514)
,p_db_column_name=>'EMAIL'
,p_display_order=>130
,p_column_identifier=>'W'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(246596369118726476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224547'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79925933946202833042)
,p_plug_name=>unistr('Visualizar solicita\00E7\00E3o de suporte')
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_imp.id(69671923823463835)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(71064510356191634)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(69802488292463914)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71130500247246503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Fechar'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71130989640246503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'&D_BTN_VOLTAR.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.:153:P153_ID:&P151_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71131303552246503)
,p_name=>'P151_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71131738713246503)
,p_name=>'P151_VERSAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'VERSAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71132167228246504)
,p_name=>'P151_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'RELEASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71132558984246504)
,p_name=>'P151_RECORRENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71132940139246504)
,p_name=>'P151_URGENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71133390431246504)
,p_name=>'P151_ID_EMPRESA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'ID_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71133771823246505)
,p_name=>'P151_ID_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'ID_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71134140071246505)
,p_name=>'P151_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71134504148246505)
,p_name=>'P151_TP_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71134915598246505)
,p_name=>'P151_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71135371357246506)
,p_name=>'P151_PACTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'PACTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71135734569246506)
,p_name=>'P151_SIMULACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71136198407246506)
,p_name=>'P151_CONTORNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71136553099246507)
,p_name=>'P151_DT_ABERTURA'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_item_source_plug_id=>wwv_flow_imp.id(53232432876265677369)
,p_source=>'DT_ABERTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71146686223246515)
,p_name=>'Edit envolvidos'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(246542537393594448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71147193986246515)
,p_event_id=>wwv_flow_imp.id(71146686223246515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(246542537393594448)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71147566923246516)
,p_name=>'Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71130500247246503)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71148073048246516)
,p_event_id=>wwv_flow_imp.id(71147566923246516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71141123700246509)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53232432876265677369)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
