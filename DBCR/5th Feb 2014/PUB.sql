--user
ALTER TABLE dps_user ADD USER_GENDER varchar2(40);
commit;
--ALTER TABLE dps_user DROP COLUMN USER_GENDER