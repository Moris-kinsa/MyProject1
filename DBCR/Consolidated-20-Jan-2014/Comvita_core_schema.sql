--------------------------30th Jan 2014
CREATE TABLE sgs_paypal_pay_grp
  (payment_group_id VARCHAR2(40),
   payer_id VARCHAR2(40),
   payer_email      VARCHAR2(40),
   payer_status         VARCHAR2(40),	
   payer_name VARCHAR2(40),
   payer_country_code VARCHAR2(40),
   payer_biz VARCHAR2(40),
   buyer_Email VARCHAR2(40),	
   CONSTRAINT PK_SGS_PAYPAL_PG_ID PRIMARY KEY(payment_group_id)
   );
   
   
   
CREATE TABLE SGS_paypal_status
(
 status_id VARCHAR2(40),
 transaction_id VARCHAR2(40),
 payment_Req_id VARCHAR2(40),
 payment_type VARCHAR2(40),	
 payment_date date,  
 gross_amt number(10,2),
 tax_amt number(10,2),
 fraud_Details VARCHAR2(40),
 payment_status VARCHAR2(40),
 pending_reason VARCHAR2(40),
 reason_code VARCHAR2(40),
 hold_decision VARCHAR2(40),
 billing_agree_id VARCHAR2(40),
 CONSTRAINT PK_SGS_PAYPAL_STATUS_ID PRIMARY KEY(status_id)
);
  
   
--------------------------31st Jan 2014
--user

CREATE TABLE SGS_USER_HEALTH_CONCERN(
PROFILE_ID varchar2(40),
HEALTH_CONCERN_ID varchar2(40), PRIMARY KEY(PROFILE_ID,HEALTH_CONCERN_ID) using index );
 
CREATE TABLE SGS_USER_INTERESTS(
PROFILE_ID varchar2(40),
USER_INTEREST_ID varchar2(40), PRIMARY KEY(PROFILE_ID,USER_INTEREST_ID) using index );
 
 
ALTER TABLE dps_user ADD DOB_DAY varchar2(40);
ALTER TABLE dps_user ADD DOB_MONTH varchar2(40);
ALTER TABLE dps_user ADD DOB_YEAR varchar2(40);
ALTER TABLE dps_user ADD ABOUTUS varchar2(100);

commit;


ALTER TABLE sgs_inventory ADD (threshold_default NUMBER(19) NULL);
ALTER TABLE sgs_inventory_translation ADD (thres_hold NUMBER(19) NULL);
 
commit;


--------------------------05th Feb 2014
--user
ALTER TABLE dps_user ADD USER_GENDER varchar2(40);
commit;


--------------------------13th Feb 2014 - Shreshth Sandilya
ALTER TABLE sgs_hrd_ship_group ADD INVOICE_NO varchar2(40);
commit;


--------------------------20th Feb 2014 - Sunil Kumar 8 <skumar134@sapient.com>
-- THIS SQL NEED TO BE EXECUTED ON SWITCH_A,SWITCH_B,CORE AND STAGING ENVIRONMENT.

CREATE TABLE SGS_COD_PAY_GRP (
 PAYMENT_GROUP_ID VARCHAR2(254),
 COD_NUMBER VARCHAR2(254) NULL,
 COD_EMAIL VARCHAR2(254) NULL,
 COD_STATUS VARCHAR2(254) NULL,
 COD_NAME VARCHAR2(254) NULL,
 COD_COUNTRY_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL,
 PRIMARY KEY(PAYMENT_GROUP_ID) );

CREATE TABLE SGS_COD_STATUS (
 STATUS_ID VARCHAR2(254),
 AUTH_CODE VARCHAR2(254) NULL,
 TRACE_NUMBER VARCHAR2(254) NULL,
 AUTH_RESPONSE_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL, 
 TRANSACTION_ID VARCHAR2(254) NULL,
 PRIMARY KEY(STATUS_ID) );
 
CREATE TABLE SGS_DEF_PAY_GRP (
 PAYMENT_GROUP_ID VARCHAR2(254),
 DEF_NUMBER VARCHAR2(254) NULL,
 DEF_EMAIL VARCHAR2(254) NULL,
 DEF_STATUS VARCHAR2(254) NULL,
 DEF_NAME VARCHAR2(254) NULL,
 COD_COUNTRY_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL, PRIMARY KEY(PAYMENT_GROUP_ID) );
 
 CREATE TABLE SGS_DEF_STATUS (
 STATUS_ID VARCHAR2(254), AUTH_CODE VARCHAR2(254) NULL,
 TRACE_NUMBER VARCHAR2(254) NULL,
 AUTH_RESPONSE_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL,
 TRANSACTION_ID VARCHAR2(254) NULL,
 PRIMARY KEY(STATUS_ID) );
 COMMIT;

--------------------------Mar 13th 2014 - Neeraj Garg 2 <ngarg13@sapient.com> 
ALTER TABLE SGS_DPS_USER ADD (logged_in NUMBER(1,0) , migrated_account NUMBER(1,0) );

--------------------------Mar 27th 2014 - Rajendra Singh 3 <rsingh93@sapient.com>
ALTER TABLE sgs_address ADD (state_address VARCHAR2(40));

--------------------------Mar 31st 2014 - Bharat Mendiratta 2 <bmendiratta2@sapient.com>
ALTER TABLE DCS_GIFTITEM MODIFY DESCRIPTION VARCHAR2(1200);