prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 105
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69812472225463927)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69812695576463927)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69812896220463927)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69813035568463927)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69813223041463927)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(69846979717486138)
,p_theme_id=>42
,p_name=>'NG Light'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#1a457e","@g_Accent-OG":"#fdfdfd","@g_Link-Base":"#48b0f7","@g_Body-BG":"#e7ebee","@g_Body-Text":"#1a457e","@g_Actions-Col-BG":"#f9f9f9","@g_Actions-Col-Text":"#1a457e","@g_Body-Title-BG":"#e7ebee","@g_Body-Title'
||'-FG":"#1a457e","@l_Left-Col-BG":"#ffffff","@l_Left-Col-Text":"#1a457e","@g_Nav_Style":"light","@g_Nav-BG":"#e7ebee","@g_Nav-FG":"#1a457e","@g_Nav-Active-BG":"#cfd7dd","@g_Nav-Active-FG":"#1a457e","@g_Nav-Accent-BG":"#cfd7dd","@g_Nav-Accent-FG":"#1a45'
||'7e","@g_Nav-Badge-BG":"#006bd8","@g_Nav-Badge-FG":"#ffffff","@g_NavBarMenu-Active-BG":"#006bd8","@g_NavBarMenu-Active-FG":"#ffffff","@g_Region-Header-BG":"#e7ebee","@g_Region-Header-FG":"#1a457e","@g_Region-BG":"#e7ebee","@g_Region-FG":"#1a457e","@g_'
||'Success-BG":"#76ca02","@g_Success-FG":"#ffffff","@g_Form-Item-BG":"#ffffff","@g_Form-Item-FG":"#1a457e"},"customCSS":".a-IRR-table, \n.a-Button {\n\tbackground-color: var(--a-field-input-background-color);\n}\n\n.a-IRR-header {\n\tbackground-color: v'
||'ar(--ut-palette-primary);\n\tborder-color: var(--ut-palette-primary);\n}\n\n.a-IRR-table td,\n.a-IRR-toolbar,\n.ui-dialog-titlebar,\n.t-Wizard {\n\tborder-style: none;\n\tbox-shadow: none;\n}\n\n.t-Form-fieldContainer--floatingLabel .apex-item-displa'
||'y-only {\n    /*border-width: var(--a-field-input-border-width, 1px);\n    border-style: solid;\n    color: var(--ut-body-text-color);\n    box-shadow: var(--ut-region-box-shadow, var(--ut-component-box-shadow));\n    background-color: var(--a-field-'
||'input-background-color);*/\n    border-color: lightgray;\n    color: var(--ut-body-text-color);\n    background-color: white;\n}\n\n.apex-item-wrapper--date-picker-jet .oj-text-field-container .oj-component-icon.oj-clickable-icon-nocontext:not(.oj-se'
||'lect-clear-entry-icon):not(.oj-combobox-clear-entry-icon):not(.oj-label-help-icon-anchor) {\n\tbackground-color: #fff;\n}\n\n.t-Dialog-footer .t-ButtonRegion {\n\tborder-top: none;\n}\n\n.t-Wizard-header {\n\tbackground-color: var(--a-toolbar-backgro'
||'und-color);\n}\n\n.t-Wizard .t-Wizard-title {\n\tcolor: var(--ut-body-text-color);\n}\n\n.t-Wizard .t-Wizard-controls {\n\t-webkit-padding-start: 0;\n\tpadding-inline-start: 0;\n\t-webkit-padding-end: 0;\n\tpadding-inline-end: 0;\n\t-webkit-padding-b'
||'efore: 0;\n\t-webkit-padding-after: 0;\n\tpadding-block-end: 0;\n}\n\n.a-IRR-controlGroup {\n\tborder-right-style: none;\n}\n\n.a-IRR-toolbar {\n\tpadding: 0px;\n}\n\n.a-IRR-headerLink {\n\tcolor: var(--a-button-hover-background-color);\n}\n\n.a-IRR-'
||'tableContainer {\n\tpadding-top: 5px;\n}\n\n.t-Region-header {\n\tbackground-color: var(--ut-palette-primary);\n    color: var(--ut-body-title-background-color);\n}\n\n.t-Region .t-IRR-region {\n\tpadding-top: 8px;\n}\n\n.t-MediaList {\n\tpadding-top'
||unistr(': 8px;\005Cn}\005Cn\005Cn.Aguardando,\005Cn.Finalizado,\005Cn.Conclu\00EDdo {\005Cn\005Ctpointer-events: none;\005Cn\005Ctopacity: 0.7;\005Cn}\005Cn\005Cn.a-CardView-items--row .a-CardView {\005Cn\005Ctborder: none;\005Cn}\005Cn\005Cn.ng-texto-destaque {\005Cn\005Ctdisplay: inline-block;\005Cn\005Ctborder-radius: 5px;\005Cn\005Ctpadding: 3px;\005Cn')
||'\tfont-weight: bolder;\n\tcolor: #fff;\n\tfont-size: 14px;\n}\n\n.a-CardView-items--row .a-CardView-actions {\n\tborder-top: 0px;\n}\n\n.a-CardView-items--row .a-CardView-header {\n\tborder-bottom: 0px;\n\tpadding-bottom: 0px;\n}\n\n.a-CardView-butto'
||'n {\n\tpadding-left: 0px;\n\tpadding-bottom: 0px;\n}\n\n.backgroudcolor-item {\n\tbackground-color: var(--a-field-input-background-color);\n}\n\n.t-WizardSteps-label {\n\tpadding-top: 20px;\n}\n\n.font-size-8 {\n\tfont-size: 8px;\n}\n\n.t-Cards--basi'
||'c .t-Card-wrap,\n.t-Cards--compact .t-Card-wrap {\n\tbackground-color: var(--a-field-input-background-color);\n}\n\n.color-azulclaro {\n\tbackground-color: var(--ut-link-text-color);\n}\n\n.color-desabilitado {\n\tbackground-color: var(--ut-component'
||'-badge-background-color);\n}\n\n.dialog-450 {\n\twidth: 450px!Important;\n}\n\n.a-GV--variableHeight .a-GV-table td,\n.a-GV--variableHeight .a-GV-table th {\n\tborder: none;\n\tbackground-color: #fff;\n}\n\n.a-GV-table{\n    background-color: #fff;\n'
||'}\n\n.a-IG-header {\n\tpadding-left: 0px;\n\tpadding-right: 0px;\n\tborder-bottom: 0px;\n    width: 100% !IMPORTANT;\n}\n\n.t-MediaList--showDesc .t-MediaList-desc {\n\tpadding-left: 0px;\n}\n\n.t-Cards--spanHorizontally .t-Cards-item {\n\tmargin-lef'
||'t: 4px;\n\tmargin-right: 4px;\n}\n\n.a-CardView-items--row .a-CardView-body {\n\tpadding: 0px;\n}\n\n.apex-item-text.apex-page-item-error {\n\tborder-color: var(--ut-palette-danger);\n}\n\n.l-button {\n\tpadding-bottom: 8px;\n\tpadding-top: 8px;\n\tp'
||'adding-left: 0px;\n\twidth: 15px;\n\tflex-basis: 4%;\n\tmax-width: 4%;\n}\n\n.col-full {\n\tflex-basis: 95%;\n\tmax-width: 95%;\n\tpadding-right: 0px;\n}\n\n.l-button-style {\n\theight: 100%;\n\twidth: 5%;\n\tpadding: 0px;\n    background-color: whit'
||'e;\n    color: var(--ut-body-text-color);\n}\n\na-GV-cell {\n\tborder: 0px;\n}\n\n.a-GV-cell {\n\tborder-width: 0px;\n\tbackground-color: transparent;\n\tcolor: var(--ut-focus-outline-color);\n}\n\n.a-GV-header {\n\tcolor: white;\n\tbackground-color:'
||' var(--ut-focus-outline-color);\n\tborder-width: 0;\n}\n\n.IG-button-create {\n\tmargin-bottom: 8px;\n}\n\n.a-IG-controlsContainer {\n\tbackground-color: var(--ut-body-background-color);\n\tborder-top: 0px;\n}\n\n.t-Footer {\n\tdisplay: none;\n}\n\n.'
||'t-Footer-top {\n\tDisplay: none !important;\n}\n\n.t-Footer-srMode {\n\tDisplay: none !important;\n}\n\n.t-Footer-version {\n\tDisplay: none !important;\n}\n\n.t-Footer-apex {\n\tDisplay: none !important;\n}\n\n.t-Region-body {\n\tpadding: 0px;\n}\n\'
||'n.a-Button-label,\n.t-Alert-title {\n\tcolor: var(--ut-body-text-color);\n}\n\n.a-Toolbar-group {\n\tborder: 0px;\n}\n\n.a-IRR {\n\tborder: 0px;\n}\n\n.t-Wizard-body {\n\tbackground-color:  var(--ut-body-background-color);\n}\n\n.t-BreadcrumbRegion {'
||'\n    background-color:  var(--ut-body-background-color);\n}\n\n.a-IRR-header:hover {\n    background-color: #1f5397;\n}\n\n.a-IRR-headerLink {\n    background-color: var(--ut-body-text-color);\n}\n\n.c-background-white {\n    background-color: #fff;'
||'\n}\n\n.c-background-1 {\n    background-color: var(--ut-body-background-color);\n}\n\n.t-font-color,\n.oj-inputdatetime-calendar-icon {\n\tcolor: var(--ut-body-text-color);\n}\n\n.a-bloco{\n    background-color: #FFFFFF;\n    box-shadow: 0px 4px 4px'
||' rgba(0, 0, 0, 0.25);\n    border-radius: 10px;\n    margin: 8px;\n}\n\n.a-CardView-header{\n    border: 0px;\n}\n\n.a-CardView-icon{\n    background-color: #E7EBEE;\n    color: #1f5397;\n}\n\n.col-4-4 {\n    padding: 0px; \n    margin-right: 8px; \n'
||'    height: 100%; \n    background-color: var(--ut-palette-primary-contrast);\n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.imagem-4-4 {\n    border-radius: 5px 5px 0px 0px; \n    width: '
||'100%;\n    height: 75%; \n    object-fit: cover;\n}\n\n.imagem-2-2 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 50%; \n    object-fit: cover;\n}\n\n.subtitle-4-4 {\n    font-size: 20px; \n    margin-left: 20px; \n    margin-'
||'top: 15px; \n    color: #83CFDC;\n}\n\n.page-1-1 {      \n    height:92%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.page-1-1-1 { '
||'     \n    height:48%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.imagem-1-1 {\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); \'
||'n    border-radius: 5px; \n    width: 100%;\n    height: 100%;\n    object-fit: fill;\n}\n\n.title-1-1 {\n    font-size: 5vh; \n    margin-left: 4vh; \n    margin-bottom: 1vh;\n    font-weight: bold;\n    margin-top: 4vh;\n    line-height: 5.5vh;\n}\'
||'n\n.subtitle-1-1 {\n    font-size: 4vh; \n    margin-left: 4vh; \n    margin-right: 4vh;\n    color: #83CFDC;\n    line-height: 4vh;\n    padding: 0px;\n}\n\n.text-1-1 {\n    font-size: 2.00vh; \n    margin-left: 4vh; \n    margin-top: -0.5vh; \n    '
||'//margin-right: 2.5vh; \n    margin-right: 4vh; \n    font-weight: normal; \n    color: #8E8E8E;\n    line-height: 2.75vh;\n    padding: 0px;\n}\n\n.imagem-1-2 {\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); \n    border-radius: 5px; \n    width:'
||' 100%;\n    object-fit: cover;\n    height: 56%;\n}\n\n.page-1-2{\n    margin-left: 8px;\n    margin-right: 8px;\n    height: 92%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 10px; \n    '
||'box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.pageH50{\n    height: 50%;\n}\n\n.title-1-2{\n    margin-top: 0vh;\n    padding-top: 2.5vh;\n    line-height: 5.5vh;\n}\n\n.imagem-2-1 {\n    border-radius: 0px 0px 5px 5px; \n   '
||' width: 100%;\n    height: 100%; \n    object-fit: cover;\n}\n\n.imagem-2-3 {\n    border-radius: 5px 5px 0px 0px;\n    width: 25%;\n    height: 33.333%;\n    object-fit: cover;\n}\n\n.page-2-1{\n    margin-left: 0px;\n    margin-right: 8px;\n    hei'
||'ght: 100%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 8px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.subtitle-1-2 {\n    font-size: 3vh; \n    margin-t'
||'op: 1vh;\n    margin-left: 4vh; \n    color: #83CFDC;\n    margin-bottom: 0vh;\n    line-height: 3vh;\n}\n\n.subtitle-1-3 {\n    font-size: 2.5vh; \n    margin-top: 0vh;\n    margin-left: 4vh; \n    color: #83CFDC;\n    margin-bottom: 0vh;\n    line-'
||'height: 3vh;\n}\n\n.text-1-2 {\n    font-size: 2vh; \n    margin-left: 4vh; \n    margin-top: 0vh; \n    margin-right: 2.5vh; \n    font-weight: normal; \n    color: #8E8E8E;\n    line-height: 2.5vh;\n}\n\n.text-1-3 {\n    font-size: 2vh; \n    margi'
||'n-left: 4vh; \n    margin-top: 0vh; \n    margin-right: 2.5vh; \n    font-weight: normal; \n    color: #8E8E8E;    \n    line-height: 2.5vh;\n}\n\n.subtitle-1-4 {\n    font-size: 2.5vh; \n    line-height: 2.5vh;\n    margin-top: 0vh;\n    margin-bott'
||'om: -1.5vh;\n    margin-left: 2vh; \n    color: #83CFDC;\n}\n\n.text-1-4 {\n    font-size: 2vh; \n    line-height: 2.5vh;\n    margin-left: 2vh; \n    margin-top: -0.5vh; \n    margin-right: 1.25vh; \n    font-weight: normal; \n    color: #8E8E8E;\n}'
||'\n\n.imagem-1-4 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 33.333%; \n    object-fit: cover;\n}\n\n.col-6-6 {\n    padding: 0px; \n    margin-right: 8px; \n    height: 100%; \n    background-color: var(--ut-palette-primary'
||'-contrast);\n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.imagem-1-6 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 33.333%; \n    object-fit: cover;\n}\n\n.subtit'
||'le-1-6 {\n    font-size: 2.5vh; \n    line-height: 2.25vh;\n    margin-top: -0.5vh;\n    margin-left: 2vh;\n    margin-bottom: -1.5vh;\n    color: #83CFDC;\n}\n\n.text-1-6 {\n    font-size: 2vh; \n    line-height: 2vh;\n    margin-left: 2vh; \n    ma'
||'rgin-top: -0.75vh;\n    margin-right: 1.25vh; \n    font-weight: normal; \n    color: #8E8E8E;\n}\n\n.page-1-3{\n    margin-left: 0px;\n    margin-right: 8px;\n    height: 100%; \n    background-color: var(--ut-palette-primary-contrast); \n    border'
||'-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.col-1-5 {\n    padding: 0px;  \n    height: 100%;  \n    margin-left: 4px;   \n    background-color: var(--ut-palette-primary-contras'
||'t); \n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.a-IG {\n    border-style: none;\n}\n\n@media screen and (max-width: 600px) {\n.a-IRR-actions, .a-IRR-buttons, .a-IRR-controls {\n    fle'
||'x-grow: 1;\n    flex-basis: 100%;\n    max-width: unset;\n  }\n}\n\n.column {\n  float: left;\n  width: 50%;\n}\n\n/* Clear floats after the columns */\n.row:after {\n  content: \"\";\n  display: table;\n  clear: both;\n}\n\n.text-color-principal{\n '
||'   color: var(--ut-body-text-color);\n}\n\n.a-CardView {\n    border: none;\n    box-shadow: none;\n}\n\n.row-100{\n    height: 100%;\n}\n\n.t-Cards--featured .t-Card-wrap {\n    background-color: var(--ut-palette-primary-contrast); \n    border-radi'
||'us: 10px;\n}\n\n.c-margem-left-5{\n    margin-left: 5px;\n}\n\n.a-Collapsible-content{\n\tpadding: 15px;\n}\n\n.t-Region-headerItems .t-Region-headerItems--controls{\n    margin-left: 15px;\n    margin-bottom: 10px;\n}\n\n.t-Region-headerItems--contr'
||'ols{\n    padding: 0px;\n}\n\n.t-Button--hideShow{\n    background-color: transparent;\n    color: var(--ut-palette-primary-text);\n    border: none;\n    box-shadow: none;\n}\n\n.t-Region--hideShow {\n    border-radius: 5px;\n    //box-shadow: 0px 4'
||'px 4px rgba(0, 0, 0, 0.10);\n}\n\n.u-color-texto-principal {\n    color: var(--ut-palette-primary-text);\n}\n\n.u-radio{\n   color: var(--ut-palette-primary-text); \n}\n\n.u-radio.is-checked:after{\n    color: var(--ut-palette-primary-text); \n}\n\n.'
||'pageH33{\n    height: 33%;\n}\n\n.row-33{\n    height: 32.7%;\n    margin-bottom: 4px;\n}\n\n.col-5M92 {\n    flex-basis: 41.66666666666667%;\n    max-width: 41.66666666666667%;\n    max-height: 92%;\n}\n\n.col-5 {\n    flex-basis: 41.66666666666667%'
||';\n    max-width: 41.66666666666667%;\n    max-height: 100%;\n}\n\n.row-50 {\n    height: 49.7%;\n    margin-bottom: 4px;\n}\n\n.ng-titulo-modal{\n    text-align: center;\n    font-size: 20px;\n    padding: 15px;\n}\n\n.t-Alert--wizard{\n    border: '
||'0px;\n    box-shadow: none;\n}\n\n.t-Card-wrap{\n    border-radius: 10px;\n}\n\n.t-Alert{\n    margin-top: 0px !IMPORTANT;\n}\n\n.t-Alert-content{\n    margin-top: 0px !IMPORTANT;\n    margin-bottom: 0px !IMPORTANT;\n}\n\n.t-Dialog-body{\n    padding'
||'-top: 0px !IMPORTANT;    \n}\n\n.t-Alert-wrap {\n    margin-top: 0px !IMPORTANT;\n    margin-bottom: 0px !IMPORTANT;\n}\n\n.t-WizardSteps{\n    margin-bottom: 30px;\n}\n\n.t-TreeNav .a-TreeView-node .a-TreeView-row{\n    margin-left: 4px;\n}\n\n.is-f'
||'ocused{\n    border-style: none;\n}\n\n.a-CardView{\n    background-color: white;\n    border-radius: 5px;\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.10);\n}\n\n.a-CardView-actions{\n    border-top: 0px;\n}\n\n.ng-estilo-titulo-mi{\n    font-size: '
||'16px;\n    font-style: italic;\n    font-weight: 100;\n}\n\n.apex-page-success{\n    display: none !IMPORTANT;\n}\n\n.t-MediaList-item{\n    background-color: #fff;\n}\n\n/*.u-Processing {\n    display: none !important;\n}*/\n\n.a-FS-facetChart{\n   '
||' background-color: #fff;\n    border-radius: 10px;\n}\n\n/*.is-selected{\n    background-color: #1f5397;\n}*/\n\n.ng-situacao-card{\n    font-weight: bold;\n    color: var(--a-palette-success);\n    margin-top: 10px;\n}\n\n.ng-titulo-principal-bloco{'
||'\n    font-size: 24px;\n    font-style: italic;\n    font-weight: lighter;\n}\n\n.ng-inf-principal-bloco{\n    font-size: 24px;\n    font-weight: bold;\n}\n\n.ng-titulo-secundario-bloco{\n    font-style: italic;\n    font-weight: lighter;\n    text-a'
||'lign: end;\n    font-size: 16px;    \n    padding-left: 12px;\n}\n\n.ng-inf-secundario-bloco{\n    font-weight: bold;\n    text-align: end;\n    font-size: 16px;\n}\n\n.a-IRR{\n    background-color: white;\n}\n\n.a-GV-table .a-GV-cell.is-focused, .a-'
||'GV-table .a-GV-controlBreakHeader.is-focused, .a-GV-table .a-GV-header.is-focused, .a-GV-table .a-GV-headerGroup.is-focused{\n    box-shadow: none;\n}\n\n.a:-webkit-any-link{\n    border: 0px;\n}\n\n.a-IRR-tableContainer{\n    background-color: var(-'
||'-ut-body-background-color);\n}\n\n.a-IRR-paginationWrap--bottom{\n    background-color: var(--ut-body-background-color);\n}\n\n.a-IRR-noDataMsg{\n    background-color: var(--ut-body-background-color);\n}\n\n.ng-subtitulo-texto{\n    font-size: 3vh;\n'
||'    font-weight: bold;\n    margin-bottom: 10px;\n}\n\n.ng-primeira-col{\n    margin-top:15px;\n}\n\n.ng-titulo-secundario-cor{\n    background-color: white;\n    color: currentColor;\n    align-items: flex-end;\n}\n\n.ng-padding-top-bot-0 {\n    pad'
||'ding-top: 0px;\n    padding-bottom: 0px;\n}\n\nbutton.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close {\n  visibility: hidden !important;\n}\n\n.ng-padding-0{\n    padding: 0px;\n}\n\n.t-Body-title {\n\'
||'tbox-shadow: none;\n}\n\n.a-Button {\n\tborder-left-style: none;\n}\n\n.t-Header-branding{\n\tbackground-color: var(--ut-body-background-color);\n    color: var(--ut-palette-primary);\n}\n\n.a-CardView-item{\n    padding: 4px;\n}\n\n.ng-botao-lista{\'
||'n    border-radius: 100px;\n    width: 2rem;\n    height: 2rem;\n    display: flex;\n    align-items: center;\n    justify-content: center;\n}\n\n.ng-tamanho-coluna-lista{ \n    display:block; \n    width:10px;\n}\n\n.ng-titulo-faceta{\n    font-size'
||': 16px !IMPORTANT;\n    font-weight: 500 !IMPORTANT;\n}\n\n.ng-padding-20{\n    padding: 20px !IMPORTANT;\n    padding-top: 0px !IMPORTANT;\n}\n\n.ng-padding-left-right-20{\n    padding-left: 20px !IMPORTANT;\n    padding-right: 20px !IMPORTANT;\n   '
||' padding-top: 0px !IMPORTANT;\n    padding-bottom: 0px !IMPORTANT;\n}\n\n.ng-margin-top-40{\n    margin-top: 40px !IMPORTANT;\n}\n\n.ng-itens-mesma-linha{\n    display: inline-block !IMPORTANT;\n}\n\n.fc-header-toolbar{\n    background-color: white;\'
||'n}\n\n.fc-view-harness{\n    background-color: white;\n}\n\n.apex-fullcalendar-5 .fc-day{\n    color: var(--ut-body-text-color);\n}\n\n.button-chamado {\n    position: absolute;\n    left: 690px;\n}\n\n.a-ListView-item {\n    border: none;\n}\n\n.ng-'
||'margin-top-0{\n    margin-top: 0px !IMPORTANT;\n}\n\n/*.t-Form-fieldContainer--floatingLabel .apex-item-display-only {\n    border-color: var(--ut-body-text-color);\n    color: var(--ut-body-text-color);\n    border-style: none;\n    background-color'
||': white;\n}*/\n\n.ng-button-order{\n    color: var(--ut-body-text-color);\n    font-weight: bold;\n}\n\n.ng-margin-top-0{\n    margin-top: 0px;\n}\n\n.ng-padding-left-15{\n    padding-left: 15px;\n}\n\n.t-Form-helpButton{\n    color: #1a457e !IMPORTA'
||'NT;\n    background-color: white !IMPORTANT;\n    border: none !IMPORTANT;\n    margin-top: 1px !IMPORTANT;\n    margin-bottom: 1px !IMPORTANT;\n    border-radius: 0px !IMPORTANT;\n}\n\n.ui-dialog-title{\n    color: var(--ut-body-text-color);\n}\n\n.'
||'ui-dialog--helpDialog{\n    background-color: white;\n}\n\np{\n    color: var(--ut-body-text-color);\n}\n","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#69846979717486138.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(80999695008651400)
,p_theme_id=>101
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(80999930311651400)
,p_theme_id=>101
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(81000068180651400)
,p_theme_id=>101
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(81000284401651400)
,p_theme_id=>101
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(81000486024651401)
,p_theme_id=>101
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(81374388328975426)
,p_theme_id=>101
,p_name=>'NG Light'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-OG":"#fdfdfd","@g_Region-BG":"#e7ebee","@g_Region-FG":"#1a457e","@g_Region-Header-BG":"#e7ebee","@g_Region-Header-FG":"#1a457e","@g_Body-BG":"#e7ebee","@g_Body-Text":"#1a457e","@g_Form-Item-BG":"#ffffff","@g_Form-Item'
||'-FG":"#1a457e","@g_Accent-BG":"#1a457e","@g_Body-Title-BG":"#e7ebee","@g_Body-Title-FG":"#1a457e","@g_Form-Label":"#1a457e","@g_Actions-Col-BG":"#f9f9f9","@g_Actions-Col-Text":"#1a457e","@g_Nav_Style":"light","@g_Nav-Active-BG":"#cfd7dd","@g_Nav-Acti'
||'ve-FG":"#1a457e","@g_NavBarMenu-BG":"#ffffff","@g_NavBarMenu-FG":"#262626","@g_Nav-Icon":"#1a457e","@g_Nav-Icon-Active":"#1a457e","@g_Nav-BG":"#e7ebee","@g_Nav-FG":"#1a457e","@g_Nav-Accent-BG":"#cfd7dd","@g_Nav-Accent-FG":"#1a457e","@g_Nav-Badge-BG":'
||'"#006bd8","@g_Nav-Badge-FG":"#ffffff","@g_NavBarMenu-Active-BG":"#006bd8","@g_NavBarMenu-Active-FG":"#ffffff","@g_Success-BG":"#76ca02","@g_Success-FG":"#ffffff","@g_Info-BG":"#056ac8","@g_Info-FG":"#ffffff","@g_Link-Base":"#48b0f7"},"customCSS":".a-'
||'IRR-table, \n.a-Button {\n\tbackground-color: var(--a-field-input-background-color);\n}\n\n.a-IRR-header {\n\tbackground-color: var(--ut-palette-primary);\n\tborder-color: var(--ut-palette-primary);\n}\n\n.a-IRR-table td,\n.a-IRR-toolbar,\n.ui-dialog'
||'-titlebar,\n.t-Wizard {\n\tborder-style: none;\n\tbox-shadow: none;\n}\n\n.t-Form-fieldContainer--floatingLabel .apex-item-display-only {\n    /*border-width: var(--a-field-input-border-width, 1px);\n    border-style: solid;\n    color: var(--ut-body'
||'-text-color);\n    box-shadow: var(--ut-region-box-shadow, var(--ut-component-box-shadow));\n    background-color: var(--a-field-input-background-color);*/\n    border-color: lightgray;\n    color: var(--ut-body-text-color);\n    background-color: wh'
||'ite;\n}\n\n.apex-item-wrapper--date-picker-jet .oj-text-field-container .oj-component-icon.oj-clickable-icon-nocontext:not(.oj-select-clear-entry-icon):not(.oj-combobox-clear-entry-icon):not(.oj-label-help-icon-anchor) {\n\tbackground-color: #fff;\n}'
||'\n\n.t-Dialog-footer .t-ButtonRegion {\n\tborder-top: none;\n}\n\n.t-Wizard-header {\n\tbackground-color: var(--a-toolbar-background-color);\n}\n\n.t-Wizard .t-Wizard-title {\n\tcolor: var(--ut-body-text-color);\n}\n\n.t-Wizard .t-Wizard-controls {\n'
||'\t-webkit-padding-start: 0;\n\tpadding-inline-start: 0;\n\t-webkit-padding-end: 0;\n\tpadding-inline-end: 0;\n\t-webkit-padding-before: 0;\n\t-webkit-padding-after: 0;\n\tpadding-block-end: 0;\n}\n\n.a-IRR-controlGroup {\n\tborder-right-style: none;\'
||'n}\n\n.a-IRR-toolbar {\n\tpadding: 0px;\n}\n\n.a-IRR-headerLink {\n\tcolor: var(--a-button-hover-background-color);\n}\n\n.a-IRR-tableContainer {\n\tpadding-top: 5px;\n}\n\n.t-Region-header {\n\tbackground-color: var(--ut-palette-primary);\n    color'
||unistr(': var(--ut-body-title-background-color);\005Cn}\005Cn\005Cn.t-Region .t-IRR-region {\005Cn\005Ctpadding-top: 8px;\005Cn}\005Cn\005Cn.t-MediaList {\005Cn\005Ctpadding-top: 8px;\005Cn}\005Cn\005Cn.Aguardando,\005Cn.Finalizado,\005Cn.Conclu\00EDdo {\005Cn\005Ctpointer-events: none;\005Cn\005Ctopacity: 0.7;\005Cn}\005Cn\005Cn.a-CardView-items--')
||'row .a-CardView {\n\tborder: none;\n}\n\n.ng-texto-destaque {\n\tdisplay: inline-block;\n\tborder-radius: 5px;\n\tpadding: 3px;\n\tfont-weight: bolder;\n\tcolor: #fff;\n\tfont-size: 14px;\n}\n\n.a-CardView-items--row .a-CardView-actions {\n\tborder-t'
||'op: 0px;\n}\n\n.a-CardView-items--row .a-CardView-header {\n\tborder-bottom: 0px;\n\tpadding-bottom: 0px;\n}\n\n.a-CardView-button {\n\tpadding-left: 0px;\n\tpadding-bottom: 0px;\n}\n\n.backgroudcolor-item {\n\tbackground-color: var(--a-field-input-b'
||'ackground-color);\n}\n\n.t-WizardSteps-label {\n\tpadding-top: 20px;\n}\n\n.font-size-8 {\n\tfont-size: 8px;\n}\n\n.t-Cards--basic .t-Card-wrap,\n.t-Cards--compact .t-Card-wrap {\n\tbackground-color: var(--a-field-input-background-color);\n}\n\n.colo'
||'r-azulclaro {\n\tbackground-color: var(--ut-link-text-color);\n}\n\n.color-desabilitado {\n\tbackground-color: var(--ut-component-badge-background-color);\n}\n\n.dialog-450 {\n\twidth: 450px!Important;\n}\n\n.a-GV--variableHeight .a-GV-table td,\n.a-'
||'GV--variableHeight .a-GV-table th {\n\tborder: none;\n\tbackground-color: #fff;\n}\n\n.a-GV-table{\n    background-color: #fff;\n}\n\n.a-IG-header {\n\tpadding-left: 0px;\n\tpadding-right: 0px;\n\tborder-bottom: 0px;\n    width: 100% !IMPORTANT;\n}\n'
||'\n.t-MediaList--showDesc .t-MediaList-desc {\n\tpadding-left: 0px;\n}\n\n.t-Cards--spanHorizontally .t-Cards-item {\n\tmargin-left: 4px;\n\tmargin-right: 4px;\n}\n\n.a-CardView-items--row .a-CardView-body {\n\tpadding: 0px;\n}\n\n.apex-item-text.apex'
||'-page-item-error {\n\tborder-color: var(--ut-palette-danger);\n}\n\n.l-button {\n\tpadding-bottom: 8px;\n\tpadding-top: 8px;\n\tpadding-left: 0px;\n\twidth: 15px;\n\tflex-basis: 4%;\n\tmax-width: 4%;\n}\n\n.col-full {\n\tflex-basis: 95%;\n\tmax-width'
||': 95%;\n\tpadding-right: 0px;\n}\n\n.l-button-style {\n\theight: 100%;\n\twidth: 5%;\n\tpadding: 0px;\n    background-color: white;\n    color: var(--ut-body-text-color);\n}\n\na-GV-cell {\n\tborder: 0px;\n}\n\n.a-GV-cell {\n\tborder-width: 0px;\n\tb'
||'ackground-color: transparent;\n\tcolor: var(--ut-focus-outline-color);\n}\n\n.a-GV-header {\n\tcolor: white;\n\tbackground-color: var(--ut-focus-outline-color);\n\tborder-width: 0;\n}\n\n.IG-button-create {\n\tmargin-bottom: 8px;\n}\n\n.a-IG-controls'
||'Container {\n\tbackground-color: var(--ut-body-background-color);\n\tborder-top: 0px;\n}\n\n.t-Footer {\n\tdisplay: none;\n}\n\n.t-Footer-top {\n\tDisplay: none !important;\n}\n\n.t-Footer-srMode {\n\tDisplay: none !important;\n}\n\n.t-Footer-version'
||' {\n\tDisplay: none !important;\n}\n\n.t-Footer-apex {\n\tDisplay: none !important;\n}\n\n.t-Region-body {\n\tpadding: 0px;\n}\n\n.a-Button-label,\n.t-Alert-title {\n\tcolor: var(--ut-body-text-color);\n}\n\n.a-Toolbar-group {\n\tborder: 0px;\n}\n\n.'
||'a-IRR {\n\tborder: 0px;\n}\n\n.t-Wizard-body {\n\tbackground-color:  var(--ut-body-background-color);\n}\n\n.t-BreadcrumbRegion {\n    background-color:  var(--ut-body-background-color);\n}\n\n.a-IRR-header:hover {\n    background-color: #1f5397;\n}\'
||'n\n.a-IRR-headerLink {\n    background-color: var(--ut-body-text-color);\n}\n\n.c-background-white {\n    background-color: #fff;\n}\n\n.c-background-1 {\n    background-color: var(--ut-body-background-color);\n}\n\n.t-font-color,\n.oj-inputdatetime-'
||'calendar-icon {\n\tcolor: var(--ut-body-text-color);\n}\n\n.a-bloco{\n    background-color: #FFFFFF;\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    border-radius: 10px;\n    margin: 8px;\n}\n\n.a-CardView-header{\n    border: 0px;\n}\n\n.a-Ca'
||'rdView-icon{\n    background-color: #E7EBEE;\n    color: #1f5397;\n}\n\n.col-4-4 {\n    padding: 0px; \n    margin-right: 8px; \n    height: 100%; \n    background-color: var(--ut-palette-primary-contrast);\n    border-radius: 5px; \n    margin-botto'
||'m: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.imagem-4-4 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 75%; \n    object-fit: cover;\n}\n\n.imagem-2-2 {\n    border-radius: 5px 5px 0px 0px; \n    width: 10'
||'0%;\n    height: 50%; \n    object-fit: cover;\n}\n\n.subtitle-4-4 {\n    font-size: 20px; \n    margin-left: 20px; \n    margin-top: 15px; \n    color: #83CFDC;\n}\n\n.page-1-1 {      \n    height:92%; \n    background-color: var(--ut-palette-primar'
||'y-contrast); \n    border-radius: 5px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.page-1-1-1 {      \n    height:48%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    box-sh'
||'adow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.imagem-1-1 {\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); \n    border-radius: 5px; \n    width: 100%;\n    height: 100%;\n    object-fit: fill;\n}\n\n.title-1-1 {\n    font-size: '
||'5vh; \n    margin-left: 4vh; \n    margin-bottom: 1vh;\n    font-weight: bold;\n    margin-top: 4vh;\n    line-height: 5.5vh;\n}\n\n.subtitle-1-1 {\n    font-size: 4vh; \n    margin-left: 4vh; \n    margin-right: 4vh;\n    color: #83CFDC;\n    line-h'
||'eight: 4vh;\n    padding: 0px;\n}\n\n.text-1-1 {\n    font-size: 2.00vh; \n    margin-left: 4vh; \n    margin-top: -0.5vh; \n    //margin-right: 2.5vh; \n    margin-right: 4vh; \n    font-weight: normal; \n    color: #8E8E8E;\n    line-height: 2.75vh'
||';\n    padding: 0px;\n}\n\n.imagem-1-2 {\n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); \n    border-radius: 5px; \n    width: 100%;\n    object-fit: cover;\n    height: 56%;\n}\n\n.page-1-2{\n    margin-left: 8px;\n    margin-right: 8px;\n    hei'
||'ght: 92%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 10px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.pageH50{\n    height: 50%;\n}\n\n.title-1-2{\n    '
||'margin-top: 0vh;\n    padding-top: 2.5vh;\n    line-height: 5.5vh;\n}\n\n.imagem-2-1 {\n    border-radius: 0px 0px 5px 5px; \n    width: 100%;\n    height: 100%; \n    object-fit: cover;\n}\n\n.imagem-2-3 {\n    border-radius: 5px 5px 0px 0px;\n    w'
||'idth: 25%;\n    height: 33.333%;\n    object-fit: cover;\n}\n\n.page-2-1{\n    margin-left: 0px;\n    margin-right: 8px;\n    height: 100%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 8px'
||'; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.subtitle-1-2 {\n    font-size: 3vh; \n    margin-top: 1vh;\n    margin-left: 4vh; \n    color: #83CFDC;\n    margin-bottom: 0vh;\n    line-height: 3vh;\n}\n\n.subtitle-1-3'
||' {\n    font-size: 2.5vh; \n    margin-top: 0vh;\n    margin-left: 4vh; \n    color: #83CFDC;\n    margin-bottom: 0vh;\n    line-height: 3vh;\n}\n\n.text-1-2 {\n    font-size: 2vh; \n    margin-left: 4vh; \n    margin-top: 0vh; \n    margin-right: 2.'
||'5vh; \n    font-weight: normal; \n    color: #8E8E8E;\n    line-height: 2.5vh;\n}\n\n.text-1-3 {\n    font-size: 2vh; \n    margin-left: 4vh; \n    margin-top: 0vh; \n    margin-right: 2.5vh; \n    font-weight: normal; \n    color: #8E8E8E;    \n    '
||'line-height: 2.5vh;\n}\n\n.subtitle-1-4 {\n    font-size: 2.5vh; \n    line-height: 2.5vh;\n    margin-top: 0vh;\n    margin-bottom: -1.5vh;\n    margin-left: 2vh; \n    color: #83CFDC;\n}\n\n.text-1-4 {\n    font-size: 2vh; \n    line-height: 2.5vh;'
||'\n    margin-left: 2vh; \n    margin-top: -0.5vh; \n    margin-right: 1.25vh; \n    font-weight: normal; \n    color: #8E8E8E;\n}\n\n.imagem-1-4 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 33.333%; \n    object-fit: cover;\'
||'n}\n\n.col-6-6 {\n    padding: 0px; \n    margin-right: 8px; \n    height: 100%; \n    background-color: var(--ut-palette-primary-contrast);\n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.'
||'imagem-1-6 {\n    border-radius: 5px 5px 0px 0px; \n    width: 100%;\n    height: 33.333%; \n    object-fit: cover;\n}\n\n.subtitle-1-6 {\n    font-size: 2.5vh; \n    line-height: 2.25vh;\n    margin-top: -0.5vh;\n    margin-left: 2vh;\n    margin-bo'
||'ttom: -1.5vh;\n    color: #83CFDC;\n}\n\n.text-1-6 {\n    font-size: 2vh; \n    line-height: 2vh;\n    margin-left: 2vh; \n    margin-top: -0.75vh;\n    margin-right: 1.25vh; \n    font-weight: normal; \n    color: #8E8E8E;\n}\n\n.page-1-3{\n    marg'
||'in-left: 0px;\n    margin-right: 8px;\n    height: 100%; \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n    padding: 0px;\n}\n\n.col-'
||'1-5 {\n    padding: 0px;  \n    height: 100%;  \n    margin-left: 4px;   \n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 5px; \n    margin-bottom: 4px; \n    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);\n}\n\n.a-IG {\'
||'n    border-style: none;\n}\n\n@media screen and (max-width: 600px) {\n.a-IRR-actions, .a-IRR-buttons, .a-IRR-controls {\n    flex-grow: 1;\n    flex-basis: 100%;\n    max-width: unset;\n  }\n}\n\n.column {\n  float: left;\n  width: 50%;\n}\n\n/* Cle'
||'ar floats after the columns */\n.row:after {\n  content: \"\";\n  display: table;\n  clear: both;\n}\n\n.text-color-principal{\n    color: var(--ut-body-text-color);\n}\n\n.a-CardView {\n    border: none;\n    box-shadow: none;\n}\n\n.row-100{\n    h'
||'eight: 100%;\n}\n\n.t-Cards--featured .t-Card-wrap {\n    background-color: var(--ut-palette-primary-contrast); \n    border-radius: 10px;\n}\n\n.c-margem-left-5{\n    margin-left: 5px;\n}\n\n.a-Collapsible-content{\n\tpadding: 15px;\n}\n\n.t-Region-'
||'headerItems .t-Region-headerItems--controls{\n    margin-left: 15px;\n    margin-bottom: 10px;\n}\n\n.t-Region-headerItems--controls{\n    padding: 0px;\n}\n\n.t-Button--hideShow{\n    background-color: transparent;\n    color: var(--ut-palette-prima'
||'ry-text);\n    border: none;\n    box-shadow: none;\n}\n\n.t-Region--hideShow {\n    border-radius: 5px;\n    //box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.10);\n}\n\n.u-color-texto-principal {\n    color: var(--ut-palette-primary-text);\n}\n\n.u-radio{\'
||'n   color: var(--ut-palette-primary-text); \n}\n\n.u-radio.is-checked:after{\n    color: var(--ut-palette-primary-text); \n}\n\n.pageH33{\n    height: 33%;\n}\n\n.row-33{\n    height: 32.7%;\n    margin-bottom: 4px;\n}\n\n.col-5M92 {\n    flex-basis:'
||' 41.66666666666667%;\n    max-width: 41.66666666666667%;\n    max-height: 92%;\n}\n\n.col-5 {\n    flex-basis: 41.66666666666667%;\n    max-width: 41.66666666666667%;\n    max-height: 100%;\n}\n\n.row-50 {\n    height: 49.7%;\n    margin-bottom: 4px;'
||'\n}\n\n.ng-titulo-modal{\n    text-align: center;\n    font-size: 20px;\n    padding: 15px;\n}\n\n.t-Alert--wizard{\n    border: 0px;\n    box-shadow: none;\n}\n\n.t-Card-wrap{\n    border-radius: 10px;\n}\n\n.t-Alert{\n    margin-top: 0px !IMPORTANT'
||';\n}\n\n.t-Alert-content{\n    margin-top: 0px !IMPORTANT;\n    margin-bottom: 0px !IMPORTANT;\n}\n\n.t-Dialog-body{\n    padding-top: 0px !IMPORTANT;    \n}\n\n.t-Alert-wrap {\n    margin-top: 0px !IMPORTANT;\n    margin-bottom: 0px !IMPORTANT;\n}\n'
||'\n.t-WizardSteps{\n    margin-bottom: 30px;\n}\n\n.t-TreeNav .a-TreeView-node .a-TreeView-row{\n    margin-left: 4px;\n}\n\n.is-focused{\n    border-style: none;\n}\n\n.a-CardView{\n    background-color: white;\n    border-radius: 5px;\n    box-shado'
||'w: 0px 4px 4px rgba(0, 0, 0, 0.10);\n}\n\n.a-CardView-actions{\n    border-top: 0px;\n}\n\n.ng-estilo-titulo-mi{\n    font-size: 16px;\n    font-style: italic;\n    font-weight: 100;\n}\n\n.apex-page-success{\n    display: none !IMPORTANT;\n}\n\n.t-M'
||'ediaList-item{\n    background-color: #fff;\n}\n\n/*.u-Processing {\n    display: none !important;\n}*/\n\n.a-FS-facetChart{\n    background-color: #fff;\n    border-radius: 10px;\n}\n\n/*.is-selected{\n    background-color: #1f5397;\n}*/\n\n.ng-situ'
||'acao-card{\n    font-weight: bold;\n    color: var(--a-palette-success);\n    margin-top: 10px;\n}\n\n.ng-titulo-principal-bloco{\n    font-size: 24px;\n    font-style: italic;\n    font-weight: lighter;\n}\n\n.ng-inf-principal-bloco{\n    font-size:'
||' 24px;\n    font-weight: bold;\n}\n\n.ng-titulo-secundario-bloco{\n    font-style: italic;\n    font-weight: lighter;\n    text-align: end;\n    font-size: 16px;    \n    padding-left: 12px;\n}\n\n.ng-inf-secundario-bloco{\n    font-weight: bold;\n  '
||'  text-align: end;\n    font-size: 16px;\n}\n\n.a-IRR{\n    background-color: white;\n}\n\n.a-GV-table .a-GV-cell.is-focused, .a-GV-table .a-GV-controlBreakHeader.is-focused, .a-GV-table .a-GV-header.is-focused, .a-GV-table .a-GV-headerGroup.is-focus'
||'ed{\n    box-shadow: none;\n}\n\n.a:-webkit-any-link{\n    border: 0px;\n}\n\n.a-IRR-tableContainer{\n    background-color: var(--ut-body-background-color);\n}\n\n.a-IRR-paginationWrap--bottom{\n    background-color: var(--ut-body-background-color);\'
||'n}\n\n.a-IRR-noDataMsg{\n    background-color: var(--ut-body-background-color);\n}\n\n.ng-subtitulo-texto{\n    font-size: 3vh;\n    font-weight: bold;\n    margin-bottom: 10px;\n}\n\n.ng-primeira-col{\n    margin-top:15px;\n}\n\n.ng-titulo-secundari'
||'o-cor{\n    background-color: white;\n    color: currentColor;\n    align-items: flex-end;\n}\n\n.ng-padding-top-bot-0 {\n    padding-top: 0px;\n    padding-bottom: 0px;\n}\n\nbutton.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-o'
||'nly.ui-dialog-titlebar-close {\n  visibility: hidden !important;\n}\n\n.ng-padding-0{\n    padding: 0px;\n}\n\n.t-Body-title {\n\tbox-shadow: none;\n}\n\n.a-Button {\n\tborder-left-style: none;\n}\n\n.t-Header-branding{\n\tbackground-color: var(--ut-'
||'body-background-color);\n    color: var(--ut-palette-primary);\n}\n\n.a-CardView-item{\n    padding: 4px;\n}\n\n.ng-botao-lista{\n    border-radius: 100px;\n    width: 2rem;\n    height: 2rem;\n    display: flex;\n    align-items: center;\n    justif'
||'y-content: center;\n}\n\n.ng-tamanho-coluna-lista{ \n    display:block; \n    width:10px;\n}\n\n.ng-titulo-faceta{\n    font-size: 16px !IMPORTANT;\n    font-weight: 500 !IMPORTANT;\n}\n\n.ng-padding-20{\n    padding: 20px !IMPORTANT;\n    padding-to'
||'p: 0px !IMPORTANT;\n}\n\n.ng-padding-left-right-20{\n    padding-left: 20px !IMPORTANT;\n    padding-right: 20px !IMPORTANT;\n    padding-top: 0px !IMPORTANT;\n    padding-bottom: 0px !IMPORTANT;\n}\n\n.ng-margin-top-40{\n    margin-top: 40px !IMPORT'
||'ANT;\n}\n\n.ng-itens-mesma-linha{\n    display: inline-block !IMPORTANT;\n}\n\n.fc-header-toolbar{\n    background-color: white;\n}\n\n.fc-view-harness{\n    background-color: white;\n}\n\n.apex-fullcalendar-5 .fc-day{\n    color: var(--ut-body-text-'
||'color);\n}\n\n.button-chamado {\n    position: absolute;\n    left: 690px;\n}\n\n.a-ListView-item {\n    border: none;\n}\n\n.ng-margin-top-0{\n    margin-top: 0px !IMPORTANT;\n}\n\n/*.t-Form-fieldContainer--floatingLabel .apex-item-display-only {\n '
||'   border-color: var(--ut-body-text-color);\n    color: var(--ut-body-text-color);\n    border-style: none;\n    background-color: white;\n}*/\n\n.ng-button-order{\n    color: var(--ut-body-text-color);\n    font-weight: bold;\n}\n\n.ng-margin-top-0{'
||'\n    margin-top: 0px;\n}\n\n.ng-padding-left-15{\n    padding-left: 15px;\n}\n\n.t-Form-helpButton{\n    box-shadow: none;\n    color: grey;\n}\n\n.ui-dialog-title{\n    color: var(--ut-body-text-color);\n}\n\n.ui-dialog--helpDialog{\n    background'
||'-color: white;\n}\n\np{\n    color: var(--ut-body-text-color);\n}\n","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#11468751756350200.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
