use flymyway
select * from aircraft
select * from cancellation
select * from flt_master
select * from flt_transaction
select * from manifestation
select * from passenger

'ʹ���ı�'
select �ı�='�����Ϊ',caircraft_code,'�ı�'='�ĺ�����',intMax_exec_seats,'�ı�'='��exec_seats��',intMax_econ_seats,'��econ_seats' from aircraft
select �ı�='�����Ϊ:',caircraft_code,'�ܹ���' �ı�,intmax_exec_seats+intmax_econ_seats 'total amount seats',�ı�='����λ' from aircraft
select �ı�='�����Ϊ:',caircraft_code,'�ܹ���'as �ı�,intmax_exec_seats+intmax_econ_seats  as 'total amount seats',�ı�='����λ' from aircraft

'ʹ���߼��ͱȽ������'
select * from aircraft where intMax_exec_seats!<140 and intMax_econ_seats!>200
select * from aircraft where intMax_exec_seats<>0 and intMax_econ_seats!=0

'NOT BETWEEN,NOT IN, IN, BETWEEN'
use recruitment
select * from newspaper
select * from Newspaper where cPhone between '(713)451-6797' and '(785)877-2363'
select * from newspaper where ccity in ('Norton','Columbus','Las Vegas')

select * from requisition
select * from requisition where dDeadLine between '2004-04-01' and '2005-09-09'
select * from requisition where dDeadLine not between '2004-04-01' and '2005-09-09'
select * from requisition where ddeadLine in ('2004-03-04','2004-04-01')
select * from requisition where ddeadLine not in ('2004-03-04','2004-04-01')


'������� LIKE ' 'ͨ��� % _ [] [^]'
use recruitment
select * from newspaper
select * from newspaper where vRegion like 'T%'
select * from newspaper where vRegion like '%as'
select * from newspaper where vRegion like '_e%'
select * from newspaper where vRegion like 'N[oe]____'
select * from newspaper where vRegion like 'n[^e]%'

'IS NULL & IS NOT NULL'
select * from dbo.AnnualSalary
select * from dbo.CampusRecruitment
select * from dbo.CandidateSkill
select * from dbo.College
select * from dbo.ContractRecruiter
select * from dbo.Country
select * from dbo.Department
select * from dbo.Employee
select * from dbo.EmployeeReferrals
select * from dbo.EmployeeSkill
select * from dbo.ExternalCandidate

select cEmployeeCode,imPhoto from employee where imPhoto is null

select cEmployeeCode,imPhoto from employee where imPhoto is not null

'ORDER BY clause'
use recruiment
select * from country order by cCountry desc
select * from country order by cCountry asc
select vfirstname,vlastname,cemployeecode,dbirthdate from employee order by dBirthDate desc
select vlastname,cCity,dbirthdate from employee order by dBirthDate asc , cCity,vlastname desc

select vLastName,cCity from employee order by cCity,vLastName desc
select vLastName,cCity from employee order by cCity,vLastName

'TOP key'
select top 5 * from employee
select top 50 percent * from employee
select * from employee

'DISTINCT'
select distinct ccity from employee
select ccity from employee

'�ۺϺ��� avg;count;max;min;sum''count(*)��ʾ�����������м�¼������'
use globaltoyz
select * from orders
select count(distinct cCartId) '���ﳵ��' from orders
select count(ccartid) from orders '������ıȽ�'
select count(*) '������¼����' from orders
select * from toys
select sum(mToyRate) '��߼۸��ܺ�' from toys
select max(mToyRate) '�������' from toys
select min(mToyRate) '����˵����' from toys

