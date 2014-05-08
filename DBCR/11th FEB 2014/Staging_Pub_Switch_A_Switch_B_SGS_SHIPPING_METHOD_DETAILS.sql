
-- Update statement for switchA and switchB and Publishing and staging
UPDATE SGS_SHIPPING_METHOD_DETAILS SET cut_off_time = SYSDATE-379 ;
UPDATE SGS_SHIPPING_METHOD_DETAILS SET  max_days_to_ship=9 WHERE max_days_to_ship is NULL;
commit;



