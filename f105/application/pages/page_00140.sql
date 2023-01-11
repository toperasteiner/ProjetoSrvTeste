prompt --application/pages/page_00140
begin
--   Manifest
--     PAGE: 00140
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
 p_id=>140
,p_name=>'sup consulta chamado'
,p_alias=>'SUP-CONSULTA-CHAMADO'
,p_step_title=>'sup consulta chamado'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-headerBody{',
'    height: 20px;',
'}',
'',
'.IconeChat {',
'    display: none;',
'}',
'',
'.IconeChatShow {',
'    display: block;',
'}'))
,p_page_template_options=>'#DEFAULT#:t-PageBody--noContentPadding'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'LEONARDO'
,p_last_upd_yyyymmddhh24miss=>'20230109215701'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101545478483318820958)
,p_plug_name=>'Splitter'
,p_region_name=>'my-splitter-region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69712725186463858)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'PLUGIN_COM.FOS.SPLITTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'horizontal'
,p_attribute_02=>'begin'
,p_attribute_03=>'custom'
,p_attribute_04=>'$(''#my-splitter-region'').width() / 6'
,p_attribute_05=>'60'
,p_attribute_06=>'window.innerHeight - 65'
,p_attribute_10=>'can-collapse:continuous-resize'
,p_attribute_15=>'Y'
,p_attribute_17=>'100'
,p_attribute_18=>'100'
,p_attribute_23=>'16'
,p_attribute_24=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(248031580525987858)
,p_plug_name=>'Pesquisa'
,p_parent_plug_id=>wwv_flow_imp.id(101545478483318820958)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(69712725186463858)
,p_plug_display_sequence=>20
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(62022547617130784510)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80609778296544556898)
,p_plug_name=>'Consulta de chamados'
,p_region_name=>'principal_region'
,p_parent_plug_id=>wwv_flow_imp.id(101545478483318820958)
,p_region_template_options=>'#DEFAULT#:t-Wizard--showTitle:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_imp.id(69730137087463867)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62022547617130784510)
,p_plug_name=>'Cards'
,p_parent_plug_id=>wwv_flow_imp.id(80609778296544556898)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69677178106463840)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT S.ID,',
'       S.TP_CHAMADO AS TP_CHAMADO,',
'       S.ID_CHAMADO_AREA AS AREA_CHAMADO,',
'       S.PRODUTO AS PRODUTO,',
'       TO_CHAR(S.DT_ABERTURA, ''DD/MM/YYYY'') AS DATA_ABERTURA,',
'       CASE ',
'       WHEN TO_DATE(TO_CHAR(S.DT_ABERTURA, ''DD/MM/YYYY''), ''DD/MM/YYYY'') = TO_DATE(TO_CHAR(CURRENT_DATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'') THEN ''Hoje''',
'       WHEN TO_DATE(TO_CHAR(S.DT_ABERTURA, ''DD/MM/YYYY''), ''DD/MM/YYYY'') < TO_DATE(TO_CHAR(CURRENT_DATE, ''DD/MM/YYYY''), ''DD/MM/YYYY'') AND TO_DATE(TO_CHAR(S.DT_ABERTURA, ''DD/MM/YYYY''), ''DD/MM/YYYY'') > TO_DATE(TO_CHAR(CURRENT_DATE-7, ''DD/MM/YYYY''), ''DD/'
||'MM/YYYY'') THEN ''Esta semana''',
'       WHEN TO_DATE(TO_CHAR(S.DT_ABERTURA, ''DD/MM/YYYY''), ''DD/MM/YYYY'') < TO_DATE(TO_CHAR(CURRENT_DATE-7, ''DD/MM/YYYY''), ''DD/MM/YYYY'') THEN ''Antigos'' ',
'       END AS DT_ABERTURA,',
'       ''Chamado: ''||S.ID AS D_ID,',
unistr('       '' - T\00EDtulo: ''||D.TITULO AS D_TITULO,'),
'       ''Solicitante: ''||UPPER(U.USERNAME) AS D_SOLICITANTE, ',
'       S.STATUS,       ',
unistr('       CASE WHEN UPPER(STATUS) = ''G'' THEN ''Em digita\00E7\00E3o'' '),
'       WHEN UPPER(STATUS)=''A'' THEN ''Aberto'' ',
unistr('       WHEN UPPER(STATUS)=''B''THEN ''Em an\00E1lise'' '),
'       WHEN UPPER(STATUS)=''C'' ',
'       THEN ''Aguardando retorno'' ',
'       WHEN UPPER(STATUS)=''D'' THEN ''Cancelado'' ',
'       WHEN UPPER(STATUS)=''E'' THEN ''Encerrado'' ',
'       WHEN UPPER(STATUS)=''F'' THEN ''Finalizado'' END AS D_STATUS,',
'       CASE UPPER(STATUS) WHEN ''G'' THEN ''--ut-palette-warning''',
'                   WHEN ''A'' THEN ''--ut-palette-success''',
'                   WHEN ''B'' THEN ''--ut-palette-success''',
'                   WHEN ''C'' THEN ''--ut-palette-warning''',
'                   WHEN ''D'' THEN ''--ut-palette-danger''',
'                   WHEN ''E'' THEN ''--ut-palette-success''',
'                   WHEN ''F'' THEN ''--ut-palette-success''',
'       END AS COLOR_ATIVO, ',
'       E.ID_USUARIO AS IDUSUARIO,        ',
'       CASE WHEN S.NOTIFICACAO=''S'' THEN ''S'' END AS D_NOTIFICACAO, ',
'       CASE WHEN UPPER(U.USERNAME)=UPPER(V(''APP_USER'')) THEN ''S'' WHEN UPPER(U.USERNAME)!=UPPER(V(''APP_USER'')) THEN ''N'' END AS USUARIOPRINCIPAL,',
'        APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':141:'' || :APP_SESSION ||''::NO::P141_ID,P141_STATUS:'' || S.ID || '','' || STATUS, ',
'          p_checksum_type => ''SESSION'') as URL,',
'        CASE WHEN UPPER(STATUS) IN (''A'',''B'',''C'',''E'') THEN APEX_UTIL.PREPARE_URL(',
'          p_url => ''f?p='' || :APP_ALIAS || '':167:'' || :APP_SESSION ||''::NO::P167_ID:'' || S.ID, ',
'          p_checksum_type => ''SESSION'') END as URL2,',
'          CASE WHEN UPPER(STATUS) IN (''D'',''F'',''G'') THEN ''visibility: hidden;'' END AS ESCONDER ',
'  from ADM_CHAMADO S',
'  join ADM_CHAMADO_DESCRICAO D',
'  on D.ID_CHAMADO = S.ID',
'  join ADM_CHAMADO_ENVOLVIDOS E',
'  on S.ID = E.ID_CHAMADO',
'  join ADM_USUARIO U',
'  on U.ID = E.ID_USUARIO ',
'  ',
'WHERE USUARIO_PRINCIPAL = ''S'' AND S.ID IN (SELECT C.ID FROM ADM_CHAMADO C ',
'JOIN ADM_CHAMADO_ENVOLVIDOS E',
'ON E.ID_CHAMADO = C.ID',
'JOIN ADM_USUARIO U',
'ON E.ID_USUARIO = U.ID',
'WHERE (E.ID_USUARIO IN (SELECT ID FROM ADM_USUARIO WHERE UPPER(USERNAME) = UPPER(V(''APP_USER'')))) ',
'OR U.TIPO = ''ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL'' AND S.STATUS!= ''G'') AND',
'D.DATA IN (SELECT MIN(DATA) FROM ADM_CHAMADO_DESCRICAO WHERE ID_CHAMADO=S.ID) ',
'ORDER BY D_NOTIFICACAO, S.ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'Nenhum chamado encontrado!'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(69861273798583396)
,p_region_id=>wwv_flow_imp.id(62022547617130784510)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style= "font-size: var(--a-cv-title-font-size,16px);font-weight: var(--a-cv-title-font-weight,700);line-height: var(--a-cv-title-line-height,20px);color: var(--a-cv-title-text-color);margin: 0;">',
'    &D_ID. &D_TITULO. </div>'))
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'   <div class="col col-6 apex-col-auto col-start">',
'      <div>&D_SOLICITANTE.</div>',
'   </div>   ',
'',
'     <div class="col col-4 apex-col-auto">',
'      <div>',
'        <p class="ng-texto-destaque" style="background-color:var(&COLOR_ATIVO.)">&D_STATUS. &DATA_ABERTURA.</p>          ',
'      </div>  ',
'   </div>     ',
'',
'   <div class="col col-1 apex-col-auto">',
'      <div>',
'        <a href="&URL2." class="a-CardView-button t-Button--link hidden-xxs-down u-pullRight IconeChatShow" style="padding-top: 0px;color: var(--ck-color-base-text); &ESCONDER."> ',
'                    <span style="font-size: 14px; "></span><span class="t-Icon fa fa-users-chat" aria-hidden="true"></span> ',
'        </a>        ',
'      </div>  ',
'   </div>  ',
'           ',
'   <div class="col col-1 apex-col-auto col-end" style="padding-top: 0px;">  ',
'       <div class="row">',
'            <div class="col col-12 apex-col-auto col-end" style="padding-top: 0px;">    ',
'                <a href="&URL." class="a-CardView-button t-Button--link hidden-xxs-down u-pullRight" style="padding-top: 0px;color: var(--ck-color-base-text);"> ',
'                    <span style="font-size: 14px;"></span><span class="t-Icon fa fa-ellipsis-v" aria-hidden="true"></span>',
'                </a>',
'          </div>',
'       </div>',
'   </div>  ',
'</div>  ',
'',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(69861757205583399)
,p_card_id=>wwv_flow_imp.id(69861273798583396)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'&D_BTN_MAIS_DETALHES.'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150:P150_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'t-Button--link t-Button--large'
,p_is_hot=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(69862329013583400)
,p_card_id=>wwv_flow_imp.id(69861273798583396)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>unistr('Mais detalhes (Avan\00E7ado)')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:169:P169_ID:&ID.'
,p_button_display_type=>'TEXT'
,p_action_css_classes=>'t-Button--link t-Button--large'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(78033660532055328365)
,p_plug_name=>'Button Bar'
,p_parent_plug_id=>wwv_flow_imp.id(80609778296544556898)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(69679928583463841)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(173508363177751766)
,p_plug_name=>unistr('A\00E7\00F5es')
,p_region_name=>'actions'
,p_parent_plug_id=>wwv_flow_imp.id(78033660532055328365)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(69677178106463840)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(69873282198583419)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(69803824565463914)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69863293670583402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(78033660532055328365)
,p_button_name=>'ACOES'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Solicitar chamado'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ellipsis-v'
,p_button_cattributes=>'data-menu="actions_menu"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65053195084778442)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(78033660532055328365)
,p_button_name=>'NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>unistr('Novo Usu\00E1rio')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8471870191539111)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(78033660532055328365)
,p_button_name=>'Link'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(69810446314463921)
,p_button_image_alt=>'Link'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'target="blank"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33178111771966621)
,p_name=>'P140_AREA_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>unistr('\00C1rea do chamado')
,p_source=>'AREA_CHAMADO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LV_SUP_AREA'
,p_lov=>'SELECT ID, NOME FROM ADM_CHAMADO_AREA WHERE ATIVO=1'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33178286601966622)
,p_name=>'P140_PRODUTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Produto'
,p_source=>'PRODUTO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LV_SUP_PRODUTO'
,p_lov=>'.'||wwv_flow_imp.id(69960642335717212)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33178304601966623)
,p_name=>'P140_DT_ABERTURA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Data de abertura'
,p_source=>'DT_ABERTURA'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Hoje;Hoje,Esta semana;Esta semana,Antigos;Antigos'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69857916322583392)
,p_name=>'P140_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101545478483318820958)
,p_item_default=>'461'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69858663401583393)
,p_name=>'P140_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Search'
,p_source=>'D_ID,D_TITULO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69859064956583394)
,p_name=>'P140_TP_CHAMADO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Tipo de chamado'
,p_source=>'TP_CHAMADO'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LV_SUP_TP_CHAMADO'
,p_lov=>'.'||wwv_flow_imp.id(71105780867233339)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69859499723583394)
,p_name=>'P140_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LV_SUP_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(69869843736583416)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69859806929583394)
,p_name=>'P140_CONVIDADOS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(248031580525987858)
,p_prompt=>'Convidados'
,p_source=>'USUARIOPRINCIPAL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LV_SUP_ENVOLVIDOS'
,p_lov=>'.'||wwv_flow_imp.id(69867094103583409)||'.'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69864379339583405)
,p_name=>'Refresh ao fechar'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62022547617130784510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69864826059583407)
,p_event_id=>wwv_flow_imp.id(69864379339583405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(62022547617130784510)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69865349696583407)
,p_event_id=>wwv_flow_imp.id(69864379339583405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(248031580525987858)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69865794174583407)
,p_name=>'Refresh ao fechar NOVO'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69863293670583402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69866240387583408)
,p_event_id=>wwv_flow_imp.id(69865794174583407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80609778296544556898)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69866610239583408)
,p_event_id=>wwv_flow_imp.id(69865794174583407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(248031580525987858)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8471467838539107)
,p_name=>'Refresh ao incluir'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69863293670583402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8471539560539108)
,p_event_id=>wwv_flow_imp.id(8471467838539107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(80609778296544556898)
);
wwv_flow_imp.component_end;
end;
/
