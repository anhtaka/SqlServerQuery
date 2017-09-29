
USE msdb
EXEC dbo.sp_help_job @JOB_NAME = 'JOB_NAME', @job_aspect='JOB', @execution_status = 1


SELECT *
FROM OPENROWSET('SQLOLEDB','SERVER_NAME';'sa';'Password',
    'exec msdb.dbo.sp_help_job @job_name = ''JOB_NAME'', @job_aspect=''JOB'', @execution_status = ''1''') AS a

--or-------------------------------
DECLARE @JOBNAME VARCHAR(100)
SET @JOBNAME = ‘JOB_NAME’

CREATE TABLE #JOBSTATUS(
       job_id uniqueidentifier 
      ,originating_server nvarchar(30)
      ,name sysname
      ,enabled tinyint
      ,description nvarchar(512)
      ,start_step_id int
      ,category sysname
      ,owner sysname
      ,notify_level_eventlog int
      ,notify_level_email int
      ,notify_level_netsend int
      ,notify_level_page int
      ,notify_email_operator sysname
      ,notify_netsend_operator sysname
      ,notify_page_operator sysname
      ,delete_level int
      ,date_created datetime
      ,date_modified datetime
      ,version_number int
      ,last_run_date int
      ,last_run_time int
      ,last_run_outcome int
      ,next_run_date int
      ,next_run_time int
      ,next_run_schedule_id int
      ,current_execution_status int
      ,current_execution_step sysname 
      ,current_retry_attempt int
      ,has_step int
      ,has_schedule int
      ,has_target int
      ,type int     
); 

INSERT INTO #JOBSTATUS
EXEC dbo.sp_help_job
 @JOB_NAME = @JOBNAME
,@job_aspect=‘JOB’

SELECT CASE current_execution_status
WHEN ‘0’ THEN ‘Returns only those jobs that are not idle or suspended. ‘        
WHEN ‘1’ THEN ‘Executing.’        
WHEN ‘2’ THEN ‘Waiting for thread.’       
WHEN ‘3’ THEN ‘Between retries.’        
WHEN ‘4’ THEN ‘Idle.’
WHEN ‘5’ THEN ‘Suspended.’
WHEN ‘6’ THEN ”
WHEN ‘7’ THEN ‘Performing completion actions.’
ELSE ‘UNKNOWN’
END as ‘current_execution_status’
FROM #JOBSTATUS

DROP TABLE #JOBSTATUS
