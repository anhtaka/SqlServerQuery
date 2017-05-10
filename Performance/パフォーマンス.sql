
select * from sys.dm_os_wait_stats
where wait_type 
IN
('CXPACKET'
,'SOS_SCHEDULER_YEILD'
  SOS_SCHEDULER_YIELD
,'LCK_M_X'
,'PAGEIOLATCH'
)


select * from sys.dm_os_wait_stats
where wait_type like 'PAGEIOLATCH%'
or wait_type like 'LCK_M_x%'
or wait_type like 'CXPACKET%'
or wait_type like 'SOS_SCHEDULER_YIELD'