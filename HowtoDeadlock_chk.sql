デットログの検知方法には３つある。

1.system_healthのチェック
場所：C:\ProgramFiles\Micorosoft SQL Sever\インスタンスディレクトリ\MSSQL\Log
   filename:system_health_*_.xel
   keyword:name=xml_deadlock_report
   
   http://memorandom-nishi.hatenablog.jp/entry/2016/11/14/024856
   https://blog.engineer-memo.com/2012/04/19/sql-server-2012-%E3%81%AE%E3%83%87%E3%83%83%E3%83%89%E3%83%AD%E3%83%83%E3%82%AF%E6%83%85%E5%A0%B1%E3%81%AE%E5%8F%96%E5%BE%97%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6/
   https://docs.microsoft.com/ja-jp/sql/relational-databases/extended-events/use-the-system-health-session?view=sql-server-2017
   
2.SQL Serverログ
事前設定：

-- SQLServerログにデッドロックのログを出力する
DBCC TRACEON(1204,-1)
-- エラーログにデッドロックのログを出力する
DBCC TRACEON(3605,-1)
-- トレースフラグの設定確認
DBCC TRACESTATUS

場所：オブジェクトエクスプローラにて
「管理」→「SQL Serverログ」→「現在」

http://t-wata.com/?p=221

3.SQL Server Profiler
 Deadlock Graph を取得するため、「Events」列の「Locks」-「Deadlock Graph」にチェックを入れます。


http://dalmore.blog7.fc2.com/blog-entry-154.html
