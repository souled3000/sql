prompt PL/SQL Developer import file
prompt Created on 2013年8月21日 by Administrator
set feedback off
set define off
prompt Creating ACCOUNT...
create table ACCOUNT
(
  ID     VARCHAR2(100),
  NAME   VARCHAR2(200),
  ADDR   VARCHAR2(200),
  PWD    VARCHAR2(100),
  REMARK VARCHAR2(200)
)
;

prompt Creating MAIL...
create table MAIL
(
  NAME     VARCHAR2(200),
  ADDR     VARCHAR2(200),
  PWD      VARCHAR2(100),
  RALMAIL  VARCHAR2(200),
  QUESTION VARCHAR2(200),
  N        INTEGER
)
;

prompt Loading ACCOUNT...
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('jasperforge', 'lisouled ', 'http://jasperforge.org', 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('baidu0', '3000lchja ', 'www.baidu.com', 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('YY', 'lchj3000b ', null, 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('爱拍游戏', 'lchj@21cn.com', null, 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('itudou', 'lchj@21cn.com', null, 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('youku', 'unistart', null, 'flower918', '3000lchj@gmail.com');
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('智联', '3000lchj@gmail.com', null, 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('iteye', 'unistars', null, 'souled@yeah.net', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('baidu2', 'Rachel_200412', null, 'flower918', '24841337@qq.com');
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('baidu3', 'souled3000@163.com', 'hr.baidu.com', 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('sohu', '悲欢自饮599006', null, 'h3nzupp5', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('oracle', '3000lchj@gmail.com', null, 'LCHJflower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('15238617930', '15238617930', null, '081319', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('京东商城', 'souled@yeah.net', null, '9782345yuefei918', '北京宣武区内环到三环里宣武区广安门内大街200号东华金座4单元1201室');
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('www.china-pub.com', '3000lchj@gmail.com', 'www.china-pub.com', 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('bbs.131.com', 'ubuun2000', 'bbs.131.com', 'flower918', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('csdn', 'lichunjiang_918', null, '66352054', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('www.itpub.net', 'lichunjiang_918', null, '6352054', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('天基', '3000lchj', null, '6352054', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('xunlei', 'lichunjiang918', null, '6352054', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('icq', '564335668', null, '6352054', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('飞信', '15238617930', null, '66524380', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('qq1', '24841337', null, 'password!', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('qq2', '1556208127', null, 'wallace!', null);
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('wow1', '3000lchj@gmail.com', null, 'flower918', '3000lchja');
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('wow2', 'lichunjiang_918@hotmail.com', null, 'Lchjyuefei1981', 'wow1');
insert into ACCOUNT (ID, NAME, ADDR, PWD, REMARK)
values ('sina', '3000lchj@gmail.com', null, 'flower918', null);
commit;
prompt 27 records loaded
prompt Loading MAIL...
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('3000lchj@gmail.com', '3000lchj@gmail.com', '66352054', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('21cn', 'lchj@21cn.com', '6352054!', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('139', '15238617930@139.com', '6352054lchj', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('souled@yeah.net', 'souled@yeah.net', 'souled!', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('24841337@qq.com', '24841337@qq.com', 'password!', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('1556208127@qq.com', '1556208127@qq.com', 'wallace!', null, null, 1);
insert into MAIL (NAME, ADDR, PWD, RALMAIL, QUESTION, N)
values ('hotmail.com', 'lichunjiang_918@hotmail.com', '66352054', null, null, 1);
commit;
prompt 7 records loaded
set feedback on
set define on
prompt Done.
