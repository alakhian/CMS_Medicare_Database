create table inpatient_2012_data as
(select i.*, (CASE  WHEN i.PAYMENT_CHARGEDAMT_RATIO < (0.25) THEN 'Less than 25%'
   WHEN i.PAYMENT_CHARGEDAMT_RATIO > (0.5)  THEN 'Greater than 50%'
   ELSE 'Between 25% and 50%' END ) payment_charge_ratio_level from inpatient_2012_data_avg i);

