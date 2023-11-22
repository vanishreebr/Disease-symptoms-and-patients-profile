select * from disease


select Disease,gender from Disease


select distinct(Disease) from Disease


select count(distinct(disease)) as Totalcount from Disease



select count(*) from Disease


select * from Disease
where Disease='Influenza'


select * from Disease
where Blood_Pressure='normal'


select * from Disease
where Gender='female'


select * from Disease
where Age>80


select * from Disease
order by Age


select *from Disease
order by Blood_Pressure desc


select * from Disease
order by fever,Cough


select * from Disease
order by Cholesterol_Level desc,Difficulty_Breathing asc


select * from Disease
where Disease='Eczema' and Gender='female'


select * from Disease
where Gender='female' and Disease like 'A%'


select * from Disease
where gender='male'
and Blood_Pressure='normal'
and Cholesterol_Level='high'
and Outcome_Variable like 'N%'



select * from Disease
where Gender='female' and (Disease like '%d' or Blood_Pressure='normal')


select * from Disease
where Gender='female' and (Disease like '%d' and Blood_Pressure='normal')


select * from Disease
where Outcome_Variable='positive' and Disease='Liver Cancer' or gender='male'


select * from Disease
where Gender='male' or(Disease like 'b%' and age>68)


select * from Disease
where Gender='male' and (Disease like 'b%' and age>20)


select * from Disease
 where not Disease ='Sepsis'



 select * from Disease
 where Blood_Pressure not like 'n%'


 select * from Disease
 where Blood_Pressure not like 'l%' and Blood_Pressure not like 'h%'

 
 select * from Disease 
 where Age not between 10 and 60



 select * from Disease
 where Cholesterol_Level not in ('normal','high')



 select *from Disease
 where not age>=60


 insert into Disease(Disease,Fever,Cough,Fatigue,Difficulty_Breathing,Age,Gender,Blood_Pressure,Cholesterol_Level,Outcome_Variable)
 values('commom cold',1,0,1,0,29,'female','normal','normal','positive')



 select * from Disease
 where Disease ='common cold' and Blood_Pressure='normal' and Cholesterol_Level='normal' and Outcome_Variable='positive'



 insert into Disease(Disease,Fever,Cough,Fatigue,Difficulty_Breathing,Age,Gender,Blood_Pressure,Cholesterol_Level,Outcome_Variable)
 values('commom cold',1,0,1,0,29,'female','normal','normal','positive'),
('commom cold',1,0,1,0,29,'female','normal','normal','positive'),
('commom cold',1,0,1,0,29,'female','normal','normal','positive')



select * from Disease 
where Disease is null


select * from Disease 
where Disease is not null


update Disease
set Disease='Influenzaa',Fever=1
where Age= 19


update Disease
set Disease='Influenza',Fever=1
where Age= 19



select Top 3 * from Disease

select top 3 Disease from Disease


select top 50 percent * from Disease
where Gender='female'


select top 50 percent * from Disease
where Gender='female'
order by age desc



select max(age) from Disease


select min(age) from Disease



select count (*) from disease


select count(disease) from Disease
where age > 70



select count(disease) from Disease
where Disease is not null




select count(distinct(disease)) from Disease
where age =60


select count(distinct(disease)) from Disease

select sum(Age) from Disease
where Disease='Tetanus'

select sum(Age) from Disease
where Disease='Williams Syndrome'

select * from Disease 


select sum(age),Disease from Disease
where Disease='Gastroenteritis' or Disease= 'Urinary Tract Infection' or Disease='Rheumatoid Arthritis'
group by Disease
order by sum(age)


select count(age),max(age),Disease from Disease
where Disease='Gastroenteritis' or Disease= 'Urinary Tract Infection' or Disease='Rheumatoid Arthritis'
group by Disease
order by count(age),max(age)



select * from Disease
where Fever=0



select disease,Age,count(age) from disease
where fever=0 and cough=1 and fatigue=0 and difficulty_breathing=1
group by Age,Disease
order by count(Age) desc



select avg(age) from Disease



select avg(age) from Disease
where Age> (select avg(age) from Disease where Age > (select avg(age) from Disease where Age >(select  avg(age) from Disease)))



select max(age) from disease
where age<(select max(age) from disease where age< (select max(age) from disease where age <(select max(age) from disease)))


select min(age) from disease
where age>(select min(age) from disease where age> (select min(age) from disease where age >(select min(age) from disease)))


select distinct(Disease)from Disease



select count(Disease),Disease from Disease
group by Disease



select count(Disease),Disease from Disease
group by Disease
having count(disease) >2
order by (disease) desc

select * from Disease

select count(distinct(disease)) from Disease

create view newage as
select age,case
when age>20 then 'older'
else 'younger'
end as new_age
from Disease

select * from newage


update Disease
set Age=65
where Disease='common cold' and Blood_Pressure='normal' and Cholesterol_Level='normal'
select * from Disease
where Disease='common cold' and Blood_Pressure='normal' and Cholesterol_Level='normal'



