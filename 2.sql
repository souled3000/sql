create table emp(
empno int(4) not null,
ename varchar(10),
job varchar(9),
mgr int(4),
hiredate date,
sal float(7,2),
comm float(7,2),
deptno int(2)
);

insert into emp values(7654,'martin','salesman',7698,date_format('2022-4-15 13:30:28','%Y-%m-%d'),2975,null,20);

insert into emp values(7698,'blake','manager',7839,date_format('2022-4-15 13:30:28','%Y-%m-%d'),1250,1400,30);

insert into emp values(7782,'clark','manager',7839,date_format('2022-4-15 13:30:28','%Y-%m-%d'),2450,null,10);

insert into emp values(7788,'scott','analyst',7566,date_format('2022-4-15 13:30:28','%Y-%m-%d'),3000,null,20);

insert into emp values(7839,'king','president',null,date_format('2022-4-15 13:30:28','%Y-%m-%d'),5000,null,10);

insert into emp values(7844,'turner','salesman',7698,date_format('2022-4-15 13:30:28','%Y-%m-%d'),1500,null,30);

insert into emp values(7876,'adams','clerk',7788,date_format('2022-4-15 13:30:28','%Y-%m-%d'),1100,null,20);

insert into emp values(7900,'james','clerk',7698,date_format('2022-4-15 13:30:28','%Y-%m-%d'),950,null,30);

insert into emp values(7902,'ford','analyst',7566,date_format('2022-4-15 13:30:28','%Y-%m-%d'),3000,null,20);

insert into emp values(7934,'miller','clerk',7782,date_format('2022-4-15 13:30:28','%Y-%m-%d'),1300,null,10);

create table dept(
deptno int(2),
dname varchar(14),
loc varchar(13)
);

insert into dept values(10,'accounting','new york');
insert into dept values(20,'research','dallas');
insert into dept values(30,'sales','chicago');
insert into dept values(40,'operations','boston');

