--This script needs to be executted in PUB,SWITCH_A,SWITCH_B and STAGING schema.

ALTER TABLE
   SGS_SITE_ATTRIBUTES
ADD (
	tax_type 	varchar2(30)	NULL,
	tax_rate 	number(6, 2)	NULL
	 
);
 

ALTER TABLE
   SGS_SKU
ADD (
	is_tax_applicable 	number(1)	NULL,
	CHECK (is_tax_applicable IN (0, 1))
); 