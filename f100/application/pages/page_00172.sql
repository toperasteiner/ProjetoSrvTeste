prompt --application/pages/page_00172
begin
--   Manifest
--     PAGE: 00172
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
 p_id=>172
,p_name=>'sup listagem apontamento de horas'
,p_alias=>'SUP-LISTAGEM-APONTAMENTO-DE-HORAS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221229184507'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29134823882137862)
,p_plug_name=>'Apontamento de horas'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle:margin-top-lg:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(75113103430460391)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(75028185922460325)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(75199870693460449)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82851054060880420296)
,p_plug_name=>'Listagem'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_imp.id(75117919850460393)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ID,',
'       A.ID_CHAMADO,',
'       A.ID_USUARIO,',
'       A.DESCRICAO,',
'       A.DATA,',
'       A.QTD_HORAS,',
'       A.MINUTOS,',
'       CASE WHEN C.STATUS != ''F'' THEN ''&D_COL_EXCLUIR.'' END AS Link_Excluir,',
'       CASE WHEN C.STATUS != ''F'' THEN ''&D_COL_EDITAR.'' END AS Link_Editar',
'  from ADM_APONTAMENTOS A',
'  JOIN ADM_USUARIO B ON B.ID=A.ID_USUARIO ',
'  JOIN ADM_CHAMADO C ON C.ID=A.ID_CHAMADO',
'  WHERE UPPER(B.USERNAME) = UPPER(V(''APP_USER''))',
'  ORDER BY ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('Apar\00EAncias')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(82851054162539420296)
,p_name=>unistr('Apar\00EAncias')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'Ir'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'NORTHONN.OLIVEIRA@STAFFINFORMATICA.COM.BR'
,p_internal_uid=>82845666379776423770
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32499997796727367)
,p_db_column_name=>'ID'
,p_display_order=>223
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29133971414137853)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>233
,p_column_identifier=>'BM'
,p_column_label=>unistr('N\00FAmero do chamado')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134037846137854)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>243
,p_column_identifier=>'BN'
,p_column_label=>'Id Usuario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134121924137855)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>253
,p_column_identifier=>'BO'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134217537137856)
,p_db_column_name=>'DATA'
,p_display_order=>263
,p_column_identifier=>'BP'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134307395137857)
,p_db_column_name=>'QTD_HORAS'
,p_display_order=>273
,p_column_identifier=>'BQ'
,p_column_label=>'Quantidade de horas'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134476659137858)
,p_db_column_name=>'MINUTOS'
,p_display_order=>283
,p_column_identifier=>'BR'
,p_column_label=>'Minutos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134532480137859)
,p_db_column_name=>'LINK_EDITAR'
,p_display_order=>293
,p_column_identifier=>'BS'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:171:P171_ID:#ID#'
,p_column_linktext=>'#LINK_EDITAR#'
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
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29134747624137861)
,p_db_column_name=>'LINK_EXCLUIR'
,p_display_order=>313
,p_column_identifier=>'BU'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:173:P173_ID:#ID#'
,p_column_linktext=>'#LINK_EXCLUIR#'
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
 p_id=>wwv_flow_imp.id(82850798674179202380)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'197968282'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_CHAMADO:DESCRICAO:DATA:QTD_HORAS:LINK_EDITAR:LINK_EXCLUIR'
,p_sort_column_1=>'NM_APARENCIA'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32504611196727373)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(82851054060880420296)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32505181105727373)
,p_event_id=>wwv_flow_imp.id(32504611196727373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82851054060880420296)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32505588427727374)
,p_event_id=>wwv_flow_imp.id(32504611196727373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_imp.component_end;
end;
/
