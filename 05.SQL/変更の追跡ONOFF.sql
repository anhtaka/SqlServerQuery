

-------------------------------------------------
--■DB内テーブルの変更の追跡OFF
ALTER TABLE USER
DISABLE CHANGE_TRACKING

--■DBの変更の追跡OFF
ALTER DATABASE DB_TEST
SET CHANGE_TRACKING = OFF;
-------------------------------------------------


-------------------------------------------------
--■共通DBの変更の追跡ON
--  保有期間：1000000日  自動クリーンアップ：OFF
ALTER DATABASE DB_TEST
SET CHANGE_TRACKING = ON
(CHANGE_RETENTION = 1000000 DAYS, AUTO_CLEANUP = OFF);


--■共通DB内テーブルの変更の追跡ON
--  変更の追跡：ON  更新された追跡列：OFF

ALTER TABLE USER
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = OFF);
-------------------------------------------------
