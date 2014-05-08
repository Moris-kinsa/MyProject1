/* This will run on CORE, STAGING and PUB */

ALTER TABLE sgs_hrd_ship_group ADD INVOICE_NO varchar2(40);
commit;