'GROUP BY & HAVING'
use globaltoyz
select * from toys
'ÿ������м۸����,��ߵ�,��ÿ����ߵļ�ֵ��'
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Avgerage=avg(mtoyrate) from toys group by ccategoryid
'ÿ������м۸񲻵���10�����&��ߵļ۸�,��ÿ����ߵļ�ֵ��'
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Average=avg(mtoyrate) from toys where mtoyrate>10 group by ccategoryid
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Average=avg(mtoyrate) from toys where mtoyrate>10 group by all ccategoryid
'ÿ�������ƽ����ֵ����30�ļ۸��Ŀ'
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Average=avg(mtoyrate) from toys group by ccategoryid having sum(mtoyrate)>100
'�������,�������'
select ccategoryid,silowerage,average=avg(mtoyrate) from toys group by ccategoryid,silowerage order by ccategoryid desc
'group by all �Ƚ���������'
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Average=avg(mtoyrate) from toys where vtoyname like 'B%' group by all ccategoryid
select ccategoryid, Minimum=min(mtoyrate),Maximum=max(mtoyrate),Total=sum(mtoyrate),Amount=count(*),Average=avg(mtoyrate) from toys where vtoyname like 'B%' group by ccategoryid
'COMPUTE BY Clause'
select ccategoryid, mtoyrate from toys order by ccategoryid compute sum(mtoyrate) by ccategoryid
select ccategoryid, cbrandid,mtoyrate from toys order by ccategoryid, cbrandid compute sum(mtoyrate) by ccategoryid,cbrandid


'������'
select ascii('abc')
select char(97)
select '��ĸe��hello��һ�γ��ֵ�λ��'=charindex('e','hello')
select '�Ƚ���������������,�緵��4��Ϊ���ƥ��'=difference('hello','hell')
select '���'=left('richard',4)
select '�ҽ�'=right('richard',4)
select '����'=len('richard')
select '��ΪСд��ĸ'=lower('RICHARD')
select '��Ϊ��д��ĸ'=upper('richard')
select '��ȥ��ո�'=ltrim('  richard')
select '��ȥ�ҿո�'=rtrim('richard       ')
select 'ģʽ�ڱ��ʽ�е�һ�γ��ֵ�λ��'=patindex('%box%','action box')
select '��ת'=reverse('action')
select 'space����ո�'='richard'+space(2)+'hill'
select 'str("����","���ش��ܳ���","�����С��λ��")'=str(123.345,10,3)
select 'stuff("ԭ�ϴ�","Ҫɾ����ʼλ��","ɾ�ĳ���","Ҫ����Ĵ�")'=stuff('Weather',2,2,'i')
select '���Ӵ�'=substring('Weather',2,2)
'���ں���'
1759-9999'�������������'
select dateadd(yy,0,'1753')
select dateadd(yy,-22,getdate())
select '���Ѿ�����',datediff(dd,'1991/3/19',getdate()),'��'
select '���ַ���ʽ����'=datename(weekday,getdate())
select '��������ʽ����'=datepart(weekday,getdate())
select getdate()
���ڵĳɷ�		abbreviation(��д)		Values(��Чֵ)						
year                    yy,yyyy 			(1753-9999)
quarter			qq,q				1-4
month			mm,m				1-12
day of year		dy,y				1-356
day			dd,d				1-31
week			wk,ww				0-51
weekday			dw				1-7(1 is Sunday)
hour			hh				(0-23)
minute			mi,n				(0-59)
second			ss,s				0-59
millisecond		ms				0-999

'��ѧ����'
select abs(-333)
'���������������ػ���'
select acos(.3) 'cosine'
select asin(.3) 'sine'
select atan(.3) 'tangent'
'���������������ؽǶ�'
select cos(.3) 'cosine'
select asin(.3) 'sine'
select tan(.3) 'tangent'

select degrees(30) '���ȱ�Ƕ�'
select radians(30) '�Ƕȱ仡��'

select exp(33) '����ָ��ֵ'

select floor(-33.5)
select ceiling(-33.5)

