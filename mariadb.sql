-- member
create table Member (
    mno int primary key auto_increment,
    name varchar(20) not null ,
    jumin varchar(14) not null ,
    userid varchar(16) not null ,
    passwd varchar(16) not null ,
    zipcode varchar(7) not null ,
    addr1 varchar(50) not null ,
    addr2 varchar(50) not null ,
    email varchar(50) not null ,
    phone varchar(13) not null ,
    regdate timestamp default current_timestamp
);


-- CRUD
insert into Member (name, jumin, userid, passwd, zipcode, addr1, addr2, email, phone)
values(?,?,?,?,?,?,?,?,?);

select userid from Member where userid = 'shon' ;

-- board
create table Board (
    bno int primary key auto_increment,
    title varchar(100) not null ,
    userid varchar(16) not null ,
    regdate timestamp default current_timestamp,
    views int default 0,
    thumbs int default 0,
    contents text not null
);

-- crud

insert into Board (title, userid, contents) values ('타이틀임','작성자임','내용임');

select bno, title, userid, regdate, thumbs, views from Board order by bno desc;

select * from Board where bno = 1;

update Board set title = '변경타이틀', contents = '변경내용', regdate = current_timestamp where bno = 1;

delete from Board where bno = 1;


-- reply
create table Reply (
    rno int primary key auto_increment,
    cno int not null,
    bno int not null ,
    reply text not null ,
    userid varchar(16) not null ,
    regdate timestamp default current_timestamp
);

alter table Reply add constraint fk_mr foreign key (userid) references Member(userid); -- 비식별키를 이용한 외래키

alter table Reply add constraint fk_br foreign key (bno) references Board(bno); -- 식별키를 이용한 외래키

-- insert
insert into Reply (rno, cno, bno, reply, userid) values (1,1,552,'오늘은 날씨가...','user1');
insert into Reply (rno, cno, bno, reply, userid) values (4,1,552,'비올꺼 같아요','user10');
insert into Reply (rno, cno, bno, reply, userid) values (6,1,552,'블라블라','user9');
insert into Reply (rno, cno, bno, reply, userid) values (2,2,552,'점심메뉴는...','user2');
insert into Reply (rno, cno, bno, reply, userid) values (3,3,552,'월요병이 도졌나...','user3');
insert into Reply (rno, cno, bno, reply, userid) values (5,5,552,'블라블라','user25');
insert into Reply (rno, cno, bno, reply, userid) values (7,7,552,'블라블라','user23');

insert into Reply(cno, bno, userid, reply) values ();

# cno는 comment number , rno는 reply number, bno는 board number
-- select
select * from Reply where bno = 552 order by cno;

-- 데이터 추가시 반영될 auto_increment의 값 조회
select auto_increment from information_schema.TABLES where table_name = 'Reply';

-- pds v1
create table Pds(
    pno int primary key auto_increment,
    title varchar(100) not null ,
    userid varchar(16) not null ,
    regdate timestamp default current_timestamp,
    views int default 0,
    thumbs int default 0,
    contents text not null,
    fname1 varchar(50),
    fname2 varchar(50),
    fname3 varchar(50),
    fsize1 varchar(5),
    fsize2 varchar(5),
    fsize3 varchar(5),
    ftype1 varchar(5),
    ftype2 varchar(5),
    ftype3 varchar(5),
    fdown1 int default 0,
    fdown2 int default 0,
    fdown3 int default 0
);

drop table Pds;

-- CRUD
insert into Pds (title, userid, contents, fname1, fname2, fname3, fsize1, fsize2, fsize3, ftype1, ftype2, ftype3, fdown1, fdown2, fdown3)
values ();

select pno, title, userid, regdate, thumbs, views from Pds order by pno desc;

select * from Pds where pno = ?;

-- pds v2
create table Pds(
    pno int primary key auto_increment,
    title varchar(100) not null ,
    userid varchar(16) not null ,
    regdate timestamp default current_timestamp,
    views int default 0,
    thumbs int default 0,
    contents text not null,
    fname1 varchar(50),
    fname2 varchar(50),
    fname3 varchar(50),
    fsize1 varchar(5),
    fsize2 varchar(5),
    fsize3 varchar(5),
    ftype1 varchar(5),
    ftype2 varchar(5),
    ftype3 varchar(5),
    fdown1 int default 0,
    fdown2 int default 0,
    fdown3 int default 0,
    uuid varchar(20)
);

select fname1 fname1, uuid from Pds where pno = 2;
select fname2 fname1, uuid from Pds where pno = 2;
select fname3 fname1, uuid from Pds where pno = 2;