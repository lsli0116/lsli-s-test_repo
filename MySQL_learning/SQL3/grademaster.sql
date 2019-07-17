create database grademaster;

use grademaster;

create table student (
  sid int(10) not null,
  sname varchar(30),
  gender varchar(10),
  primary key(sid)
);

create table course (
  cid int(10) not null,
  cname varchar(100),
  primary key(cid));

create table mark(
  mid int(10) not null auto_increment,
  sid int not null,
  cid int not null,
  score int(10) not null,
  primary key(mid),
  foreign key(sid) references student(sid),
  foreign key(sid) references course(cid)
);

insert into student values(1,'Tom','male'),(2,'Jack','male'),(3,'Rose','female');

insert into course values(1,'math'),(2,'physics'),(3,'chemistry');

insert into mark values(1,1,1,80),(2,2,1,85),(3,3,1,90),(4,1,2,60),(5,2,2,90),(6,3,2,75),(7,1,3,95),(8,2,3,75),(9,3,3,85);