select log(33.33)
select log10(33.33)
select pi() 'Բ����'
select power(3333,y)
select rand() 'rand([seed])�����'
select round(333.333,2)
select round(33.33,0)
select round(333.33,-2)
select sign(4.44)
select sign(0)
select sign(-2334)
select sqrt(4)

'ϵͳ����'
select host_id()
select host_name()
select suser_sid(['login_name'])
select suser_sid('sa')

select suser_sname([server_user_id])
select suser_sname(0x01)

select user_id(['name_in_db'])
select user_id('dbo')
select user_name(['user_id'])
select user_name(1)

select db_id(['db_name'])
'ϵͳ���ݿ�ID'
select db_id('master')
select db_id('tempdb')
select db_id('model')
select db_id('msdb')
select db_id('pubs')
'�û����ݿ�ID'
select db_id('Northwind')
select db_id('globaltoyz')
select db_id('Recruitment')
select db_id('EarnestBank')
select db_id('flymyway')

select db_name(['db_id'])
select db_name(1)

select object_id(['objname'])
select object_id(1)
select object_name(['obj_id'])

����ת��
select len(convert(varchar(33),1111122222222222))
select len(convert(int,'33333333'))
select len(convert(varchar(100),getdate()))
select convert(varchar(100),getdate(),24) '����ʱ��'
select convert(varchar(100),getdate(),23) 'yyyy-mm-dd'
select convert(varchar(100),getdate(),22) 'mm/dd/yy ʱ:��:�� AM|PM'
select convert(varchar(100),getdate(),21) 'yyyy-mm-dd ʱ:��:��.΢��'
select convert(varchar(100),getdate(),20) 'yyyy-mm-dd ʱ:��:��'
select convert(varchar(100),getdate(),14) 'ʱ:��:��:΢��'
select convert(varchar(100),getdate(),13) 'mm dd yyyy ʱ:��:��:΢��'
select convert(varchar(100),getdate(),12) '������'
select convert(varchar(100),getdate(),11) 'yy/mm/dd'
select convert(varchar(100),getdate(),10) 'mm-dd-yy'
select convert(varchar(100),getdate(),9)  '�� �� �� ʱ:��:��:΢��AM|PM'
select convert(varchar(100),getdate(),8) 'hh:mi:ss'
select convert(varchar(100),getdate(),7) 'mm dd,yy'
select convert(varchar(100),getdate(),6) 'mm dd yy'
select convert(varchar(100),getdate(),5) 'mm-dd-yy'
select convert(varchar(100),getdate(),4) 'mm.dd.yy'
select convert(varchar(100),getdate(),3) 'mm/dd/yy'
select convert(varchar(100),getdate(),2) 'yy.mm.dd'
select convert(varchar(100),getdate(),1) 'mm/dd/yy'
select convert(varchar(100),getdate(),101) 'mm/dd/yyyy'
select convert(varchar(100),getdate(),102) 'yyyy.mm.dd'
select convert(varchar(100),getdate(),103) 'mm/dd/yyyy'
select convert(varchar(100),getdate(),104) 'mm.dd.yyyy'
select convert(varchar(100),getdate(),105) 'mm-dd-yyyy'
select convert(varchar(100),getdate(),0) 'mm dd yyyy hour:minuteAM'
select convert(varchar(100),getdate(),100)

'JOIN ����'
use recruitment
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a left join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a right join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a left outer join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a right outer join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select 'Candidate Name'=vFirstName,'Recruitment Agency'=cName from dbo.ExternalCandidate a full outer join dbo.RecruitmentAgencies b on a.cAgencyCode= b.cAgencyCode
select count(*) from recruitmentagencies
select count(*) from externalcandidate
'��������'
select count(*) from recruitmentagencies cross join externalcandidate
'��ֵ����'
select * from recruitmentagencies a join externalcandidate b on a.cagencycode=b.cagencycode
'��Ȼ����'
select vfirstname,cname from externalcandidate a join recruitmentagencies b on a.cagencycode=b.cagencycode
'������'
select r1.cagencycode,r2.cagencycode,r1.cname,r1.mtotalpaid,r1.ccity,r1.cstate,r2.cname,r2.mtotalpaid,r2.cstate from recruitmentagencies r1 join recruitmentagencies r2 on r1.mtotalpaid=r2.mtotalpaid

