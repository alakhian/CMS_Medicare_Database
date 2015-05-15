CREATE TABLE "PHYSICIAN_HCPCS_AGGREGATE" 
   (	"NPPES_PROVIDER_STATE_DESC" VARCHAR2(40 BYTE), 
	"HCPCS_CODE" VARCHAR2(5 BYTE), 
	"HCPCS_DESCRIPTION" VARCHAR2(30 BYTE), 
	"PLACE_OF_SERVICE" VARCHAR2(1 BYTE), 
	"NUMBER_OF_PROVIDERS" NUMBER(8,0), 
	"LINE_SRVC_CNT" NUMBER(16,0), 
	"UNIQUE_BENE_DOCTOR_CNT" NUMBER(8,0), 
	"BENE_DAY_SRVC_CNT" NUMBER(8,0), 
	"AVERAGE_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"MIN_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"P25_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"P50_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"P75_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"MAX_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"STD_MEDICARE_ALLOWED_AMT" FLOAT(126), 
	"AVERAGE_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"MIN_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"P25_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"P50_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"P75_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"MAX_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"STD_SUBMITTED_CHRG_AMT" FLOAT(126), 
	"AVERAGE_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"MIN_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"P25_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"P50_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"P75_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"MAX_MEDICARE_PAYMENT_AMT" FLOAT(126), 
	"STD_MEDICARE_PAYMENT_AMT" FLOAT(126)
   ) ;

commit;
