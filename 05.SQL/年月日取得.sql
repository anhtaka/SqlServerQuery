/*切れ*/
select * from t_conditionmn 
where 
term_date < convert(varchar,getdate(),111)
order by term_date desc

/*二週間*/
select * from t_conditionmn 
where 
term_date >= convert(varchar,getdate(),111)
and term_date <= convert(varchar,dateadd("d",14,getdate()),111)   
order by term_date asc

/*未到来*/
select * from t_conditionmn 
where 
term_date > convert(varchar,dateadd("d",14,getdate()),111)   
order by term_date asc


--◆YYYY/MM/DD
select convert(varchar,getdate(),111)

--◆日付⇒YYYYMM
select LEFT(convert(char(8),getdate(),112),6)

--◆日付⇒YYYYMMDD
select convert(char(8),getdate(),112)

--◆日数の足し算　YYYY/MM/DD
select  convert(varchar,dateadd("d",14,getdate()),111)