'subquery�Ӳ�ѯ'
'IN'
use globaltoyz
select count(*) from toys
select * from orderdetail
'��������˶������漰����������ߵ�����'
select count(*) from toys where ctoyid in (select ctoyid from orderdetail where corderno in ( select corderno from orders))
select count(*) from toys where ctoyid not in (select ctoyid from orderdetail where corderno in ( select corderno from orders))

'EXIST'
select * from toys where exists (select 3+3)
select 3 >1 and 2< 3

'>ANY >ALL =ANY <>ANY <>ALL'
select * from toys where mtoyrate =any (select mtoyrate from toys)

'����ѯ��������һ������ SELECT colums_list INTO new-table-name from....where...'
select * into newtoys from toys
select * from newtoys
'��select into ��صĶ���'
sp_dboption 'pubs', 'select into/bulkcopy', true
sp_dboption
use pubs
use globaltoyz
sp_help toys
select * from pubs

'UNIN'
SELECT * FROM TOYS union SELECT * from toys
select ctoyid,vtoyname,ccategoryid,mtoyrate from toys union select ctoyid,vtoyname,ccategoryid,mtoyrate from toys
select ctoyid,vtoyname,ccategoryid,mtoyrate from toys union all select ctoyid,vtoyname,ccategoryid,mtoyrate from toys
sp_helpdb pubs
exec sp_helpdb globaltoyz
sp_renamedb



'�������ݿ�'
create database tempdatabase2
on(
	name='t1',filename='d:\t1.txt',size=3,maxsize=20,filegrowth=1
)
log on(
	name='tlog1',filename='d:\tlog1.txt',size=3,maxsize=20,filegrowth=1
)
primary(
	name='tt1',filename='d;\tt1.txt',size=3,maxsize=20,filegrowth=1
)
filegroup filegroup2

alter database tempdatabase
add filegroup filegroup1

alter database tempdatabase
add file
(
	name=file2,filename='d:\file2.txt',size=2,maxsize=100,filegrowth=2
) to filegroup filegroup1

alter database tempdatabase
remove file file1

'����Ͳ����¼'
use tempdatabase
create table Sales(

	itemcode char(4) not null,
	itemname char(10) null,
	qtysold int not null,
sellingdate datetime not null
)
ceate tableemployee (
empcode int identity(100,1),
empname char(25) not null,
deptname char(25) not null
)
drop table dept
create table dept(
deptcode int,
deptname char(25) not null,
depthea char(25) not null,
ecode int
)
on filegroup1

insert dept (deptcode,deptname,depthea,ecode)values(1,'deptname1','depthea1',1)
insert dept values(2,'deptname2','depthea2',2)
insert dept (deptname,depthea)values('deptname3','depthea3')
select * from dept

'�����û���������'
sp_addtype typVarstring,'varchar(9)','not null'
sp_addtype typdatetime,datetime,'not null'
sp_addtype typString,'char(10)','null'
sp_droptype typString
sp_droptype userdatetype
object_name(1)
sp_help
sp_helpdb
select * from sysdepends

create table constraintTable(
	intID int constraint priId primary key,
	varName varchar(20) constraint unqName unique,
	varAddress varchar(20) constraint chkAddress check (varAddress in('address1','address2')),
	varPhone varchar(20) constraint chkPhone check(varPhone like '[0-9][0-9][0-9][0-9][0-9][0-9]'),
	mTotalPaid int check(mTotalPaid between 0 and 5000),
	cDefault char(30) default 'defalut_value'
)

