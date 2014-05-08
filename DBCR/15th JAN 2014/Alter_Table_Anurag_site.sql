--This script needs to execute on PUB,SWITCH_A,SWITCH_B and Staging

ALTER TABLE
   SGS_SITE_ATTRIBUTES
ADD (
	is_tax_applicable 	number(1)	NULL,
	CHECK (is_tax_applicable IN (0, 1))
	 	 
);