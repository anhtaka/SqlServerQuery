

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


[SQL Server の変更の追跡の機能を使用してみる](https://blog.engineer-memo.com/2015/01/22/sql-server-%E3%81%AE%E5%A4%89%E6%9B%B4%E3%81%AE%E8%BF%BD%E8%B7%A1%E3%81%AE%E6%A9%9F%E8%83%BD%E3%82%92%E4%BD%BF%E7%94%A8%E3%81%97%E3%81%A6%E3%81%BF%E3%82%8B/)

SELECT * FROM [USER] AS s
CROSS APPLY CHANGETABLE
(VERSION [USER], ([1]), (s.[1])) AS c