create table Employee(
intEmployeeID int identity(10000,1) not null,
varFirstName varchar(20) not null,
varLastName varchar(20) not null,
varAddress varchar(30) not null,
varCity varchar(40) not null,
varState varchar(40) not null,
cZip char(12),
cPhone char(14) not null,
DOB datetime not null,
DOJ datetime not null,
cDesignation char(20),
DeptID char(4) not null,
cPassword char(14) not null,
constraint FK_Dept_Emp foreign key (DeptID) references Department(intDpartID)
)

alter table table_name
add constraint constraint_name default 'defalut_value' for column_name

alter table table_name
add constraint constraint_name unique (column_name)

alter table table_name
add constraint constraint_name primary key clustered (column_name)

alter table table_name
add constraint constraint_name foreign key (local_column_name) references ref_table_name(ref_column_name)

alter table table_name
add constraint constraint_name check(column_name in('','','')/like ''/between 0 and 5000)

alter table table_name
drop constraint constraint_name

'RULE'

use globaltoyz
sp_helpdb globaltoyz
sp_help
select * from sysconstraints
sp_help toys
select * from orderdetail

create rule rulCost
as @cost >=0

sp_bindrule rulCost,'orderdetail.mtoycost'
sp_unbindrule 'orderdetail.mtoycost'
sp_help orderdetail

sp_addtype typData,int,'not null'
sp_bindrule rulCost,typData,futureonly
sp_unbindrule typData
sp_droptype typData

select * from recipient
create rule rul_zip_code
as @zip like'[0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'
sp_bindrule rul_zip_code,'recipient.czipcode'
sp_unbindrule 'recipient.czipcode'


'DEFAULT'
use recruitment
select * from newspaper
create default def_City
as 'Boston'
sp_bindefault def_city,'newspaper.ccity'
sp_unbindefault 'newspaper.ccity'

create rule rul_fax_phone
as @fax like'([0-9][0-9][0-9])[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'

sp_bindrule rul_fax_phone,'newspaper.cfax'
sp_bindrule rul_fax_phone,'newspaper.cphone'
sp_unbindrule rul_fax_phone
sp_unbindrule 'newspaper.cfax'
sp_unbindrule 'newspaper.cphone'
drop rule rul_fax_phone


insert newspaper (cNewspaperCode,cNewspaperName,vRegion,vTypeOfNewspaper,vContactPerson,vHOAddress,cCity,cState,cZip,cCountryCode,cFax,cPhone)values('0012','Lchj Daily','World','universal','L J','333 Lowersst 99',default,'month','33333-3333','003','(333)333-3333','(333)999-3333')

sp_addtype typ_data,'char(20)','null'
sp_bindefault def_city,typ_data,futureonly
sp_unbindefault typ_data,futureonly


'UPDATE'
create database updatadatabase
use updatadatabase
create table Item
(
	ItemCode char(6) not null,
	ItemName char(40) not null,
	QuantityOnHand int not null
)
create table Sales
(
	ItemCode char(6) not null,
	QtySold int not null,
	SaleDate datetime default getdate()
)
insert Item values('I001','Printer',200)
insert Sales values('I001',20,'02/02/01')
insert Sales values('I002',30,'05/07/01')

update item
set quantityonhand=quantityonhand-qtysold
from item,sales
where item.itemcode=sales.itemcode

select * from item
'DELETE'
delete sales where itemcode='I002'
'TRUNCATE'ע��delete * from table_name��,���Ҳ��������
truncate table sales



'INDEX'
use recruitment
create nonclustered index idxExternalCandidate
on ExternalCandidate(cAgencyCode)
create clustered index idxRecruitment
on RecruitmentAgencies(cAgencyCode)
sp_helpindex recruitmentagencies
sp_helpindex externalcandidate
select * from recruitmentagencies
select * from externalcandidate
dbcc showcontig p7.20

begin
	declare @id int 
	set @id =object_id('ExternalCandidate')
	dbcc showcontig(@id)
