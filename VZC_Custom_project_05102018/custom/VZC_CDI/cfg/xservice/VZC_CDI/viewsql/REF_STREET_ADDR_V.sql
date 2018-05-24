REPLACE VIEW MDM41.REF_STREET_ADDR_V
AS
LOCKING ROW FOR ACCESS SELECT
STR_ADDR.STREET_ADDR_ID,
ADDR.ADDR_ID, 
ADDR.ADDR_TYPE_CD, 
ADDR.ADDR_SUBTYPE_CD, 
STR_ADDR.ADDR_LINE_1_TXT, 
STR_ADDR.ADDR_LINE_2_TXT, 
STR_ADDR.ADDR_LINE_3_TXT,
STR_ADDR.ADDR_LINE_4_TXT,
STR_ADDR.ST_OR_PROV_CD,
STR_ADDR.CITY_NAME,
STR_ADDR.COUNTY,
STR_ADDR.CNTRY_CD,
STR_ADDR.POSTL_CD,
STR_ADDR.LAT_MEAS,
STR_ADDR.LNGTD_MEAS,
STR_ADDR.GEO_ACRCY_CD,
STR_ADDR.ORG_CD,
STR_ADDR.BLDG_ID,
STR_ADDR.SUB_BLDG_ID,
STR_ADDR.PREMS_CD,
STR_ADDR.THOROUGHFARE_CD,
STR_ADDR.SYS_TARGET_ID,
STR_ADDR.SYS_AUTH_ID,
STR_ADDR.SYS_SOURCE,
STR_ADDR.SYS_CREATED_BY,
STR_ADDR.SYS_CREATION_DATE,
STR_ADDR.SYS_ENT_STATE,
STR_ADDR.SYS_LAST_MODIFIED_BY,
STR_ADDR.SYS_LAST_MODIFIED_DATE,
STR_ADDR.SYS_NC_TYPE,
STR_ADDR.SYS_ERR_CODE,
STR_ADDR.SYS_ERR_SVRTY
FROM	MDM41_MST.M_STREET_ADDR STR_ADDR
INNER JOIN MDM41_MST.M_ADDR ADDR
ON STR_ADDR.STREET_ADDR_ID = ADDR.ADDR_ID
WHERE STR_ADDR.SYS_ENT_STATE='ACTIVE';