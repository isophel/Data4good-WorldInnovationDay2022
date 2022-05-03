prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_default_workspace_id=>5958060570736991514
);
end;
/
prompt  WORKSPACE 5958060570736991514
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   10:51 Tuesday May 3, 2022
--   Exported By:     SHAIKHA.SABTI@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         22.1.0-17
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>5958060570736991514);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace DATA-FOR-GOOD...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 5958413611717223013
 ,p_provisioning_company_id => 5958060570736991514
 ,p_short_name => 'DATA-FOR-GOOD'
 ,p_display_name => 'DATA-FOR-GOOD'
 ,p_first_schema_provisioned => 'WKSP_DATAFORGOOD'
 ,p_company_schemas => 'WKSP_DATAFORGOOD'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'DATA-FOR'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'DATA-FOR-GOOD'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821681197747218,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821573915747218,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1821402753747217,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5991715913541226491',
  p_user_name                    => 'IQBAL',
  p_first_name                   => 'iqbal',
  p_last_name                    => 'khatoonm',
  p_description                  => '',
  p_email_address                => 'iqbalkhatoonm@gmail.com',
  p_web_password                 => '1C0E38258F168D0F630D971996D962ABF63325712AFA8E588A6DC30F717EEB0D75FC7997A08069A928B4BD2108822C21E606A794BFBA0ABED6202C58838A6704',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DATAFORGOOD',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205011744','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5991444831750425176',
  p_user_name                    => 'ISOPHEL',
  p_first_name                   => 'isophel',
  p_last_name                    => 'natwijuka',
  p_description                  => '',
  p_email_address                => 'isophelnatwijuka@gmail.com',
  p_web_password                 => 'D07720A76910F9BA7819A5FC754079F4A9A4A0F32CC4AEC346B11C72A363BF91483F1AD811533A40E348C19E1901375B9FF3C165177F78BE15A693F276B972CC',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DATAFORGOOD',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205021124','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5996843457492332910',
  p_user_name                    => 'MUZNA',
  p_first_name                   => 'muzna',
  p_last_name                    => 'Yumman',
  p_description                  => '',
  p_email_address                => 'muznayummanl565@gmail.com',
  p_web_password                 => 'E65E6C642D59E09FBAA381AB1C78481264062406A5CD44A75F3CE93887B22CD97D60E9099C452134639AE7A801D575DB4A468D530A7A63E4BD7727A221A6395B',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DATAFORGOOD',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205021125','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5958060437628991514',
  p_user_name                    => 'SHAIKHA.SABTI@GMAIL.COM',
  p_first_name                   => 'Shaikha',
  p_last_name                    => 'Sabti',
  p_description                  => '',
  p_email_address                => 'shaikha.sabti@gmail.com',
  p_web_password                 => 'F090077673214C3336836B7EE380A737CF648A06B9852E8C783E3586F66BE1F4EA306E47083ED153972407AC6203F0B9BD40AB8D7A8589DE09C71D0DA6BC7AB8',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DATAFORGOOD',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205011011','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '5991625280764209367',
  p_user_name                    => 'SHARAN',
  p_first_name                   => 'sharan',
  p_last_name                    => 'harsoor',
  p_description                  => '',
  p_email_address                => 'sharanharsoor@gmail.com',
  p_web_password                 => 'EA1BB846448CB1455A03443A5DA3EC1453B14003FBBB25AE9A87C4BBC0D47960D0A2DCF6DE30FB256FFEAC14CBD192F66A4FA8B50A5B66B4BFD4051999D735C5',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_DATAFORGOOD',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202205021125','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5991444938826425184,
    p_user_id => 5991444831750425176,
    p_password => 'D07720A76910F9BA7819A5FC754079F4A9A4A0F32CC4AEC346B11C72A363BF91483F1AD811533A40E348C19E1901375B9FF3C165177F78BE15A693F276B972CC');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5958414860534225142,
    p_user_id => 5958060437628991514,
    p_password => 'F090077673214C3336836B7EE380A737CF648A06B9852E8C783E3586F66BE1F4EA306E47083ED153972407AC6203F0B9BD40AB8D7A8589DE09C71D0DA6BC7AB8');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5958413831687223023,
    p_user_id => 5958060437628991514,
    p_password => 'BDF7BFECD827B000B0ABE1EA43C66699525F9847B694F8673BF96BE76387B0952826E17D6760102904E7D7DD3ED69B6B9EB979FF6B488B7DF362A0AD5934FD0D');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6197441393156084569,
    p_user_id => 5996843457492332910,
    p_password => 'E65E6C642D59E09FBAA381AB1C78481264062406A5CD44A75F3CE93887B22CD97D60E9099C452134639AE7A801D575DB4A468D530A7A63E4BD7727A221A6395B');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6197451169203086176,
    p_user_id => 5991625280764209367,
    p_password => 'EA1BB846448CB1455A03443A5DA3EC1453B14003FBBB25AE9A87C4BBC0D47960D0A2DCF6DE30FB256FFEAC14CBD192F66A4FA8B50A5B66B4BFD4051999D735C5');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5991625329867209376,
    p_user_id => 5991625280764209367,
    p_password => 'EA1BB846448CB1455A03443A5DA3EC1453B14003FBBB25AE9A87C4BBC0D47960D0A2DCF6DE30FB256FFEAC14CBD192F66A4FA8B50A5B66B4BFD4051999D735C5');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5991716066045226500,
    p_user_id => 5991715913541226491,
    p_password => '1C0E38258F168D0F630D971996D962ABF63325712AFA8E588A6DC30F717EEB0D75FC7997A08069A928B4BD2108822C21E606A794BFBA0ABED6202C58838A6704');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 5996843572194332918,
    p_user_id => 5996843457492332910,
    p_password => 'E65E6C642D59E09FBAA381AB1C78481264062406A5CD44A75F3CE93887B22CD97D60E9099C452134639AE7A801D575DB4A468D530A7A63E4BD7727A221A6395B');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 6197333024460302577,
    p_user_id => 5991444831750425176,
    p_password => 'D07720A76910F9BA7819A5FC754079F4A9A4A0F32CC4AEC346B11C72A363BF91483F1AD811533A40E348C19E1901375B9FF3C165177F78BE15A693F276B972CC');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6152128629377211971,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'APEX_IG_225857161514926537_CURRENT_REPORT',
    p_attribute_value => '229170045038968477:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5971329069108608328,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'APEX_IG_5402528899234735_CURRENT_REPORT',
    p_attribute_value => '27818993000237613:ICON',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6156734199003416174,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6154889893533128838,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '290:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5960044710085097286,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '49399',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6156770261182422017,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6463322393983243081,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP4500_P3100_R82702857605738101_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6463333081776244765,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP4500_P3110_R1595347007342836_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6197452751135086507,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6153244069532291021,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6156733427539415730,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6225720647343267006,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____REPORT',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6197401103776077659,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6153566870112075465,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_49399_P4_W6153501096346069379',
    p_attribute_value => '6153512354746069387____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5960338840975121602,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '0',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 5960044458941097256,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 6463159057671011770,
    p_user_id => 'SHAIKHA.SABTI@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P4000_W2273820316819404',
    p_attribute_value => '2288425746427871____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011011','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011511','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ISOPHELNATWIJUKA@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011612','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MUZNAYUMMANL565@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011613','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ISOPHELNATWIJUKA@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011613','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MUZNAYUMMANL565@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011614','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MUZNAYUMMANL565@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011615','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ISOPHELNATWIJUKA@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011615','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MUZNAYUMMANL565@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011620','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'IQBALKHATOONM@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011628','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011634','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'MUZNAYUMMANL565@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205011745','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205020649','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205021402','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205021402','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205021402','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_220100',
    p_access_date => to_date('202205030754','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205020836','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021407','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021413','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021414','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021415','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021416','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021428','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021428','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021429','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021448','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'ANONYMOUS',
    p_auth_method => 'Data4GoodAuth',
    p_app => 49399,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205021449','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHASABTI',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 87872,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205011028','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'SHAIKHA.SABTI@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 87872,
    p_owner => 'WKSP_DATAFORGOOD',
    p_access_date => to_date('202205011028','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
wwv_flow_team_api.create_issue_template (
  p_id => 5971401809293829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Template'
 ,p_template_description => 'Template used to log a bug.'
 ,p_template_text => 
'**Expected Behavior**'||chr(10)||
'- Tell us what you believe should happen.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Current Behavior**'||chr(10)||
'- Tell us what happens.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Who is affected**'||chr(10)||
'- Tell us who/what is affected. '||chr(10)||
''||chr(10)||
'**Possible Solution**'||chr(10)||
'- If you can, suggest how you would fix this bug.'||chr(10)||
''||chr(10)||
'**Steps to Reproduce**'||chr(10)||
'- Provide an unambiguous set of steps to reproduce, including screen shots and code snippets if appropriate.'||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
'- What'||
' were you trying to accomplish when the bug occurred. Does the bug only occur under certain conditions, or at certain times of day, and so forth.'||chr(10)||
''||chr(10)||
'**Environment**'||chr(10)||
''||chr(10)||
'- Version: '||chr(10)||
'- Platform: '||chr(10)||
'- Subsystem:'||chr(10)||
''||chr(10)||
'______'||chr(10)||
''||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971401957113829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Template'
 ,p_template_description => 'Template used to log a feature request.'
 ,p_template_text => 
'**Feature Summary**'||chr(10)||
' - Provide a one paragraph general overview of the feature request.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Context**'||chr(10)||
' - Does this request relate to a specific situation or process? For example, "I am always frustrated when [...]"'||chr(10)||
''||chr(10)||
''||chr(10)||
' - Please provide any supporting information, including screenshots, use cases, and so forth.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Preferred Solution**'||chr(10)||
'- Provide a clear description of what you would like to see impl'||
'emented.'||chr(10)||
''||chr(10)||
''||chr(10)||
'**Alternative Solutions**'||chr(10)||
'- Provide a description of alternative solutions or features considered, or workarounds used.'||chr(10)||
''||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue, then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402062176829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'How Do I ...'
 ,p_template_description => 'Template used to ask a procedural question.'
 ,p_template_text => 
'**Question**'||chr(10)||
'- State your question or request as succinctly as possible.'||chr(10)||
''||chr(10)||
'**General Context**'||chr(10)||
'- What are you trying to do? '||chr(10)||
''||chr(10)||
''||chr(10)||
'- Where else have you looked or who else have you contacted to find an answer? '||chr(10)||
''||chr(10)||
''||chr(10)||
'**Environment** '||chr(10)||
'Is this question specific to an environment, programming language or other area?'||chr(10)||
''||chr(10)||
'______'||chr(10)||
'_**NOTE:** To associate an issue with an application and/or page, first log the issue,'||
' then use the **ACTIONS** drop down to associate the App and Page._'
 ,p_template_type => 'ISSUE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402151680829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Bug Raised'
 ,p_template_description => 'A bug has been raised.'
 ,p_template_text => 
'A **Bug** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402242835829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Won''t Action'
 ,p_template_description => 'This issue will not be actioned'
 ,p_template_text => 
'After careful consideration, **no further action will be taken on this issue**. '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402330179829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Feature Request Filed'
 ,p_template_description => 'A feature request has been filed.'
 ,p_template_text => 
'A **Feature Request** has been filed in the appropriate external system.'||chr(10)||
''||chr(10)||
'- Feature Tracking System: '||chr(10)||
'- Feature ID: '||chr(10)||
'- URL to Feature Definition: '||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402430406829637 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Known Issue'
 ,p_template_description => 'Reference a known issue.'
 ,p_template_text => 
'After review, it has been determined that this is a known issue, see details below.'||chr(10)||
''||chr(10)||
'- Bug Tracking System: '||chr(10)||
'- Bug ID: '||chr(10)||
'- URL to bug: '||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402566728829638 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Need More Information'
 ,p_template_description => 'Request for more information.'
 ,p_template_text => 
'**More information is needed for this issue:**'||chr(10)||
''||chr(10)||
'Please provide the information requested below. Without this information it will be difficult to triage and address the issue further.'||chr(10)||
''||chr(10)||
''||chr(10)||
'Comments:'
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_issue_template (
  p_id => 5971402658597829638 + wwv_flow_team_api.g_id_offset
 ,p_template_name => 'Followup Action Required'
 ,p_template_description => 'A followup action is required.'
 ,p_template_text => 
'Please perform the following actions: '||chr(10)||
''||chr(10)||
'1.'||chr(10)||
'2.'||chr(10)||
'3.'||chr(10)||
'4.'||chr(10)||
''||chr(10)||
'Comments: '
 ,p_template_type => 'RESPONSE'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ...Issue Email Prefs
--
begin
wwv_flow_team_api.create_issue_email_prefs (
  p_id => 5971403115634829640 + wwv_flow_team_api.g_id_offset
 ,p_user_id => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_receive_emails_yn => 'Y'
 ,p_notification_types => 'ISSUE_EDIT:COMMENT_ADD:COMMENT_EDIT:STATUS:ASSIGNEE:SUBSCRIBER:MILESTONE:LABEL:DUPLICATE:ASSOCIATION:ATTACHMENT'
 ,p_frequency => 'IMMEDIATELY'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ...Label Groups
--
begin
wwv_flow_team_api.create_label_group (
  p_id => 5971298438851829634 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Functional Area'
 ,p_group_color => 'label-color-19'
 ,p_group_description => 'Functional area affected by the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 5971299302402829635 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Category'
 ,p_group_color => 'label-color-11'
 ,p_group_description => 'Category assigned to the issue.'
 ,p_values_are_exclusive => 'N'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 5971400222427829636 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Importance'
 ,p_group_color => 'label-color-16'
 ,p_group_description => 'Level of importance assigned to the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 5971400895346829636 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Level of Effort'
 ,p_group_color => 'label-color-13'
 ,p_group_description => 'Level of effort to address the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label_group (
  p_id => 5971401248714829636 + wwv_flow_team_api.g_id_offset
 ,p_group_name => 'Progress'
 ,p_group_color => 'label-color-14'
 ,p_group_description => 'Progress against the issue.'
 ,p_values_are_exclusive => 'Y'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ...Labels
--
begin
wwv_flow_team_api.create_label (
  p_id => 5971298538924829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'UI / UX'
 ,p_label_desc => 'UI / UX'
 ,p_label_slug => 'ui-ux'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971298691069829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'Database'
 ,p_label_desc => 'Database'
 ,p_label_slug => 'database'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971298700801829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'REST Integration'
 ,p_label_desc => 'REST Integration'
 ,p_label_slug => 'rest-integration'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971298870399829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'CSS / HTML'
 ,p_label_desc => 'CSS / HTML'
 ,p_label_slug => 'css-html'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971298936781829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'Dynamic Actions / JavaScript'
 ,p_label_desc => 'Dynamic Actions / JavaScript'
 ,p_label_slug => 'dynamic-actions-javascript'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299084793829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'Security'
 ,p_label_desc => 'Security'
 ,p_label_slug => 'security'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299152994829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'Administration'
 ,p_label_desc => 'Administration'
 ,p_label_slug => 'administration'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299226881829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971298438851829634
 ,p_label_name => 'External System Integration'
 ,p_label_desc => 'External System Integration'
 ,p_label_slug => 'external-system-integration'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299447311829635 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Bug'
 ,p_label_desc => 'Bug'
 ,p_label_slug => 'bug'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299554900829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Enhancement Request'
 ,p_label_desc => 'Enhancement Request'
 ,p_label_slug => 'enhancement-request'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299699561829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Feature Request'
 ,p_label_desc => 'Feature Request'
 ,p_label_slug => 'feature-request'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299722347829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Security Issue'
 ,p_label_desc => 'Security Issue'
 ,p_label_slug => 'security-issue'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299816439829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Performance Issue'
 ,p_label_desc => 'Performance Issue'
 ,p_label_slug => 'performance-issue'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971299975042829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Installation Issue'
 ,p_label_desc => 'Installation Issue'
 ,p_label_slug => 'installation-issue'
 ,p_display_sequence => 60
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971300052805829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Documentation Issue'
 ,p_label_desc => 'Documentation Issue'
 ,p_label_slug => 'documentation-issue'
 ,p_display_sequence => 70
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400162243829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971299302402829635
 ,p_label_name => 'Training Issue'
 ,p_label_desc => 'Training Issue'
 ,p_label_slug => 'training-issue'
 ,p_display_sequence => 80
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400336802829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400222427829636
 ,p_label_name => 'Critical'
 ,p_label_desc => 'Critical'
 ,p_label_slug => 'critical'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400413487829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400222427829636
 ,p_label_name => 'Important'
 ,p_label_desc => 'Important'
 ,p_label_slug => 'important'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400525947829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400222427829636
 ,p_label_name => 'Normal'
 ,p_label_desc => 'Normal'
 ,p_label_slug => 'normal'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400670779829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400222427829636
 ,p_label_name => 'Backlog'
 ,p_label_desc => 'Backlog'
 ,p_label_slug => 'backlog'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400761536829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400222427829636
 ,p_label_name => 'Will Not Address'
 ,p_label_desc => 'Will Not Address'
 ,p_label_slug => 'will-not-address'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971400936039829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400895346829636
 ,p_label_name => 'Easy Fix'
 ,p_label_desc => 'Easy Fix'
 ,p_label_slug => 'easy-fix'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401040849829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400895346829636
 ,p_label_name => 'Moderate Effort'
 ,p_label_desc => 'Moderate Effort'
 ,p_label_slug => 'moderate-effort'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401198536829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971400895346829636
 ,p_label_name => 'Large Development Effort'
 ,p_label_desc => 'Large Development Effort'
 ,p_label_slug => 'large-development-effort'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401391516829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971401248714829636
 ,p_label_name => 'Working On It'
 ,p_label_desc => 'Working On It'
 ,p_label_slug => 'working-on-it'
 ,p_display_sequence => 10
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401462785829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971401248714829636
 ,p_label_name => 'Requires More Info'
 ,p_label_desc => 'Requires More Info'
 ,p_label_slug => 'requires-more-info'
 ,p_display_sequence => 20
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401515374829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971401248714829636
 ,p_label_name => 'Waiting on Third Party'
 ,p_label_desc => 'Waiting on Third Party'
 ,p_label_slug => 'waiting-on-third-party'
 ,p_display_sequence => 30
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401694184829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971401248714829636
 ,p_label_name => 'Can Not Fix'
 ,p_label_desc => 'Can Not Fix'
 ,p_label_slug => 'can-not-fix'
 ,p_display_sequence => 40
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_label (
  p_id => 5971401780317829636 + wwv_flow_team_api.g_id_offset
 ,p_label_group_id => 5971401248714829636
 ,p_label_name => 'Complete'
 ,p_label_desc => 'Complete'
 ,p_label_slug => 'complete'
 ,p_display_sequence => 50
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ... Milestones
--
begin
wwv_flow_team_api.create_milestone (
  p_id => 5971402744800829638 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Code Freeze'
 ,p_milestone_date => to_date('20220516115228','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'code-freeze'
 ,p_milestone_id => 1
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_milestone (
  p_id => 5971402815705829639 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'UI Freeze'
 ,p_milestone_date => to_date('20220531115228','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'ui-freeze'
 ,p_milestone_id => 2
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
wwv_flow_team_api.create_milestone (
  p_id => 5971402902183829639 + wwv_flow_team_api.g_id_offset
 ,p_milestone_name => 'Final Release'
 ,p_milestone_date => to_date('20220615115228','YYYYMMDDHH24MISS')
 ,p_milestone_status => 'OPEN'
 ,p_milestone_slug => 'final-release'
 ,p_milestone_id => 3
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ... Issues
--
begin
wwv_flow_team_api.create_issue (
  p_id => 5971403030782829639 + wwv_flow_team_api.g_id_offset
 ,p_title => 'Welcome to Team Development in Oracle APEX!'
 ,p_slug => 'welcome-to-team-development-in-oracle-apex'
 ,p_issue_text => 
'Hi there! '||chr(10)||
''||chr(10)||
'This is your very first issue! You can create issues to keep track of tasks, features, bugs, and feedback for all of your APEX projects!  You can add labels to issues, add assignees, set milestones, and even apply formatting using Markdown shorthand!  '||chr(10)||
''||chr(10)||
'Below is a quick sample of what you can do with Markdown:'||chr(10)||
'# Orionis bellica Stygias partes'||chr(10)||
' '||chr(10)||
'## Solibus an rutilis cornu'||chr(10)||
' '||chr(10)||
'Lorem markd'||
'ownum formosae. [Est medio](http://www.modomarte.com/cantu) et illi adunca? Miserum Phaethon, Editus, abrupta colonos; Aeeta annum; facere pruniceum '||chr(10)||
'**domat**, discussisque saevo, Tereo. _Quid noctis adhuc, nisi nemo dignos, aures sonus mentae conspecta?_ '||chr(10)||
' '||chr(10)||
'```js '||chr(10)||
'device_intranet_cloud(page_disk); '||chr(10)||
'if (81 >= scanner + realityHoneypot + intellectual_heuristic) { '||chr(10)||
'    ataDataWeb -= fileWormCamera '||
'+ hypertext; '||chr(10)||
'    hdtv(-3 - 2); '||chr(10)||
'    folder(controlHtml, model - 5); '||chr(10)||
'} '||chr(10)||
'``` '||chr(10)||
' '||chr(10)||
'## Consortia dum mea aethere Deionidenque vixque est '||chr(10)||
' '||chr(10)||
'Forma duris igne duritiem Minervaetransformabantur, moriemur manibusque nulla eripienda est rima grave tu. Illis succedat fit. Ter amo quod plurima, non ab alimentaque adest videbitur at. Avidissima agam qui superba a partem [crines precantia limen](http://totover'||
'tice.com/vertice) in **ignibus spernit ritusque** iamdudum. '||chr(10)||
' '||chr(10)||
'> Arcum aristis arsit generosior in cum laevum suae, ferebat, hoc. Manus faciat, '||chr(10)||
'> nec inpetus sua silvas ossa? Incursant Nereide diversaeque velut signumque '||chr(10)||
'> Hectora, convellere caede hostesque oppida, diu viriles. Isdem **sacra**, '||chr(10)||
'> facta, in viximus alimentaque quae patria, ut derigere vires. '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'### Inde erat dicente viribus '||chr(10)||
''||
' '||chr(10)||
'Nomina aevumque pepercit ridet, vellet stetit tibi, Alcyone a Lelex adductis flumine stetit. *Fides* caeli gloria aquis neget meritis subitis tumulumque carmina illius non satis arces. Repressit volantes egesta, `et ira poscit` lacertis ita timidi. '||chr(10)||
' '||chr(10)||
'### Causam nec plagamque Minyis '||chr(10)||
' '||chr(10)||
'Venit caput vel sublimis haud causa et audire, terraeque sed, per duce gaudete Niobe fierent quantusque villis.'||
' Non **vallibus quinque vaga** densum si meruisse ponit olim terras saepe? Saxum sidera regia; feram hastarum os vigor sponte hinnitus inter est. '||chr(10)||
' '||chr(10)||
'- Vere furta ut exegi '||chr(10)||
'- Tempora poenaeque temptanti '||chr(10)||
'- Misisset est nec vicit edita hic '||chr(10)||
' '||chr(10)||
'Si ista Abantiades pennis, nusquam tu ira ego per. Ille sit, cum aditum culmine, primaque quae mira! Vix herbae volanti caeli, [quisquis](http://bello.org/ripa'||
'e-maenalon), et capillis coepisse iacta, tibi anum, tum iam persequar. Videtur quotiensque vires. Firmo ocius coepta ipsum ignoro, Matri nec regni quod, stimulosque quam librata. '||chr(10)||
' '||chr(10)||
'1. Ille citaeque illo ille Crotonis terra '||chr(10)||
'2. Formatae lancea hac de iuvabat bicolor et '||chr(10)||
'3. Vastator consistere pondere te carmen consorti ex '||chr(10)||
' '||chr(10)||
' '||chr(10)||
'| In ante metus dictum at tempor   | Luctus accumsan | Bibendum | Conse'||
'quat | '||chr(10)||
'|----------------------------------|----------------:|:--------:|-----------:| '||chr(10)||
'| Lectus arcu bibendum at varius   |            37.5 |   quam   |       .07 | '||chr(10)||
'| justo eget magna fermentum       |           127.2 |   lacus  |       .88 | '||chr(10)||
'| Platea dictumst quisque sagittis |            33.0 |   quam   |       .39 | '
 ,p_row_version => 1
 ,p_status => 'OPEN'
 ,p_issue_number => 1
 ,p_deleted => 'N'
 ,p_created_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_created_by => 'SHAIKHA.SABTI@GMAIL.COM'
 ,p_updated_on => to_date('20220501115228','YYYYMMDDHH24MISS')
 ,p_updated_by => 'SHAIKHA.SABTI@GMAIL.COM'
);
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(6151756741504197791)
,p_name=>'626f89edf7d739495bd7ca9c-mockapi-io'
,p_static_id=>'626f89edf7d739495bd7ca9c_mockapi_io'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('626f89edf7d739495bd7ca9c_mockapi_io'),'http://626f89edf7d739495bd7ca9c.mockapi.io/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('626f89edf7d739495bd7ca9c_mockapi_io'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('626f89edf7d739495bd7ca9c_mockapi_io'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('626f89edf7d739495bd7ca9c_mockapi_io'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('626f89edf7d739495bd7ca9c_mockapi_io'),'')
,p_prompt_on_install=>false
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_DATAFORGOOD';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_DATAFORGOOD - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_220100
-- Exported 10:51 Tuesday May 3, 2022 by: SHAIKHA.SABTI@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 10:51 Tuesday May 3, 2022 by: SHAIKHA.SABTI@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'DATA-FOR-GOOD';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
