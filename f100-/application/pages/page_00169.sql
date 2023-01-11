prompt --application/pages/page_00169
begin
--   Manifest
--     PAGE: 00169
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
 p_id=>169
,p_name=>unistr('sup visualizar chamado avan\00E7ado')
,p_alias=>unistr('SUP-VISUALIZAR-CHAMADO-AVAN\00C7ADO')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ASSUNTO").appendTo("#PAINEL1" );',
'$("#CONVIDADOS").appendTo("#PAINEL2" );',
'$("#NOVA_INFORMACAO").appendTo("#PAINEL3" );',
'$("#COL_NOME" ).hide();',
'$("#COL_ANEXO" ).hide();',
'$("#COL_NOME_CONVIDADO" ).hide();',
'$("#COL_EMAIL" ).hide();',
'$("#COL_TITULO" ).hide();',
'$("#COL_DESCRICAO" ).hide();',
'$("#COL_DATA" ).hide();',
'/*$(".a-IRR-tableContainer").attr("style","background-color:white;");',
'$(".a-IRR-noDataMsg").attr("style","background-color:white;");*/'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'a {',
'    font-size: 16px;',
'    //font-style: italic;',
'    font-weight: 100;',
'}',
'',
'.a-IRR-tableContainer {',
'    background-color: transparent !IMPORTANT;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20221207113524'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53591340192781825450)
,p_plug_name=>'Geral'
,p_region_name=>'GERAL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69712725186463858)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'	<div style="width:400px">',
'		<h3 style="margin: 15px;display: inline-block;">Chamado &P169_ID.</h3>           ',
'		<div class="a-CardView-headerBody" style="display: inline-block;">',
'			<a href="&P169_URL_EDIT." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa &P169_BTN_INFO." id="BTN_EDIT" style="color: white; background-color: var(--ut-palette-info)" aria-hidden="true" title=""></a>',
'		</div>        ',
'		<div class="a-CardView-headerBody" style="display: inline-block; &P169_URL_DELETE.">',
'			<a href="&P169_URL_DELETE." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa &P169_BTN_CANCEL." id="BTN_DELETE" style="color: white; background-color: var(--a-palette-danger)" aria-hidden="true" title=""></a>',
'		</div>',
'        <div class="a-CardView-headerBody" style="display: inline-block; &P169_URL_CONTESTAR.">',
'			<a href="&P169_URL_CONTESTAR." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa fa-exclamation-triangle-o" id="BTN_PLUS" style="color: white; background-color: var(--a-palette-warning)" aria-hidden="true" title'
||'=""></a>',
'		</div>',
'		',
'		<div class="a-bloco">',
'			<div class="row">',
'				<div style="width:340px">',
'					<div class="a-CardView-header" style="padding-bottom: 0px;">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-ticket" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
'							<div class="ng-estilo-titulo-mi">&P169_TITULO.:</div>',
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_DESCRICAO.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>',
'					<div class="a-CardView-header" style="padding-bottom: 0px;">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-check-circle-o" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
'							<div class="ng-estilo-titulo-mi">Solicitante: </div>',
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_USERNAME.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>',
'                    <div class="a-CardView-header" style="padding-bottom: 0px;">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-map-marker-o" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">\00C1rea destinada: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_ID_AREA.</h3>',
'								</div>',
'							</div>',
'						</div>                        ',
'					</div>  ',
'                    <div class="a-CardView-header" style="padding-bottom: 0px;">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-wizard" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
'							<div class="ng-estilo-titulo-mi">Status: </div>',
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="ng-texto-destaque" style="background-color:var(&P169_COLOR_ATIVO.)">&P169_D_STATUS.</h3>',
'								</div>',
'							</div>',
'						</div>                        ',
'					</div>                            ',
'                </div>',
'			</div>',
'		</div>',
'      ',
'        <div style="width:400px; &P169_HIDDEN.">',
unistr('		<h3 style="margin: 15px;display: inline-block;">Localiza\00E7\00E3o</h3>       '),
'		<div class="a-bloco">',
'			<div class="row">',
'				<div style="width:340px">				',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-accessor-one" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
'							<div class="ng-estilo-titulo-mi">Produto: </div>',
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_PRODUTO.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div> ',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-pragma" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">C\00F3digo do programa: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_CO_PROGRAMA.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-list-ul" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
'							<div class="ng-estilo-titulo-mi">Tipo de chamado: </div>',
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_TP_CHAMADO.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>                          ',
'				</div>',
'			</div>',
'		</div>     ',
'    </div>      ',
'    ',
'',
'    <div style="width:400px; &P169_HIDDEN.">',
'		<h3 style="margin: 15px;display: inline-block;">Dados adicionais</h3>       ',
'		<div class="a-bloco">',
'			<div class="row">',
'				<div style="width:340px">				',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-repeat" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">Recorr\00EAncia: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_RECORRENCIA.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div> ',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-clone" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">Simula\00E7\00E3o: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_SIMULACAO.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-check-square-o" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">Solu\00E7\00E3o de contorno: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_CONTORNO.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>  ',
'                    <div class="a-CardView-header">',
'						<div class="a-CardView-iconWrap a-CardView-iconWrap--start">',
'							<span class="a-CardView-icon u-color fa fa-exclamation" style="font-weight: bold;" aria-hidden="true" title=""></span>',
'						</div>',
'						<div class="a-CardView-headerBody">',
unistr('							<div class="ng-estilo-titulo-mi">Urg\00EAncia: </div>'),
'							<div class="row">',
'								<div class="col col-12 apex-col-auto col-start">',
'									<h3 class="a-CardView-title">&P169_URGENCIA.</h3>',
'								</div>',
'							</div>',
'						</div>',
'					</div>    ',
'				</div>',
'			</div>',
'		</div>     ',
'    </div>',
'</div>',
'',
'    <div>        ',
'    <div style="max-width:800px" class="col col-10 col-xxs-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6 col-xxl-7 apex-col-auto col-end">',
'		<h3 style="margin: 15px;display: inline-block;">Anexos</h3>',
'		<div class="a-CardView-headerBody" style="display: inline-block; &P169_URL_EDIT_ANEXO.">',
'			<a href="&P169_URL_EDIT_ANEXO." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa &CLA_EDITAR." id="BTN_EDIT_ASSUNTO" style="color: white; background-color: var(--ut-palette-info)" aria-hidden="true" title=""></'
||'a>',
'		</div>        ',
'		<div class="a-bloco">',
'			<div class="row">',
'				<div class="col col-12 apex-col-auto col-start" id="PAINEL1"></div>',
'			</div>',
'		</div>',
'	</div>',
'',
'    <div style="max-width:800px" class="col col-10 col-xxs-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6 col-xxl-7 apex-col-auto col-end">',
'		<h3 style="margin: 15px;display: inline-block;">Convidados</h3>',
'		<div class="a-CardView-headerBody" style="display: inline-block; &P169_URL_EDIT_CONVIDADOS.">',
'			<a href="&P169_URL_EDIT_CONVIDADOS." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa &CLA_EDITAR." id="BTN_EDIT_ASSUNTO" style="color: white; background-color: var(--ut-palette-info)" aria-hidden="true" title='
||'""></a>',
'		</div>       ',
'		<div class="a-bloco">',
'			<div class="row">',
'				<div class="col col-12 apex-col-auto col-start" id="PAINEL2"></div>',
'			</div>',
'		</div>',
'	</div>     ',
'',
'    <div style="max-width:800px; width:650px; &P169_URL_EDIT_NOVA_INFORMACAO." class="col col-10 col-xxs-12 col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-6 col-xxl-7 apex-col-auto col-end">',
unistr('		<h3 style="margin: 15px;display: inline-block;">Novas informa\00E7\00F5es</h3>'),
'		<div class="a-CardView-headerBody" style="display: inline-block; &P169_HIDE_BTN_NOVA_INFORMACAO.">',
'			<a href="&P169_URL_EDIT_NOVA_INFORMACAO." data-toggle="tooltip" data-placement="top" title="" class="a-CardView-icon u-color fa &CLA_EDITAR." id="BTN_EDIT_ASSUNTO" style="color: white; background-color: var(--ut-palette-info)" aria-hidden="true" t'
||'itle=""></a>',
'		</div>        ',
'		<div class="a-bloco">',
'			<div class="row">',
'				<div class="col col-12 apex-col-auto col-start" id="PAINEL3"></div>',
'			</div>',
'		</div>',
'	</div>     ',
'    </div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(205142864438383375)
,p_plug_name=>'Convidados'
,p_region_name=>'CONVIDADOS'
,p_parent_plug_id=>wwv_flow_imp.id(53591340192781825450)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--noPadding:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-sm:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>20
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
'  where ID_CHAMADO = :P169_ID',
'  AND USUARIO_PRINCIPAL=''N''',
'  ORDER BY ID DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(205142996644383376)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('N\00E3o h\00E1 convidados!')
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>205142996644383376
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71211454188299586)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71211872986299587)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71212266377299587)
,p_db_column_name=>'NOME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nome'
,p_column_html_expression=>'<h3 class="a-CardView-title">#NOME#</h3>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'COL_NOME_CONVIDADO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71212687384299588)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id Usuario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71213098625299588)
,p_db_column_name=>'USUARIO_PRINCIPAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Usuario Principal'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71213498330299588)
,p_db_column_name=>'EMAIL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Email'
,p_column_html_expression=>'<h3 class="a-CardView-title">#EMAIL#</h3>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'COL_EMAIL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205359775196594083)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'645634'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:EMAIL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(205144180026383388)
,p_plug_name=>unistr('Novas informa\00E7\00F5es')
,p_region_name=>'NOVA_INFORMACAO'
,p_parent_plug_id=>wwv_flow_imp.id(53591340192781825450)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--noPadding:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-sm:margin-left-md:margin-right-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       ID_USUARIO,',
'       TITULO,',
'       DESCRICAO,       ',
'       DATA',
'  from ADM_CHAMADO_DESCRICAO D  ',
'  where ID_CHAMADO=:P169_ID AND DATA NOT IN (SELECT MIN(DATA) FROM ADM_CHAMADO_DESCRICAO WHERE ID_CHAMADO=:P169_ID)',
'  order by DATA DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(205144246783383389)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('N\00E3o h\00E1 novas informa\00E7\00F5es!')
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>205144246783383389
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71214450478299589)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71214845702299590)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71215242576299590)
,p_db_column_name=>'ID_USUARIO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id Usuario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71215646539299590)
,p_db_column_name=>'TITULO'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Titulo'
,p_column_html_expression=>'<h3 class="a-CardView-title">#TITULO#</h3>'
,p_column_type=>'STRING'
,p_static_id=>'COL_TITULO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71216075523299590)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Descricao'
,p_column_html_expression=>'<h3 class="a-CardView-title">#DESCRICAO#</h3>'
,p_column_type=>'STRING'
,p_static_id=>'COL_DESCRICAO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71216406048299591)
,p_db_column_name=>'DATA'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Data'
,p_column_html_expression=>'<h3 class="a-CardView-title">#DATA#</h3>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'COL_DATA'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205450497183035936)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'646541'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TITULO:DESCRICAO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53670012777980040606)
,p_plug_name=>'Anexos'
,p_region_name=>'ASSUNTO'
,p_parent_plug_id=>wwv_flow_imp.id(53591340192781825450)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--noPadding:t-Form--xlarge:t-Form--stretchInputs:margin-top-none:margin-bottom-sm:margin-left-md:margin-right-md'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ID_CHAMADO,',
'       NOME,',
'       dbms_lob.getlength(NOME) AS ANEXO,',
'       FILENAME,',
'       MIMETYPE',
'  from ADM_CHAMADO_ANEXO',
'  WHERE ID_CHAMADO=:P169_ID',
'  ORDER BY ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P169_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Rela\00E7\00E3o dos assuntos a serem apresentados no tutorial')
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
 p_id=>wwv_flow_imp.id(205141882924383365)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('N\00E3o h\00E1 anexos!')
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LEONARDO'
,p_internal_uid=>205141882924383365
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71217479190299593)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71217880904299593)
,p_db_column_name=>'ID_CHAMADO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id Chamado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71218218393299593)
,p_db_column_name=>'NOME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nome'
,p_column_html_expression=>'<h3 class="a-CardView-title">#NOME#</h3>'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_static_id=>'COL_NOME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71218625290299593)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71219044415299594)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71219427671299594)
,p_db_column_name=>'ANEXO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Anexo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:ADM_CHAMADO_ANEXO:ANEXO:ID::MIMETYPE:FILENAME:::attachment:Download:'
,p_static_id=>'COL_ANEXO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(205167981683717125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643716'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NOME:ANEXO:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(53591340294418825451)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69710688381463857)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID,',
'       B.TITULO,',
'       B.DESCRICAO,',
'       D.USERNAME, ',
'       CASE A.ID_CHAMADO_AREA ',
'       WHEN 1 THEN ''Financeiro''',
'       WHEN 2 THEN ''Help Desk''',
'       WHEN 3 THEN ''Comercial''',
'       WHEN 4 THEN ''RH'' END AS ID_AREA,',
'       CASE A.PRODUTO ',
unistr('       WHEN ''1'' THEN ''NG-Importa\00E7\00E3o'''),
unistr('       WHEN ''2'' THEN ''NG-Exporta\00E7\00E3o'' END AS PRODUTO,'),
'       A.CO_PROGRAMA,',
'       CASE A.TP_CHAMADO',
'       WHEN 1 THEN ''Incidente''',
unistr('       WHEN 2 THEN ''Requisi\00E7\00E3o'''),
unistr('       WHEN 3 THEN ''D\00FAvida'' END AS TP_CHAMADO,'),
'       CASE A.RECORRENCIA ',
unistr('       WHEN 1 THEN ''Esse problema ocorreu uma \00FAnica vez'''),
unistr('       WHEN 2 THEN ''Esse problema \00E9 reincidente'' END AS RECORRENCIA,'),
'       CASE A.SIMULACAO',
'       WHEN 1 THEN ''Este problema pode ser reproduzido''',
unistr('       WHEN 2 THEN ''Este problema \00E9 aleat\00F3rio, n\00E3o consigo reproduzi-lo'' END AS SIMULACAO,'),
'       CASE A.CONTORNO',
unistr('       WHEN 1 THEN ''Temos solu\00E7\00E3o de contorno para o problema reportado'''),
unistr('       WHEN 2 THEN ''N\00E3o temos uma solu\00E7\00E3o de contorno para esse problema'' END AS CONTORNO,'),
'       CASE A.URGENCIA ',
unistr('       WHEN 1 THEN ''N\00E3o \00E9 cr\00EDtico'''),
unistr('       WHEN 2 THEN ''Est\00E1 impedindo uma funcionalidade imprescind\00EDvel'''),
unistr('       WHEN 3 THEN ''Est\00E1 impedindo o uso do NG de forma geral'' END AS URGENCIA, '),
'       CASE WHEN UPPER(STATUS) IN (''G'') THEN   ',
'       APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':120:'' || :APP_SESSION ||''::NO::P120_ID:'' || A.ID,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT'''')'')',
'       ELSE',
'       APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':159:'' || :APP_SESSION ||''::NO::P159_ID_CHAMADO:'' || A.ID,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT'''')'') end as URL_EDIT,',
'       CASE WHEN UPPER(STATUS) IN (''G'') THEN   ',
'       APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':158:'' || :APP_SESSION ||''::NO::P158_ID:'' || A.ID,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_DELETE'''')'')',
'       WHEN UPPER(STATUS) IN (''A'',''B'',''C'',''E'') THEN',
'       APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':157:'' || :APP_SESSION ||''::NO::P157_ID:'' || A.ID,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_DELETE'''')'') ',
'        ELSE ''visibility: hidden;'' end as URL_DELETE,',
unistr('       CASE WHEN UPPER(STATUS)=(''G'') THEN ''Em digita\00E7\00E3o'' WHEN UPPER(STATUS)=(''A'') THEN ''Aberto'' WHEN UPPER(STATUS)=(''B'') THEN ''Em an\00E1lise'' WHEN UPPER(STATUS)=(''C'') THEN ''Aguardando retorno'' WHEN UPPER(STATUS)=(''D'') THEN ''Cancelado'' WHEN UPPER(STATUS)')
||'=(''E'') THEN ''Encerrado'' WHEN UPPER(STATUS)=(''F'') THEN ''Finalizado'' END AS D_STATUS,',
'       CASE UPPER(STATUS) WHEN (''G'') THEN ''--ut-palette-warning''',
'                   WHEN (''A'') THEN ''--ut-palette-success''                   ',
'                   WHEN (''B'') THEN ''--ut-palette-success''',
'                   WHEN (''C'') THEN ''--ut-palette-warning''',
'                   WHEN (''D'') THEN ''--ut-palette-danger''',
'                   WHEN (''E'') THEN ''--ut-palette-success''',
'                   WHEN (''F'') THEN ''--ut-palette-success''',
'       END AS COLOR_ATIVO    ',
'        ',
'FROM ADM_CHAMADO A',
'JOIN ADM_CHAMADO_DESCRICAO B ON B.ID_CHAMADO=A.ID  ',
'JOIN ADM_CHAMADO_ENVOLVIDOS C ON C.ID_CHAMADO=A.ID',
'JOIN ADM_USUARIO D ON D.ID=C.ID_USUARIO',
'WHERE B.ID_CHAMADO=:P169_ID AND B.ID_USUARIO IS NOT NULL AND DATA IN (SELECT MIN(DATA) FROM ADM_CHAMADO_DESCRICAO WHERE ID_CHAMADO=:P169_ID)',
'AND USUARIO_PRINCIPAL=''S'''))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71210764322299585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(53591340192781825450)
,p_button_name=>'VOLTAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(69810595133463921)
,p_button_image_alt=>'&D_BTN_VOLTAR.'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71220447609299595)
,p_name=>'P169_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71220801094299596)
,p_name=>'P169_TITULO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'TITULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71221266121299596)
,p_name=>'P169_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71221663884299596)
,p_name=>'P169_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71222073498299596)
,p_name=>'P169_ID_AREA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'ID_AREA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71222414859299597)
,p_name=>'P169_PRODUTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'PRODUTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71222897855299597)
,p_name=>'P169_CO_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'CO_PROGRAMA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71223257018299597)
,p_name=>'P169_TP_CHAMADO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'TP_CHAMADO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71223642950299597)
,p_name=>'P169_RECORRENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'RECORRENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71224081685299598)
,p_name=>'P169_SIMULACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'SIMULACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71224489171299598)
,p_name=>'P169_CONTORNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'CONTORNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71224843504299598)
,p_name=>'P169_URGENCIA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'URGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71225226714299598)
,p_name=>'P169_URL_EDIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'URL_EDIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71225656554299599)
,p_name=>'P169_URL_DELETE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'URL_DELETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71226084734299599)
,p_name=>'P169_D_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'D_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71226465358299599)
,p_name=>'P169_COLOR_ATIVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_item_source_plug_id=>wwv_flow_imp.id(53591340294418825451)
,p_source=>'COLOR_ATIVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71232027613299603)
,p_name=>'P169_URL_EDIT_ANEXO'
,p_item_sequence=>50
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'') THEN',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':130:'' || :APP_SESSION ||''::NO:130:P130_ID_CHAMADO:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'')',
'    WHEN UPPER(STATUS) = ''G'' THEN ',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':164:'' || :APP_SESSION ||''::NO:164:P164_ID_CHAMADO:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'')',
'    ELSE',
'    ''visibility: hidden;''',
'    END as URL1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71232481882299604)
,p_name=>'P169_URL_EDIT_CONVIDADOS'
,p_item_sequence=>70
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'    CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'') THEN ',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':155:'' || :APP_SESSION ||''::NO:155:P155_ID:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'')  ',
'    WHEN UPPER(STATUS) = ''G'' THEN',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':170:'' || :APP_SESSION ||''::NO:170:P170_ID:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'') ',
'    ELSE',
'    ''visibility: hidden;''',
'    end as URL1',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71232845383299604)
,p_name=>'P169_URL_EDIT_NOVA_INFORMACAO'
,p_item_sequence=>80
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'') THEN',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':129:'' || :APP_SESSION ||''::NO:129:P129_ID_CHAMADO:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'')',
'    WHEN UPPER(STATUS) = ''G'' THEN ',
'    ''visibility: hidden;''',
'    WHEN UPPER(STATUS) IN (''D'',''E'',''F'') THEN',
'    ''''',
'    ELSE',
'    ''visibility: hidden;''',
'    END as URL1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71233279193299604)
,p_name=>'P169_HIDE_BTN_NOVA_INFORMACAO'
,p_item_sequence=>90
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select     ',
'    CASE WHEN UPPER(STATUS) IN (''D'',''E'',''F'') THEN',
'    ''visibility: hidden;'' END as URL1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71233678246299604)
,p_name=>'P169_URL_CONTESTAR'
,p_item_sequence=>100
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN UPPER(STATUS) IN (''E'') THEN',
'    APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':131:'' || :APP_SESSION ||''::NO:131:P131_ID_CHAMADO:'' || id,',
'          p_checksum_type => ''SESSION'', p_triggering_element => ''apex.jQuery(''''#BTN_EDIT_ASSUNTO'''')'')',
'    ELSE ',
'    ''visibility: hidden;''',
'    END as URL1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71234011292299605)
,p_name=>'P169_BTN_INFO'
,p_item_sequence=>110
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'',''D'',''E'',''F'') THEN',
'    ''fa-info'' ',
'    ELSE',
'    ''&CLA_EDITAR.'' END as BTN_1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71234419290299605)
,p_name=>'P169_BTN_CANCEL'
,p_item_sequence=>120
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'',''D'',''E'',''F'') THEN',
'    ''fa-remove'' ',
'    ELSE',
'    ''&CLA_EXCLUIR.'' END as BTN_1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71234848129299605)
,p_name=>'P169_HIDDEN'
,p_item_sequence=>130
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ',
'    CASE WHEN TP_CHAMADO=2 THEN',
'    ''visibility: hidden;'' ',
'    ELSE',
'    '''' END as BTN_1         ',
'from ADM_CHAMADO',
'where ID = :P169_ID AND TP_CHAMADO=2'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71235253341299606)
,p_name=>unistr('Closed dialog - Bot\00E3o EDIT')
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#BTN_EDIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71235766057299606)
,p_event_id=>wwv_flow_imp.id(71235253341299606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.location.reload(true);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71236109735299606)
,p_name=>unistr('Closed dialog - Bot\00E3o DELETE')
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#BTN_DELETE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71236690015299606)
,p_event_id=>wwv_flow_imp.id(71236109735299606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'history.back()',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71237060515299607)
,p_name=>'Closed dialog - Custom'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'customDialogClose'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71237579687299607)
,p_event_id=>wwv_flow_imp.id(71237060515299607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var lSpinner$ = apex.util.showSpinner( $( "#ASSUNTO" ) );',
'',
'setTimeout(',
'    function() {',
'      apex.region("ASSUNTO").refresh();  ',
'      lSpinner$.remove();',
'    }, 500);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71237923762299607)
,p_name=>unistr('After Refresh - Regi\00E3o ASSUNTO')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(53670012777980040606)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71238490348299607)
,p_event_id=>wwv_flow_imp.id(71237923762299607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#ASSUNTO").appendTo("#PAINEL" );',
'/*$(".js-stickyWidget-placeholder" ).hide();',
'$(".a-IRR-tableContainer").attr("style","background-color:white;");',
'$(".a-IRR-noDataMsg").attr("style","background-color:white;");*/',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71238801926299608)
,p_name=>'VOLTAR-Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71210764322299585)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71239202083299608)
,p_event_id=>wwv_flow_imp.id(71238801926299608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'history.back()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71240527363299609)
,p_name=>'Refresh'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#BTN_EDIT_ASSUNTO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71241040574299609)
,p_event_id=>wwv_flow_imp.id(71240527363299609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(53670012777980040606)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71231662579299602)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(53591340294418825451)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Mais detalhes do tutorial'
);
wwv_flow_imp.component_end;
end;
/
