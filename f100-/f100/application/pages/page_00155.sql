prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
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
 p_id=>155
,p_name=>'sup editar dados dos envolvidos'
,p_alias=>'SUP-EDITAR-DADOS-DOS-ENVOLVIDOS'
,p_page_mode=>'MODAL'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P122_IES_QUANDO_EXIBIR_CONTAINER" ).addClass( "is-active" );'
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221214151417'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53238247198765937828)
,p_plug_name=>'Editar convidados'
,p_icon_css_classes=>'fa-plus-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--noIcon:t-Alert--info:t-Form--slimPadding:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(75059706586460361)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(204134433991562917)
,p_plug_name=>'Externos'
,p_parent_plug_id=>wwv_flow_imp.id(53238247198765937828)
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
'  WHERE ID_CHAMADO=:P155_ID AND ID_USUARIO IS NULL AND NOME IS NOT NULL AND EMAIL IS NOT NULL;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P155_ID'
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
 p_id=>wwv_flow_imp.id(204134527144562918)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>198746744381566392
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76306747807004517)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76307168662004519)
,p_db_column_name=>'NOME'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>unistr('N\00E3o-usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76307494819004519)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76307923033004519)
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
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(206830105666650855)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'609491'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:LINKEXCLUIR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(252356859893854907)
,p_plug_name=>'Convidados'
,p_parent_plug_id=>wwv_flow_imp.id(53238247198765937828)
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
'       UPPER(A.NOME)||'' ''||UPPER(SOBRENOME) AS NOME,',
'       USUARIO_PRINCIPAL,          ',
'       A.EMAIL,        ',
'       CASE WHEN USUARIO_PRINCIPAL = ''N'' THEN ''&D_COL_EXCLUIR.'' END AS Linkexcluir',
'  from ADM_CHAMADO_ENVOLVIDOS E',
'  join ADM_USUARIO A',
'  ON A.ID=E.ID_USUARIO',
'  where ID_CHAMADO = :P155_ID AND ID_USUARIO IS NOT NULL AND USUARIO_PRINCIPAL=''N'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P155_ID'
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
 p_id=>wwv_flow_imp.id(252357034386854908)
,p_max_row_count=>'1000000'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>800
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>246969251623858382
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76310158334004523)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76310545033004523)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76308931313004521)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>unistr('Id usu\00E1rio')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76309758584004522)
,p_db_column_name=>'NOME'
,p_display_order=>50
,p_column_identifier=>'Q'
,p_column_label=>unistr('Usu\00E1rio NG')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76309344407004522)
,p_db_column_name=>'USUARIO_PRINCIPAL'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>unistr('Usu\00E1rio principal')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(75434025942733517)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76311374727004524)
,p_db_column_name=>'EMAIL'
,p_display_order=>90
,p_column_identifier=>'S'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76310963768004523)
,p_db_column_name=>'LINKEXCLUIR'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:127:P127_ID:#ID#'
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
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(252410691618986935)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'224547'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:LINKEXCLUIR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76295456903004508)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_image_alt=>'Fechar'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76312061055004525)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(252356859893854907)
,p_button_name=>'ADICIONAR(ZOOM)'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&D_BTN_NOVO.'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:163:&SESSION.::&DEBUG.:RR,163:P163_ID_CHAMADO:&P155_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76312440247004525)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(252356859893854907)
,p_button_name=>'Email'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(75198229077460447)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'E-mail externo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:160:P160_ID_CHAMADO:&P155_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19925581600719537)
,p_name=>'P155_EMAILS'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76295862682004509)
,p_name=>'P155_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76296194822004509)
,p_name=>'P155_VERSAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'VERSAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76296634495004509)
,p_name=>'P155_RELEASE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'RELEASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76297015704004510)
,p_name=>'P155_RECORRENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76297439057004510)
,p_name=>'P155_URGENCIA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76297859499004510)
,p_name=>'P155_ID_EMPRESA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'ID_EMPRESA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76298260681004510)
,p_name=>'P155_ID_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'ID_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76298648180004510)
,p_name=>'P155_ID_ATENDENTE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'ID_ATENDENTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76299054330004511)
,p_name=>'P155_TP_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76299453757004511)
,p_name=>'P155_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76299832711004511)
,p_name=>'P155_PACTH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'PACTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76300257948004511)
,p_name=>'P155_SIMULACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76300665893004512)
,p_name=>'P155_CONTORNO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76301040875004512)
,p_name=>'P155_DT_ABERTURA'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_item_source_plug_id=>wwv_flow_imp.id(53238247198765937828)
,p_source=>'DT_ABERTURA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76313255630004526)
,p_name=>'Edit envolvidos'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(252356859893854907)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76313704536004527)
,p_event_id=>wwv_flow_imp.id(76313255630004526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(252356859893854907)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76314107366004528)
,p_name=>'Cancel dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76295456903004508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76314596126004528)
,p_event_id=>wwv_flow_imp.id(76314107366004528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76314990582004528)
,p_name=>unistr('Refresh ap\00F3s incluir')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76312440247004525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76315568442004528)
,p_event_id=>wwv_flow_imp.id(76314990582004528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204134433991562917)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19926169293719543)
,p_name=>'Edit externos'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(204134433991562917)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19926257981719544)
,p_event_id=>wwv_flow_imp.id(19926169293719543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204134433991562917)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19925613272719538)
,p_name=>'New'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19925720483719539)
,p_event_id=>wwv_flow_imp.id(19925613272719538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P155_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P155_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P155_EMAILS IS NULL THEN',
'            :P155_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P155_EMAILS := :P155_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P155_ID'
,p_attribute_03=>'P155_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19925914745719541)
,p_name=>'New_1'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(204134433991562917)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19925992226719542)
,p_event_id=>wwv_flow_imp.id(19925914745719541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P155_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P155_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P155_EMAILS IS NULL THEN',
'            :P155_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P155_EMAILS := :P155_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P155_ID'
,p_attribute_03=>'P155_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19926748306719549)
,p_name=>'New_1_1'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(252356859893854907)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19926811216719550)
,p_event_id=>wwv_flow_imp.id(19926748306719549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P155_EMAILS := '''';',
'    FOR REP IN (Select DISTINCT EMAIL',
'                    FROM ADM_CHAMADO_ENVOLVIDOS ',
'                    where ID_CHAMADO = :P155_ID AND EMAIL IS NOT NULL',
'                UNION',
'                SELECT EMAIL',
'                    FROM ADM_USUARIO',
'                    WHERE UPPER(USERNAME) = UPPER(coalesce(sys_context(''APEX$SESSION'',''APP_USER''),user))',
'                )',
'    LOOP',
'        IF :P155_EMAILS IS NULL THEN',
'            :P155_EMAILS := REP.EMAIL;',
'        ELSE',
'            :P155_EMAILS := :P155_EMAILS || '','' || REP.EMAIL;',
'        END IF;',
'    END LOOP;',
'END;'))
,p_attribute_02=>'P155_ID'
,p_attribute_03=>'P155_EMAILS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19926408352719546)
,p_name=>unistr('Refresh ap\00F3s incluir externo')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76312440247004525)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19926547138719547)
,p_event_id=>wwv_flow_imp.id(19926408352719546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(204134433991562917)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76306068150004515)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(53238247198765937828)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dados do anexo'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76312858357004526)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76305659006004515)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53238247198765937828)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Incluir tutorial'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
