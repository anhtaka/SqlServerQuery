/*Ø‚ê*/
select * from t_conditionmn 
where 
term_date < convert(varchar,getdate(),111)
order by term_date desc
/*“ñTŠÔ*/
select * from t_conditionmn 
where 
term_date >= convert(varchar,getdate(),111)
and term_date <= convert(varchar,dateadd("d",14,getdate()),111)   
order by term_date asc
/*–¢“—ˆ*/
select * from t_conditionmn 
where 
term_date > convert(varchar,dateadd("d",14,getdate()),111)   
order by term_date asc


ŸYYYY/MM/DD
select convert(varchar,getdate(),111)
Ÿ“ú•tËYYYYMM
select LEFT(convert(char(8),getdate(),112),6)
Ÿ“ú”‚Ì‘«‚µZ@YYYY/MM/DD
select  convert(varchar,dateadd("d",14,getdate()),111)