end

dbcc indexdefrag(database_name,table_name,index_name)
dbcc indexdefrag(recruitment,externalcandidate,idxexternalcandidate)

'VIEW'
use recruitment

create view vwEmpSkill
as
select vfirstname,vlastname,vqualification,vskill from employee join positionskill on employee.ccurrentposition=positionskill.cpositioncode join skill on positionskill.cskillcode=skill.cskillcode

select * from vwempskill
drop view vwempskill

alter view vwEmpSkill (co1,co2,co3,co4) with encryption
as
select vfirstname,vlastname,vqualification,vskill from employee join positionskill on employee.ccurrentposition=positionskill.cpositioncode join skill on positionskill.cskillcode=skill.cskillcode
select * from syscomments where id=object_id('vwempskill')
select * from vwempskill
sp_rename vwempskill,vwempskill

'����'
use recruitment
declare @var int
select @var=count(*) from employee
select @var
print @var

print @@servername
print @@version
print @@spid
print @@procid
print @@error
select * from employee
print @@rowcount

if exists(select * from employee)
begin
	print 'employee�����м�¼'
end
else
begin
	print 'employee�����޼�¼'
end

USE pubs
GO
SELECT   Category = 
      CASE type
         WHEN 'popular_comp' THEN 'Popular Computing'
         WHEN 'mod_cook' THEN 'Modern Cooking'
         WHEN 'business' THEN 'Business'
         WHEN 'psychology' THEN 'Psychology'
         WHEN 'trad_cook' THEN 'Traditional Cooking'
         ELSE 'Not yet categorized'
      END,
   CAST(title AS varchar(25)) AS 'Shortened Title',
   price AS Price
FROM titles
WHERE price IS NOT NULL
ORDER BY type, price
COMPUTE AVG(price) BY type
GO

USE pubs
GO
SELECT    'Price Category' = 
      CASE 
         WHEN price IS NULL THEN 'Not yet priced'
         WHEN price < 10 THEN 'Very Reasonable Title'
         WHEN price >= 10 and price < 20 THEN 'Coffee Table Title'
         ELSE 'Expensive book!'
      END,
   CAST(title AS varchar(20)) AS 'Shortened Title'
FROM titles
ORDER BY price
GO

USE pubs
SELECT SUBSTRING((RTRIM(a.au_fname) + ' '+ 
   RTRIM(a.au_lname) + ' '), 1, 25) AS Name, a.au_id, ta.title_id,
   Type = 
  CASE 
    WHEN SUBSTRING(ta.title_id, 1, 2) = 'BU' THEN 'Business'
    WHEN SUBSTRING(ta.title_id, 1, 2) = 'MC' THEN 'Modern Cooking'
    WHEN SUBSTRING(ta.title_id, 1, 2) = 'PC' THEN 'Popular Computing'
    WHEN SUBSTRING(ta.title_id, 1, 2) = 'PS' THEN 'Psychology'
    WHEN SUBSTRING(ta.title_id, 1, 2) = 'TC' THEN 'Traditional Cooking'
  END
FROM titleauthor ta JOIN authors a ON ta.au_id = a.au_id


declare @int int
set @int=10
while @int>0
begin
	print @int
	set @int=@int-1
end



'procedure'
use recruitment
alter procedure prcListContractRecruiter @city char(20)
as
begin
	print 'List of Contract Recruiters'
	select cname,ccity,czip,cphone from dbo.ContractRecruiter where ccity=@city
end
sp_helptext prcListContractRecruiter
execute prcListContractRecruiter Alexandria
execute prclistcontractrecruiter Boston
select * from contractrecruiter

'default ����'
create proc proc1 @n1 int,@n2 int=20
as
begin
	print @n1*@n2
end
exec proc1 22
exec proc1 20,33
exec proc1
select @@error
alter proc proc1 @n1 int=null,@n2 int=20
as
begin
	if @n1 is null
		begin
			print '������ʹ�� proc1 integer value, integer value'
		end
	else
		begin
			print @n1*@n2
		end
