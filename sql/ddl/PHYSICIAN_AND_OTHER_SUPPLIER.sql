CREATE TABLE "PHYSICIAN_AND_OTHER_SUPPLIER" 
   (	"ID" NUMBER, 
   "NPI" VARCHAR2(10 BYTE), 
	"NPPES_PROVIDER_LAST_ORG_NAME" VARCHAR2(70 BYTE), 
	"NPPES_PROVIDER_FIRST_NAME" VARCHAR2(20 BYTE), 
	"NPPES_PROVIDER_MI" VARCHAR2(1 BYTE), 
	"NPPES_CREDENTIALS" VARCHAR2(20 BYTE), 
	"NPPES_PROVIDER_GENDER" VARCHAR2(1 BYTE), 
	"NPPES_ENTITY_CODE" VARCHAR2(1 BYTE), 
	"NPPES_PROVIDER_STREET1" VARCHAR2(55 BYTE), 
	"NPPES_PROVIDER_STREET2" VARCHAR2(55 BYTE), 
	"NPPES_PROVIDER_CITY" VARCHAR2(40 BYTE), 
	"NPPES_PROVIDER_ZIP" VARCHAR2(20 BYTE), 
	"NPPES_PROVIDER_STATE" VARCHAR2(2 BYTE), 
	"NPPES_PROVIDER_COUNTRY" VARCHAR2(2 BYTE), 
	"PROVIDER_TYPE" VARCHAR2(43 BYTE), 
	"MEDICARE_PARTICIPATION_INDICAT" VARCHAR2(1 BYTE), 
	"PLACE_OF_SERVICE" VARCHAR2(1 BYTE), 
	"HCPCS_CODE" VARCHAR2(5 BYTE), 
	"HCPCS_DESCRIPTION" VARCHAR2(30 BYTE), 
	"LINE_SRVC_CNT" NUMBER(*,0), 
	"BENE_UNIQUE_CNT" NUMBER(*,0), 
	"BENE_DAY_SRVC_CNT" NUMBER(*,0), 
	"AVERAGE_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"STDEV_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"AVERAGE_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"STDEV_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"AVERAGE_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"STDEV_MEDICARE_PAYMENT_AMT" FLOAT(126),
  "BENE_DAY_SRVC_PCT" FLOAT(26),
  "SUBMITTED_CHRG_VS_HCPCS_AGGR" FLOAT(26)

   ) ;
   
commit;
