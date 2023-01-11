prompt --application/pages/page_00159
begin
--   Manifest
--     PAGE: 00159
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
 p_id=>159
,p_name=>unistr('sup movimenta\00E7\00F5es do chamado')
,p_alias=>unistr('SUP-MOVIMENTA\00C7\00D5ES-DO-CHAMADO')
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(75298964183688977)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221229194123'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(181497457460703816)
,p_plug_name=>unistr('Hist\00F3rico do chamado')
,p_region_template_options=>'#DEFAULT#:t-Wizard--showTitle:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(75117919850460393)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       ID_ANEXO,',
'       CASE ',
'       WHEN DESCRICAO=''Tipo do chamado: 1'' THEN ''Tipo do chamado: Erro''',
'       WHEN DESCRICAO=''Tipo do chamado: 2'' THEN ''Tipo do chamado: Melhoria''',
unistr('       WHEN DESCRICAO=''Chamado categorizado como: 1'' THEN ''Chamado categorizado como: N\00E3o \00E9 cr\00EDtico'' '),
unistr('       WHEN DESCRICAO=''Chamado categorizado como: 2'' THEN ''Chamado categorizado como: Est\00E1 impedindo uma funcionalidade imprescind\00EDvel'''),
unistr('       WHEN DESCRICAO=''Chamado categorizado como: 3'' THEN ''Chamado categorizado como: Est\00E1 impedindo o uso do NG de forma geral'' '),
unistr('       WHEN DESCRICAO=''Recorr\00EAncia: 1'' THEN ''Recorr\00EAncia: Esse problema ocorreu uma \00FAnica vez'''),
unistr('       WHEN DESCRICAO=''Recorr\00EAncia: 2'' THEN ''Recorr\00EAncia: Esse problema \00E9 reincidente'' '),
unistr('       WHEN DESCRICAO=''Simula\00E7\00E3o: 1'' THEN ''Simula\00E7\00E3o: Este problema pode ser reproduzido'' '),
unistr('       WHEN DESCRICAO=''Simula\00E7\00E3o: 2'' THEN ''Simula\00E7\00E3o: Este problema \00E9 aleat\00F3rio, n\00E3o consigo reproduzi-lo'' '),
unistr('       WHEN DESCRICAO=''Solu\00E7\00E3o de contorno: 1'' THEN ''Solu\00E7\00E3o de contorno: Temos solu\00E7\00E3o de contorno para o problema reportado'' '),
unistr('       WHEN DESCRICAO=''Solu\00E7\00E3o de contorno: 2'' THEN ''Solu\00E7\00E3o de contorno: N\00E3o temos uma solu\00E7\00E3o de contorno para esse problema'' '),
'       WHEN DESCRICAO=''Prioridade definida: 1'' THEN ''Prioridade definida: Emergente''',
'       WHEN DESCRICAO=''Prioridade definida: 2'' THEN ''Prioridade definida: Muito urgente''',
'       WHEN DESCRICAO=''Prioridade definida: 3'' THEN ''Prioridade definida: Urgente''',
'       WHEN DESCRICAO=''Prioridade definida: 4'' THEN ''Prioridade definida: Pouco urgente''',
unistr('       WHEN DESCRICAO=''Prioridade definida: 5'' THEN ''Prioridade definida: N\00E3o urgente'''),
'       WHEN DESCRICAO=''Prioridade alterada: de 1 para 2'' THEN ''Prioridade alterada: de Emergente para Muito urgente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 1 para 3'' THEN ''Prioridade alterada: de Emergente para Urgente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 1 para 4'' THEN ''Prioridade alterada: de Emergente para Pouco urgente''',
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 1 para 5'' THEN ''Prioridade alterada: de Emergente para N\00E3o urgente'''),
'       WHEN DESCRICAO=''Prioridade alterada: de 2 para 1'' THEN ''Prioridade alterada: de Muito urgente para Emergente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 2 para 3'' THEN ''Prioridade alterada: de Muito urgente para Urgente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 2 para 4'' THEN ''Prioridade alterada: de Muito urgente para Pouco urgente''',
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 2 para 5'' THEN ''Prioridade alterada: de Muito urgente para N\00E3o urgente'''),
'       WHEN DESCRICAO=''Prioridade alterada: de 3 para 1'' THEN ''Prioridade alterada: de Urgente para Emergente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 3 para 2'' THEN ''Prioridade alterada: de Urgente para Muito urgente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 3 para 4'' THEN ''Prioridade alterada: de Urgente para Pouco urgente''',
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 3 para 5'' THEN ''Prioridade alterada: de Urgente para N\00E3o urgente'''),
'       WHEN DESCRICAO=''Prioridade alterada: de 4 para 1'' THEN ''Prioridade alterada: de Pouco urgente para Emergente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 4 para 2'' THEN ''Prioridade alterada: de Pouco urgente para Muito urgente''',
'       WHEN DESCRICAO=''Prioridade alterada: de 4 para 3'' THEN ''Prioridade alterada: de Pouco urgente para Urgente''',
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 4 para 5'' THEN ''Prioridade alterada: de Pouco urgente para N\00E3o urgente'''),
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 5 para 1'' THEN ''Prioridade alterada: de N\00E3o urgente para Emergente'''),
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 5 para 2'' THEN ''Prioridade alterada: de N\00E3o urgente para Muito Urgente'''),
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 5 para 3'' THEN ''Prioridade alterada: de N\00E3o urgente para Urgente'''),
unistr('       WHEN DESCRICAO=''Prioridade alterada: de 5 para 4'' THEN ''Prioridade alterada: de N\00E3o urgente para Pouco urgente'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 1 para 2'' THEN ''\00C1rea do chamado alterada: de Financeiro para Help Desk'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 1 para 3'' THEN ''\00C1rea do chamado alterada: de Financeiro para Comercial'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 1 para 4'' THEN ''\00C1rea do chamado alterada: de Financeiro para RH'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 2 para 1'' THEN ''\00C1rea do chamado alterada: de Help Desk para Financeiro'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 2 para 3'' THEN ''\00C1rea do chamado alterada: de Help Desk para Comercial'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 2 para 4'' THEN ''\00C1rea do chamado alterada: de Help Desk para RH'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 3 para 1'' THEN ''\00C1rea do chamado alterada: de Comercial para Financeiro'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 3 para 2'' THEN ''\00C1rea do chamado alterada: de Comercial para Help Desk'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 3 para 4'' THEN ''\00C1rea do chamado alterada: de Comercial para RH'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 4 para 1'' THEN ''\00C1rea do chamado alterada: de RH para Financeiro'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 4 para 2'' THEN ''\00C1rea do chamado alterada: de RH para Help Desk'''),
unistr('       WHEN DESCRICAO=''\00C1rea de destino alterada: de 4 para 3'' THEN ''\00C1rea do chamado alterada: de RH para Comercial''       '),
'       ELSE DESCRICAO END AS DESCRICAO,',
'       DATA',
'  from ADM_CHAMADO_MOVIMENTACAO',
'  where ID_CHAMADO = :P159_ID_CHAMADO',
'  ORDER BY DATA DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Movimenta\00E7\00F5es')
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
 p_id=>wwv_flow_imp.id(181497556686703817)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>176109773923707291
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76418297600135625)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76418765864135626)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('C\00F3digo do chamado')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76419160823135627)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Usu\00E1rio')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(76422039100135632)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76419573434135627)
,p_db_column_name=>'ID_ANEXO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Anexo'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76419918341135628)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(76421471219135630)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(76420303387135628)
,p_db_column_name=>'DATA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY HH24:MI:SS'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(181908667012146182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'359047'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ID_CHAMADO:ID_USUARIO:ID_ANEXO:DESCRICAO:DATA'
,p_sort_column_1=>'DATA'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76421008836135630)
,p_name=>'P159_ID_CHAMADO'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