end
execute proc1



drop procedure prcPrintRecruitmentAgencyList
create procedure prcPrintRecruitmentAgencyList
as
begin
	print 'List of Recuitment Agencies.'
	select cName,vAddress,cCity,cZip,cPhone,cFax
	from recruitmentagencies
end
sp_helptext prcPrintRecuitmentAgencyList
execute prcPrintRecuitmentAgencyList

alter proc prcPrintRecruitmentAgencyList @city char(15)=null
as
begin
	if @city is null
		begin
			print 'USAGE: prcPrintRecruitmentAgencyList <city>'
			return
		end
	print'List of Recruitment Agencies'
	select cname,vaddress,czip,cphone from recruitmentagencies where ccity=@city
end
prcPrintRecruitmentAgencyList Boston

alter proc prcPrintRecruitmentAgencyList @city char(15)
as
begin
	if exists(select * from recruitmentAgencies where ccity=@city)
		begin
			print 'List of Recruitment Agencies'
			select cname,vaddress,czip,cphone from recruitmentagencies where ccity=@city
			return 0
		end	
	else
		begin
			print 'No records Found for given city'
			return 1
		end
end
sp_helptext prcprintrecruitmentagencylist
declare @rv int
exec @rv= prcprintrecruitmentagencylist 'Alexandria'
print @rv

'���̵��ù���'
alter proc prcDisplayBoth @city char(16)
as
begin
	exec prcPrintRecruitmentAgencyList @city
	exec prcListContractRecruiter @city
end
exec prcDisplayBoth 'Alexandria'

'output����'
create proc prcGetPositionDetail 
@code char(4),
@description char(30) output,
@budget int output,
@currentstrength int output
as begin
	if exists(select * from position where cpositioncode=@code)
		begin
			select @description =vdescription,@budget=ibudgetedstrength,@currentstrength=icurrentstrength from position where cpositioncode=@code
			return 0
		end
	else
		return 1
end
create proc prcDisplayPositionStatus @code char(4)
as begin
	declare @description char(30)
	declare @budget int
	declare @currentstrength int
	declare @returnvalue int
	exec @returnvalue = prcgetpositiondetail @code,@description output,@budget output,@currentstrength output
	if(@returnvalue=0)
		begin
			print 'The status for the position '+@description
			print 'Budgeted Strength  :'+convert(char(30),@budget)
			print 'Current Strength  :'+convert(char(30),@currentstrength)
			select crequisitioncode,vregion,sinoofvacancy from requisition where cpositioncode=@code
		end
	else
		print 'No records for the given position code'
end
sp_help prcGetPositionDetail
sp_helptext prcGetPositionDetail
sp_helptext prcDisplayPositionStatus
prcDisplayPositionStatus '0002'
'recompile'
create proc prc_name <with recompile> as begin sql_statements end

'insert tigger'
use recruitment
alter trigger trginsertrequisition on requisition for insert
as
declare @vacancyreported int
declare @actualvacancy int
select @actualvacancy=ibudgetedstrength-icurrentstrength from position join inserted on position.cpositioncode=inserted.cpositioncode
select ibudgetedstrength-icurrentstrength from position join inserted on position.cpositioncode=inserted.cpositioncode
select @vacancyreported=sinoofvacancy from inserted
select sinoofvacancy from inserted
if(@vacancyreported>@actualvacancy)
begin
	print'the actual vacancies are less than the vacancies reported.hence, cannot insert.'
	rollback transaction
end
return
sp_help trginsertrequisition
insert requisition values('000003','0001',getdate(),getdate()+7,'0001','North',17)
select * from requisition
select * from position


'delete trigger'
create trigger trgdeletecontractrecruiter on contractrecruiter for delete
as
	print'delete of contract recruiters is not allowed'
	rollback transaction
