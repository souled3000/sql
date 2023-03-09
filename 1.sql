create table emp(
empno number(4) not null,
ename varchar2(10),
job varchar2(9),
mgr number(4),
hiredate date,
sal number(7,2),
comm number(7,2),
deptno number(2)
);

insert into emp values(7654,'martin','salesman',7698,to_date('28-sep-1981','dd-mon-yyyy'),2975,null,20);

insert into emp values(7698,'blake','manager',7839,to_date('1-may-1981','dd-mon-yyyy'),1250,1400,30);

insert into emp values(7782,'clark','manager',7839,to_date('9-jun-1981','dd-mon-yyyy'),2450,null,10);

insert into emp values(7788,'scott','analyst',7566,to_date('9-dec-1982','dd-mon-yyyy'),3000,null,20);

insert into emp values(7839,'king','president',null,to_date('17-nov-1981','dd-mon-yyyy'),5000,null,10);

insert into emp values(7844,'turner','salesman',7698,to_date('8-sep-1981','dd-mon-yyyy'),1500,null,30);

insert into emp values(7876,'adams','clerk',7788,to_date('12-jan-1983','dd-mon-yyyy'),1100,null,20);

insert into emp values(7900,'james','clerk',7698,to_date('3-dec-1981','dd-mon-yyyy'),950,null,30);

insert into emp values(7902,'ford','analyst',7566,to_date('3-dec-1981','dd-mon-yyyy'),3000,null,20);

insert into emp values(7934,'miller','clerk',7782,to_date('23-jan-1982','dd-mon-yyyy'),1300,null,10);

create table dept(
deptno number(2),
dname varchar2(14),
loc varchar2(13)
);

insert into dept values(10,'accounting','new york');
insert into dept values(20,'research','dallas');
insert into dept values(30,'sales','chicago');
insert into dept values(40,'operations','boston');

