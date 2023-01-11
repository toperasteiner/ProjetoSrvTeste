prompt --application/shared_components/security/authentications/autenticação_srv
begin
--   Manifest
--     AUTHENTICATION: Autenticação SRV
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.1'
,p_default_workspace_id=>69515084060328672
,p_default_application_id=>105
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SRVDEV'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(8869358846138583)
,p_name=>unistr('Autentica\00E7\00E3o SRV')
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'PKG_SEGURANCA.AUTH'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
