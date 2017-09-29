
USE msdb
EXEC dbo.sp_help_job @JOB_NAME = 'JOB_NAME', @job_aspect='JOB', @execution_status = 1


SELECT *
FROM OPENROWSET('SQLOLEDB','SERVER_NAME';'sa';'Password',
    'exec msdb.dbo.sp_help_job @job_name = ''JOB_NAME'', @job_aspect=''JOB'', @execution_status = ''1''') AS a
