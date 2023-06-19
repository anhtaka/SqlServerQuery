/* DTSX LIST */
SELECT * FROM msdb..sysssispackages
order by name


/* DTS LIST */
select * from msdb..sysdtspackages s
order by s.name