return
sp_help trgdeletecontractrecruiter
delete contractrecruiter where ccontractrecruitercode='000004'


'update trigger'
use pubs
create trigger trgupdatepub on publishers for update
as if update(pub_id)
begin
	print 'Publisher ID cannot be modified'
	rollback tran
end
select * from publishers
update publishers set pub_id='9933' from publishers where city='boston'
sp_help publishers
sp_helptext CK__publisher__pub_i__7C8480AE
([pub_id] = '1756' or ([pub_id] = '1622' or ([pub_id] = '0877' or ([pub_id] = '0736' or [pub_id] = '1389'))) or [pub_id] like '99[0-9][0-9]')
use recruitment
create trigger trgupdatecontractrecruiter
on contractrecruiter
for update
as
declare @avgpercentagecharge int
select @avgpercentagecharge=avg(sipercentagecharge)
from contractrecruiter
if(@avgpercentagecharge>11)
begin
	print'the average cannot be more than 11'
	rollback tran
end
return
sp_help trgupdatecontractrecruiter
update contractrecruiter
set sipercentagecharge=sipercentagecharge+10
where ccontractrecruitercode='0002'

'After,Instead of'
use pubs
select * from titles
drop trigger trgDeleteTitles
create trigger trgDeleteTitles on titles2 after delete as print'Deletion successful'
create trigger trginsteadoftitle on titles2 instead of delete as print'Master recorder cannot deleted'
select * into titles2 from titles
drop table titles2
select * from titles2
delete titles2 where title_id='BU1032'
select * from titles2 where title_id='BU1032'

sp_settriggerorder trigger_name,˳��,dml
˳�������first����ִ��,none���ִ��,last���ִ��
dml������delete,update,insert


'������'
use recruitment
select * from department d join employee e on d.cdepartmentcode=e.cdepartmentcode join externalcandidate c on e.ccandidatecode=c.ccandidatecode

create database student
on(name=student_dat,
filename='d:\student.mdf',
filegrowth=2)
log on
(name='employee_log',
filename='d:\employee.ldf',
filegrowth=2 MB
)
drop database student


'transaction'
use recruitment
select ccurrentposition from employee where cemployeecode='000002'
select icurrentstrength from position  where cpositioncode='0001'
begin transaction trnUpdatePosition
	update employee set ccurrentposition = '0001' where cemployeecode='000002'
	update position set icurrentstrength=icurrentstrength+1 where cpositioncode='0001'
commit transaction trnUpdatePosition
selecg

'CURSOR'
use recruitment
--(1)
declare curDepartment cursor for select vDepartmentName,vDepartmentHead from Department

open curDepartment
declare @departmentName char(25)
declare @departmentHead char(25)
fetch curDepartment into @departmentName,@departmentHead
while(@@fetch_status=0)
begin
	print 'Department Name='+@departmentName
	print 'department Head='+@departmentHead
fetch curDepartment into @departmentName,@departmentHead
end
close curDepartment
deallocate curDepartment
--(2)
declare curExternalCandidate scroll cursor for select vfirstname,vlastname,sitestscore from externalcandidate

open curExternalCandidate
print 'First Name          Last Name           Marks              Result'
print '___________________________________________________________________________________________________'
declare @firstname char(20)
declare @lastname char(20)
declare @mark smallint
declare @result char(30)
fetch first from curExternalCandidate into @firstname,@lastname,@mark
while(@@fetch_status=0)
begin
	
	if(@mark>=90)
		begin
			set @result='Selected for the interview'
		end
	else
		begin
			set @result='Not selected for the interview'
		end
	print @firstname+@lastname+cast(@mark as char(20))+@result
	fetch curExternalCandidate into @firstname,@lastname,@mark
end
print '..................................................................................................'
print '..................................................................................................'
print '..................................................................................................'
close curExternalCandidate
deallocate curExternalCandidate