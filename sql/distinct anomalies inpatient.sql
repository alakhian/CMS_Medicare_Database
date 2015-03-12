select count(distinct(PROVIDER_ID)) from inpatient_2012_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(distinct(DRG_DEFINITION)) from inpatient_2012_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(distinct(HRR_DESCRIPTION)) from inpatient_2012_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(distinct(PROVIDER_ID)) from inpatient_2011_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(distinct(DRG_DEFINITION)) from inpatient_2011_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(distinct(HRR_DESCRIPTION)) from inpatient_2011_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

--PROVIDER_ID
--DRG_DEFINITION
--HRR_DESCRIPTION

/*select count(*) as "2012 in charged vs total" from inpatient_2012_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(*) as "2012 in charged vs medicare" from inpatient_2012_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_MEDICARE_PAYMENTS;

select count(*) as "2011 in charged vs total" from inpatient_2011_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(*) as "2011 in charged vs medicare" from inpatient_2011_data where 
AVERAGE_COVERED_CHARGES < AVERAGE_MEDICARE_PAYMENTS;

select count(*) as "2012 out charged vs total" from outpatient_2012_data where 
AVERAGE_EST_SUBMITTED_CHARGES < AVERAGE_TOTAL_PAYMENTS;

select count(*) as "2011 out charged vs total" from outpatient_2011_data where 
AVERAGE_EST_SUBMITTED_CHARGES < AVERAGE_TOTAL_PAYMENTS;


select AVERAGE_MEDICARE_PAYMENT_AMT/AVERAGE_SUBMITTED_CHRG_AMT as "ratio",
AVERAGE_MEDICARE_PAYMENT_AMT,AVERAGE_SUBMITTED_CHRG_AMT from 
physician_and_other_supplier order by "ratio" desc;*/