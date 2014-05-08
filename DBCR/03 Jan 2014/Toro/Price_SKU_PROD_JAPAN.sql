-- One SWITCH_A and SWITCH_B,STAGING schema


CREATE SEQUENCE price_id
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;

Insert into temp_sku (SKU_ID) values ('SJP001');
Insert into temp_sku (SKU_ID) values ('SJP002');
Insert into temp_sku (SKU_ID) values ('SJP003');
Insert into temp_sku (SKU_ID) values ('SJP004');
Insert into temp_sku (SKU_ID) values ('SJP005');
Insert into temp_sku (SKU_ID) values ('SJP006');
Insert into temp_sku (SKU_ID) values ('SJP007');
Insert into temp_sku (SKU_ID) values ('SJP008');
Insert into temp_sku (SKU_ID) values ('SJP009');
Insert into temp_sku (SKU_ID) values ('SJP010');
Insert into temp_sku (SKU_ID) values ('SJP011');
Insert into temp_sku (SKU_ID) values ('SJP012');
Insert into temp_sku (SKU_ID) values ('SJP013');
Insert into temp_sku (SKU_ID) values ('SJP014');
Insert into temp_sku (SKU_ID) values ('SJP015');
Insert into temp_sku (SKU_ID) values ('SJP016');
Insert into temp_sku (SKU_ID) values ('SJP017');
Insert into temp_sku (SKU_ID) values ('SJP018');
Insert into temp_sku (SKU_ID) values ('SJP019');
Insert into temp_sku (SKU_ID) values ('SJP020');
Insert into temp_sku (SKU_ID) values ('SJP021');
Insert into temp_sku (SKU_ID) values ('SJP022');
Insert into temp_sku (SKU_ID) values ('SJP023');
Insert into temp_sku (SKU_ID) values ('SJP024');
Insert into temp_sku (SKU_ID) values ('SJP025');
Insert into temp_sku (SKU_ID) values ('SJP026');
Insert into temp_sku (SKU_ID) values ('SJP027');
Insert into temp_sku (SKU_ID) values ('SJP028');
Insert into temp_sku (SKU_ID) values ('SJP029');
Insert into temp_sku (SKU_ID) values ('SJP030');
Insert into temp_sku (SKU_ID) values ('SJP031');
Insert into temp_sku (SKU_ID) values ('SJP032');
Insert into temp_sku (SKU_ID) values ('SJP033');
Insert into temp_sku (SKU_ID) values ('SJP034');
Insert into temp_sku (SKU_ID) values ('SJP035');
Insert into temp_sku (SKU_ID) values ('SJP036');
  
  
  
  
PROCEDURE Creat_Price ()
IS
 BEGIN
 		FOR skuId IN (SELECT SKU_ID  FROM temp_sku)
		LOOP
			 Insert into DCS_PRICE (PRICE_ID,VERSION,PRICE_LIST,PRODUCT_ID,SKU_ID,PARENT_SKU_ID,PRICING_SCHEME,LIST_PRICE,COMPLEX_PRICE) values (price_id.nextval,2,'comvitajplplist9001','',skuId.sku_id,null,0,price_id.nextval,null);
             Insert into SGS_PRICE (PRICE_ID,LAST_MOD_DATE) values (price_id.nextval-1,to_timestamp('03-JAN-13 05.46.52.468000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
 
		END LOOP;
 	
END Create_Price;

/
show error
commit;  
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 