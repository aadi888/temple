drop database mandir;
drop table photoheader;
create database mandir;
use mandir;

create table photoheader(headerid int primary key,header varchar(400));
insert into photoheader values(1,'demo');


create table trusteedata(tid int primary key,tname varchar(400),tposition varchar(400));
insert into trusteedata values(1,'adish','developer');
insert into trusteedata values(2,'adish','developer');
insert into trusteedata values(3,'adish','developer');
insert into trusteedata values(4,'adish','developer');