.RUN FILE ../LOGIN_INFO.SQL
 
 .WIDTH 5000;
 
UPDATE TRG FROM MDM41_STG.PRSNA_ADDR_STG TRG, (SELECT TRGT_ADDR_ID, PRSNA_ID, STREET_ADDR_RQST_ID as ADDR_RQST_ID, INSERT_UPDATE_FLAG, ADDR_TYPE_CD FROM MDM41_STG.STREET_ADDR_XREF_FWD UNION SELECT TRGT_ADDR_ID, PRSNA_ID, TEL_NUM_RQST_ID as ADDR_RQST_ID, INSERT_UPDATE_FLAG, ADDR_TYPE_CD FROM MDM41_STG.TEL_NUM_XREF_FWD UNION SELECT TRGT_ADDR_ID, PRSNA_ID, ELEC_ADDR_RQST_ID as ADDR_RQST_ID, INSERT_UPDATE_FLAG, ADDR_TYPE_CD FROM MDM41_STG.ELEC_ADDR_XREF_FWD) SRC SET TGT_ADDR_ID = SRC.TRGT_ADDR_ID, INSERT_UPDATE_FLAG=SRC.INSERT_UPDATE_FLAG WHERE TRG.PRSNA_ID = SRC.PRSNA_ID AND TRG.ADDR_RQST_ID = SRC.ADDR_RQST_ID AND TRG.ADDR_TYPE_CD = SRC.ADDR_TYPE_CD;

.QUIT
