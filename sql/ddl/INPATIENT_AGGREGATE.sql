--------------------------------------------------------
--  DDL for Table INPATIENT_2012_NATIONAL_DATA
--------------------------------------------------------

  CREATE TABLE "INPATIENT_2012_NATIONAL_DATA" 
   (	"DRG_DEFINITION" VARCHAR2(120 BYTE), 
	"TOTAL_DISCHARGES" NUMBER(*,0), 
	"AVERAGE_COVERED_CHARGES" FLOAT(126), 
	"AVERAGE_TOTAL_PAYMENTS" FLOAT(126), 
	"AVERAGE_MEDICARE_PAYMENTS" FLOAT(126)
   )  ;
CREATE TABLE "INPATIENT_2012_STATE_DATA" 
   (	"DRG_DEFINITION" VARCHAR2(120 BYTE), 
	"PROVIDER_STATE" VARCHAR2(2 BYTE), 
	"TOTAL_DISCHARGES" NUMBER(*,0), 
	"AVERAGE_COVERED_CHARGES" FLOAT(126), 
	"AVERAGE_TOTAL_PAYMENTS" FLOAT(126), 
	"AVERAGE_MEDICARE_PAYMENTS" FLOAT(126)
   )  ;
commit;