
CREATE TABLE dictionary(
    id int not null auto_increment primary key,
    spelling char(40) 
);


drop table dictionary;
CREATE TABLE part_of_speech(
    id int not null default 1000000 primary key,
    name char(40) default '1'
);


CREATE TABLE meaning(
	word_id int,
    partofspeech char(40) default '1',
    content char(1000) default '',
    serial_no int
);

create table irregular_verbs(
	infinitive varchar(30),
    past_form varchar(30),
    participle varchar(30)
);

show variables like '%auto_increment%';
set @@auto_increment_increment=1;
set @@auto_increment_offset=1;

insert into dictionary(id,spelling) values(1000000,'a/an');

select count(distinct(spelling)) from dictionary;
truncate table dictionary;
truncate table dictionary;
select count(*) from dictionary;
select spelling from dictionary where spelling like "%rent%";
select id,spelling from dictionary where spelling in(
select spelling from dictionary group by spelling having count(spelling)>1 order by spelling ) order by spelling;



ALTER TABLE `dictionary` MODIFY
`spelling` VARCHAR(40) 
CHARACTER SET utf8
COLLATE utf8_bin;


select * from dictionary where id in( 
	select id from dictionary group by spelling having count(spelling)>1 
);


delete a.* from dictionary as a inner join(
	select id from dictionary group by spelling having count(spelling)>1 
) as b where a.id=b.id;


SET SQL_SAFE_UPDATES = 0;


use english;
select * from dictionary where spelling like '%recogni%' order by spelling;
insert into dictionary(spelling) values('symmetrical');
delete from dictionary where spelling ='symmertical';


select * from irregular_verbs;

select * from irregular_verbs where infinitive="strike";
truncate table irregular_verbs;