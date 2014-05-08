
CREATE SEQUENCE price_id
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;

create table temp_sku (
sku_id varchar2(100)
);

Insert into temp_sku (SKU_ID) values ('120');
Insert into temp_sku (SKU_ID) values ('EN102');
Insert into temp_sku (SKU_ID) values ('EN103');
Insert into temp_sku (SKU_ID) values ('EN169');
Insert into temp_sku (SKU_ID) values ('EXP10077');
Insert into temp_sku (SKU_ID) values ('EXP153');
Insert into temp_sku (SKU_ID) values ('EXP10073  ');
Insert into temp_sku (SKU_ID) values ('EXP10074');
Insert into temp_sku (SKU_ID) values ('EXP10070');
Insert into temp_sku (SKU_ID) values ('EXP10071');
Insert into temp_sku (SKU_ID) values ('EN110');
Insert into temp_sku (SKU_ID) values ('EN111');
Insert into temp_sku (SKU_ID) values ('EN112');
Insert into temp_sku (SKU_ID) values ('EN361');
Insert into temp_sku (SKU_ID) values ('EN373');
Insert into temp_sku (SKU_ID) values ('EN555');
Insert into temp_sku (SKU_ID) values ('EN10007');
Insert into temp_sku (SKU_ID) values ('EN388');
Insert into temp_sku (SKU_ID) values ('499');
Insert into temp_sku (SKU_ID) values ('488');
Insert into temp_sku (SKU_ID) values ('473');
Insert into temp_sku (SKU_ID) values ('476');
Insert into temp_sku (SKU_ID) values ('498');
Insert into temp_sku (SKU_ID) values ('332');
Insert into temp_sku (SKU_ID) values ('333');
Insert into temp_sku (SKU_ID) values ('334');
Insert into temp_sku (SKU_ID) values ('335');
Insert into temp_sku (SKU_ID) values ('623');
Insert into temp_sku (SKU_ID) values ('307');
Insert into temp_sku (SKU_ID) values ('EN414');
Insert into temp_sku (SKU_ID) values ('414');
Insert into temp_sku (SKU_ID) values ('644');
Insert into temp_sku (SKU_ID) values ('EN644');
Insert into temp_sku (SKU_ID) values ('EN343');
Insert into temp_sku (SKU_ID) values ('343');


PROCEDURE Create_PriceUK ()
IS
 BEGIN
 		FOR skuId IN (SELECT SKU_ID  FROM temp_sku)
		LOOP
			Insert into COM_PUB.DCS_PRICE (SEC_ASSET_VERSION,ASSET_VERSION,WORKSPACE_ID,BRANCH_ID,IS_HEAD,VERSION_DELETED,VERSION_EDITABLE,PRED_VERSION,CHECKIN_DATE,PRICE_ID,VERSION,PRICE_LIST,PRODUCT_ID,SKU_ID,PARENT_SKU_ID,PRICING_SCHEME,LIST_PRICE,COMPLEX_PRICE) values (1,1,'DC110637','10100',1,0,0,null,to_timestamp('24-DEC-13 05.46.52.468000000 PM','DD-MON-RR HH.MI.SS.FF AM'),price_id.nextval,2,'comvitauklplist9001','',skuId.sku_id,null,0,price_id.nextval,null);
            Insert into COM_PUB.SGS_PRICE (ASSET_VERSION,PRICE_ID,LAST_MOD_DATE) values (1,price_id.nextval-1,to_timestamp('03-JAN-14 05.46.52.468000000 PM','DD-MON-RR HH.MI.SS.FF AM'));

		END LOOP;
 	
END Create_PriceUK;

/
show error
commit;  