select * from disease_data


select Disease from disease
where disease like'o%'



select disease from disease
where disease like'%o'




select disease from disease
where Disease like 'influen_a'



select disease from disease
where Disease like '%i%'


select disease from disease
where Disease like 'ma%'


select disease from disease
where Disease like '%ik'


select disease from disease
where Disease like '%j' or Disease like 'h%'


select disease from disease
where Disease like '%n' and Disease like 'h%'


select disease from disease
where Disease like 'p%o'



select disease from disease
where Disease like 'a__%'


select disease from disease
where Disease like'_r%'


select disease from disease
where Disease like 'Bronchitis'


select disease from disease
where Disease like'in%'


select disease from disease
where Disease like'%rs'


select disease from disease
where Disease like'%er%'



select disease from disease
where Disease like'[a-c]%'


select disease from disease
where Disease like'[bsp]%'


select disease from disease
where Disease like'%[bsp]'


select * from Disease
where Outcome_Variable in ('Positive','negative')

select * from Disease
where Outcome_Variable not in ('Positive','negative')



select * from Disease
where Disease in(select Disease from disease_data)

select Disease from disease_data
where Disease in (select Disease from disease_data)


select * from Disease
where Disease not in(select Disease from disease_data)


select age from Disease
where Age between 10 and 60

select age from Disease
where Age not between 10 and 60


select disease,count(age) from Disease
where Age between 10 and 40
and disease in('Eczema','Asthma')
group by Disease
having count(age)>3
order by count(age)

select count(age) from Disease
where Disease='asthma' and age between 10 and 40


select * from Disease
where Disease between 'Hyperthyroidism' and 'Migraine'
order by Disease



select * from Disease
where Disease not between 'Hyperthyroidism' and 'Migraine'
order by Disease



select Disease as d1 from Disease

select age as [newest age]
from Disease


select * from Disease as d2


select * from disease 
select * from disease_data


select b.disease,c.difficulty_breathing from Disease as b
inner join disease_data as c 
on b.Disease=c.Disease


select * from Disease as b
inner join disease_data as c 
on b.Disease=c.Disease



select disease.Disease ,disease_data.Age from disease
inner join disease_data
on Disease.Age=disease_data.Age



select disease.Disease ,count(disease_data.Outcome_Variable) from disease
left join disease_data
on Disease.Fever=disease_data.Fever
group by Disease.Disease 
order by Disease.Disease desc,count(disease_data.Outcome_Variable) asc

select * from Disease


select d.Cholesterol_Level,count(d1.Disease),d1.Age
from Disease as d
right join disease_data as d1
on d.Age=d1.Age
where d.Age between 40 and 60 and d1.Disease like'u%'
group by d.Cholesterol_Level,d1.Age
order by count(d1.Disease)


select d.fever,count(d1.cough),d1.Disease from Disease as d
full outer join disease_data as d1
on d.Difficulty_Breathing=d1.Difficulty_Breathing
group by d.Fever,d1.Disease
order by count (d1.cough)



select d.disease as d1,e.disease as d2 ,d.Age from 
disease d,disease e
where d.disease<>e.disease
and d.age=e.age
order by d.Age desc

select * from Disease
union 
select * from disease_data

select * from Disease
union all
select * from disease_data


select Disease from Disease 
where age=45
union 
select Disease from disease_data 
where age=45
order by Disease desc


select 'Disease'as type1,disease from Disease 
where age=45
union 
select 'Disease' as type1,Disease from disease_data 
where age=45


select Disease ,count(age) 
from Disease
group by Disease


select Disease ,count(age) 
from Disease
group by Disease
order by  count(age) desc


select count(fever),count(cough),disease
from Disease
where disease like'a%' or disease like 'b%'
group by disease
having count(cough)>1 and count(fever)>1
order by count(fever) desc,count(cough)



select d1.Disease from disease_data as d1
where  exists(select d.Disease from disease as d where d1.Disease=d.Disease and d.Age between 10 and 30)
order by d1.Disease desc


select d1.Disease from disease_data as d1
where  not exists(select d.Disease from disease as d where d1.Disease=d.Disease and d.Age between 10 and 30)
order by d1.Disease desc



select * into backupdisease
from Disease


select * from backupdisease


select disease,age into backup1 from Disease

select * from backup1

delete from backup1
where disease='influenza'

delete from backup1


select Disease,age,
case when age >40 then 'older'
when age =40 then 'equal to older'
else 'younger'
end as newwage
from Disease


select age from Disease
where age is null




select age from Disease
where age is not null


select (age*10) from Disease

select sum(age) from Disease



create procedure selectalldisease
as 
select * from disease
go

exec selectalldisease


create procedure idk
as
select Disease,fever,cough from Disease
go

exec idk
drop procedure idk


create view idkname as
select * from Disease


select * from idkname

drop view idkname


create index idxdis
on disease(disease,age)

select age from Disease


create unique index idx
on disease(fever,cough)

select * from Disease








