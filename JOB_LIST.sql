/*ジョブ一覧の取得*/
select s.name,s.description,l.name
 from  msdb..sysjobs s 
 left join master.sys.syslogins l on s.owner_sid = l.sid
order by s.name
