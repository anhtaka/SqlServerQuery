use R_1_1_0_FI

--ƒJƒ‰ƒ€‚Ì’Ç‰Á
alter table 
dbo.MNRC
add CUR_FRACTION_ROUND_TYPE nvarchar(1)


update MNRC
set CUR_FRACTION_ROUND_TYPE = 'C'

alter table 
dbo.MNRC
ALTER COLUMN CUR_FRACTION_ROUND_TYPE nvarchar(1) NOT NULL


select * from MNRC