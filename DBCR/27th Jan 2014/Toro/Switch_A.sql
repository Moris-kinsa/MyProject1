--userInterests

CREATE TABLE SGS_PRODUCT_INTERESTS(
 INTEREST_ID varchar2(40) NOT NULL,
 INTEREST_NAME varchar2(100),
 INTEREST_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(INTEREST_ID) using index );


commit;

--drop table SGS_PRODUCT_INTERESTS;
--select * from SGS_PRODUCT_INTERESTS; 

 CREATE TABLE SGS_PRODUCT_INTERESTS_SITES(
 INTEREST_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(INTEREST_ID,SITE_ID) using index );
 
commit;
--drop table SGS_PRODUCT_INTERESTS_SITES;
--select * from SGS_PRODUCT_INTERESTS_SITES;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

--userHealthConcerns

CREATE TABLE SGS_HEALTH_CONCERNS(
 HEALTH_CONCERN_ID varchar2(40) NOT NULL,
 HEALTH_CONCERN_NAME varchar2(100),
 HEALTH_CONCERN_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(HEALTH_CONCERN_ID) using index );
 
commit;

--drop table SGS_HEALTH_CONCERNS;
--select * from SGS_HEALTH_CONCERNS; 

 
CREATE TABLE SGS_HEALTH_CONCERNS_SITES(
 HEALTH_CONCERN_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(HEALTH_CONCERN_ID,SITE_ID) using index );
 
commit;
--drop table SGS_HEALTH_CONCERNS_SITES;
--select * from SGS_HEALTH_CONCERNS_SITES;



