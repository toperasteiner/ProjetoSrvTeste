prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_name=>'sup dados dos convidados'
,p_alias=>'SUP-DADOS-DOS-CONVIDADOS'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221215122519'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53208784765598479607)
,p_plug_name=>'Convidar outras pessoas para acompanhar'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_EMPRESA,',
'       ID_STATUS,',
'       ID_ATENDENTE,',
'       TP_CHAMADO,',
'       URGENCIA,       ',
'       CO_PROGRAMA,',
'       VERSAO,',
'       PACTH,',
'       RELEASE,',
'       RECORRENCIA,',
'       SIMULACAO,',
'       CONTORNO,',
'       DT_ABERTURA,',
'       STATUS,',
'       USUARIO,',
'       TITULO,',
'       DESCRICAO',
'  from ADM_CHAMADO',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203245201276291887)
,p_plug_name=>'Externos'
,p_parent_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(75098471144460383)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,       ',
'       NOME,',
'       EMAIL,',
'       ''&D_COL_EXCLUIR.'' AS LinkExcluir',
'  from ADM_CHAMADO_ENVOLVIDOS',
'  WHERE ID_CHAMADO=:P121_ID AND ID_USUARIO IS NULL AND NOME IS NOT NULL AND EMAIL IS NOT NULL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P121_ID'
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
 p_id=>wwv_flow_imp.id(203245308946291888)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>197857526183295362
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75420501871733506)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75420939689733507)
,p_db_column_name=>'NOME'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00E3o-usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75421363300733508)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75421758653733508)
,p_db_column_name=>'LINKEXCLUIR'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:168:P168_ID:#ID#'
,p_column_linktext=>'#LINKEXCLUIR#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205642163068088861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'606488'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:LINKEXCLUIR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(222894426726396686)
,p_plug_name=>'Envolvidos'
,p_parent_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(75098471144460383)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select E.ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       UPPER(A.NOME)||'' ''||UPPER(SOBRENOME) AS NOME,       ',
'       USUARIO_PRINCIPAL,',
'       A.EMAIL,',
'       CASE WHEN USUARIO_PRINCIPAL = ''N'' THEN ''&D_COL_EXCLUIR.'' END AS Linkexcluir',
'  from ADM_CHAMADO_ENVOLVIDOS E',
'  join ADM_USUARIO A',
'  ON A.ID=E.ID_USUARIO',
'  where ID_CHAMADO = :P121_ID AND ID_USUARIO IS NOT NULL AND USUARIO_PRINCIPAL!=''S'' OR E.ID IN (:P121_NEW);'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P121_ID'
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
 p_id=>wwv_flow_imp.id(222894601219396687)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('N\00E3o h\00E1 usu\00E1rios NG adicionados!')
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>217506818456400161
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75423902677733511)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75424348352733511)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75422729409733510)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>unistr('Id usu\00E1rio')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75423147745733510)
,p_db_column_name=>'USUARIO_PRINCIPAL'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>unistr('Usu\00E1rio principal?')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(75434025942733517)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75423494982733510)
,p_db_column_name=>'NOME'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>unistr('Usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75425176814733512)
,p_db_column_name=>'EMAIL'
,p_display_order=>90
,p_column_identifier=>'U'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(75424709594733511)
,p_db_column_name=>'LINKEXCLUIR'
,p_display_order=>100
,p_column_identifier=>'T'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:134:P134_ID:#ID#'
,p_column_linktext=>'#LINKEXCLUIR#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(222948258451528714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224547'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:LINKEXCLUIR'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(79902285835535635280)
,p_plug_name=>unistr('Solicita\00E7\00E3o de suporte')
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(75320238085701245)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(75190271055460440)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75407689886733494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Gravar'
,p_button_position=>'CREATE'
,p_button_condition=>'P121_TP_CHAMADO'
,p_button_condition2=>'2'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75408105078733494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_PROSSEGUIR.'
,p_button_position=>'CREATE'
,p_button_condition=>'P121_TP_CHAMADO'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75408494698733494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_image_alt=>'Voltar'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123:P123_ID:&P121_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75425830462733512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(222894426726396686)
,p_button_name=>'ADICIONAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_NOVO.'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:161:P161_ID_CHAMADO:&P121_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(75426204809733512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(222894426726396686)
,p_button_name=>'EMAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E-mail externo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:111:P111_ID_CHAMADO:&P121_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(75433709735733517)
,p_branch_name=>'Go to 125'
,p_branch_action=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:125:P125_ID:&P121_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(75408105078733494)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22258585315944929)
,p_name=>'P121_EMAILS'
,p_item_sequence=>1
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22259941544944942)
,p_name=>'P121_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22260019982944943)
,p_name=>'P121_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22260084831944944)
,p_name=>'P121_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75408943590733494)
,p_name=>'P121_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75409361893733495)
,p_name=>'P121_VERSAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'VERSAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75409740716733495)
,p_name=>'P121_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'RELEASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75410122354733495)
,p_name=>'P121_RECORRENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75410504627733496)
,p_name=>'P121_URGENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75410887739733496)
,p_name=>'P121_ID_EMPRESA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'ID_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411375666733496)
,p_name=>'P121_ID_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'ID_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75411727331733496)
,p_name=>'P121_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75412142033733500)
,p_name=>'P121_TP_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75412523141733501)
,p_name=>'P121_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75412939437733501)
,p_name=>'P121_PACTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'PACTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75413320578733501)
,p_name=>'P121_SIMULACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75413727400733502)
,p_name=>'P121_CONTORNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75414140857733502)
,p_name=>'P121_DT_ABERTURA'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'DT_ABERTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(75414509838733502)
,p_name=>'P121_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_item_source_plug_id=>wwv_flow_imp.id(53208784765598479607)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75427735465733514)
,p_name=>'Edit envolvidos'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(222894426726396686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75428255972733514)
,p_event_id=>wwv_flow_imp.id(75427735465733514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(222894426726396686)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75428659145733514)
,p_name=>'Load'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75429137584733514)
,p_event_id=>wwv_flow_imp.id(75428659145733514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'&ON_DISABLE_CLOSE.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22258715437944930)
,p_event_id=>wwv_flow_imp.id(75428659145733514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P121_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P121_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P121_EMAILS IS NULL THEN',
'            :P121_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P121_EMAILS := :P121_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P121_ID'
,p_attribute_03=>'P121_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75429574535733515)
,p_name=>'CLOSE-click'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'parent.$(''.ui-dialog-titlebar-close'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75429986958733515)
,p_event_id=>wwv_flow_imp.id(75429574535733515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('O chamado n\00E3o ser\00E1 aberto, mas voc\00EA poder\00E1 continuar a digita\00E7\00E3o.')
,p_attribute_02=>unistr('Aten\00E7\00E3o!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75430578509733515)
,p_event_id=>wwv_flow_imp.id(75429574535733515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75430888105733515)
,p_name=>'Edit externos'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(222894426726396686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75431453021733516)
,p_event_id=>wwv_flow_imp.id(75430888105733515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203245201276291887)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75431806097733516)
,p_name=>unistr('Refresh  ap\00F3s excluir')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(203245201276291887)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75432335304733516)
,p_event_id=>wwv_flow_imp.id(75431806097733516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(203245201276291887)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(75432712797733516)
,p_name=>unistr('Refresh ap\00F3s adicionar')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(75426204809733512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(75433218687733516)
,p_event_id=>wwv_flow_imp.id(75432712797733516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53208784765598479607)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22258823043944931)
,p_name=>'After refresh'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(53208784765598479607)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22258980960944932)
,p_event_id=>wwv_flow_imp.id(22258823043944931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P121_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P121_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P121_EMAILS IS NULL THEN',
'            :P121_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P121_EMAILS := :P121_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P121_ID'
,p_attribute_03=>'P121_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75419795641733505)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53208784765598479607)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dados do anexo'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75427328339733513)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Status aberto'
,p_process_sql_clob=>'#OWNER#.PKG_SUPORTE.STATUS(:P121_ID);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(75407689886733494)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13861730803535658)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>'Envia email'
,p_attribute_01=>'suporte@staffinformatica.com.br'
,p_attribute_02=>'&P121_EMAILS.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(17662988002958857)
,p_attribute_12=>'{"USUARIO_NOME":"&P121_USUARIO.","ID_CHAMADO":"&P121_ID.","TITULO":"&P121_TITULO.","DESCRICAO":"&P121_DESCRICAO."}'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(75407689886733494)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75426944537733513)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(75407689886733494)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(75419384634733505)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53208784765598479607)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
