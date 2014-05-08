
-- Rollback statement for switchA and SwitchB and PUB and Staging
 UPDATE SGS_SHIPPING_METHOD_DETAILS SET cut_off_time =null;
 UPDATE SGS_SHIPPING_METHOD_DETAILS SET max_days_to_ship= NULL WHERE max_days_to_ship=9;
  commit;

