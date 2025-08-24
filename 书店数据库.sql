--数据库
create database sx
on primary
(name='s_data2',  
 size=150,  
 maxsize=500,
 filegrowth=10,
 filename='D:\shixun.mdf'),
 (name='s1_data2',  
 size=150,  
 maxsize=500,
 filegrowth=10,
 filename='D:\shixun.ndf')
log on
(name='s2_log2', 
 size=100,  
 maxsize=300,
 filegrowth=30%,
 filename='D:\shixun.ldf') 
 --用户表
 Create  table  users                        
(username varchar(20) not null ,                   
phone char(15) null,
address char(100) null,                 
true_name char(20)not null,
)  
use sx
drop table users
--录入用户表
insert into users
values('小一','18600005421','辽宁省锦州市','陈一')
go
insert into users
values('小二','18600005422','辽宁省鞍山市','洪二')
go
insert into users
values('小三','18600005423','黑龙江省哈尔滨','于三')
go
insert into users
values('小四','18600005424','吉林省长春市','钟小四')
go
insert into users
values('小五','15600005425','河南省洛阳市','王小五')
go
insert into users
values('小六','15600005426','重庆市','肖六')
go
insert into users
values('小七','18600005427','北京市','黄七')
go
insert into users
values('小八','18600005428','北京市','何小八')
go
insert into users
values('小九','18600005429','辽宁省黑山县','于小九')
go
insert into users
values('小十','18600005420','四川省成都','钟十')
go
insert into users
values('小霈','18600005430','湖南省长沙市','段霈')
go
insert into users
values('小舟','18600005440','湖南省长沙市','郁小舟')
go
select*from users
--书籍表
create table books
(isbn varchar(20) not null,
book_id char(5) not null primary key, 
bname varchar(50) not null,
bpress varchar(50) not null,
bprice decimal(4,2) null,
bauthor varchar(30) not null,
)
drop table books
--录入书籍表
insert into books
values('9787559431080','001','十二年古人戏','江苏凤凰文艺出版社','79.80','墨宝非宝')
go
insert into books
values('9787519036485','002','一颗小草莓','文联出版社','56.00','卿玖思')
go
insert into books
values('9787550021143','003','你是我的小确幸','百花洲文艺出版社','49.80','东奔西顾')
go
insert into books
values('9787550022898','004','小南风','百花洲文艺出版社','32.00','玖月晞')
go
insert into books
values('9787510845062','005','世界那么大我只喜欢你','中国友谊出版社','39.80','无')
go
insert into books
values('9787550014633','006','只想和你好好的','百花洲文艺出版社','29.80','东奔西顾')
go
insert into books
values('9787550214224','007','过得刚好','北京联合出版公司','52.00','郭德纲')
go
insert into books
values('9787514374315','008','这世界很烦但你要很可爱','现代出版社','39.80','万特特')
go
insert into books
values('9787544270878','009','解忧杂货铺','南海出版公司','39.50','东野圭吾')
go
insert into books
values('9787559436696','010','生活明朗 万物可爱','江苏凤凰文艺出版社','45.00','季羡林')
go
insert into books
values('9787511377470','011','知否知否应是绿肥红瘦','中国华侨出版社','42.00','淼淼')
go
insert into books
values('9787559640246','012','笑场','北京联合出版公司','49.80','李诞')
go
insert into books
values('97875500073140','013','一生一世美人骨','百花洲文艺出版社','29.80','墨宝非宝')
go
select*from books
--订购表
create table orders
(username varchar(20) not null primary key,  
order_id char(19) not null,
quantity int not null,
book_id char(6) not null ,
odate datetime null,
)
drop table orders
--录入订购表
insert into orders
values('小一','1073343266100674590','34','012','2020-7-2')
go
insert into orders
values('小二','1053048451328674590','10','008','2020-6-1')
go
insert into orders
values('小三','1049797856412674590','1','012','2020-6-6')
go
insert into orders
values('小四','1037730978722674590','33','007','2020-6-1')
go
insert into orders
values('小五','1037588609787674590','60','009','2019-6-1')
go
insert into orders
values('小六','1032632343903674590','130','001','2019-7-15')
go
insert into orders
values('小七','1012315585173674590','3','002','2020-7-1')
go
insert into orders
values('小八','1006771330340674590','1','011','2020-5-6')
go
insert into orders
values('小九','993006113669674590','1','003','2020-5-7')
go
insert into orders
values('小十','993064163193674590','1','004','2019-5-6')
go
select*from orders 
--库存表
create table stock
(isbn varchar(20) not null,
stock_qty varchar(10) null,
logdate datetime null,
)
drop table stock 
insert into stock
values('9787559431080','456','2020-1-1')
go
insert into stock
values('9787519036485','234','2020-3-1')
go
insert into stock
values('9787550021143','567','2020-1-1')
go
insert into stock
values('9787550022898','124','2020-1-1')
go
insert into stock
values('9787510845062','235','2020-4-7')
go
insert into stock
values('9787550014633','234','2020-3-9')
go
insert into stock
values('9787550214224','578','2020-1-1')
go
insert into stock
values('9787514374315','234','2019-5-3')
go
insert into stock
values('9787544270878','95','2019-4-3')
go
insert into stock
values('9787559436696','345','2020-5-8')
go
insert into stock
values('9787511377470','53','2020-1-3')
go
insert into stock
values('9787559640246','159','2019-12-3')
go
insert into stock
values('97875500073140','158','2019-11-11')
go
select*from stock 
--用户留言表
create table leavewords
(username varchar(20) not null,
atype varchar(10) null,
re_status varchar(10),
)
drop table leavewords 
insert into leavewords
values('小一','好评','已回复')
go
insert into leavewords
values('小五','差评','已回复')
go
insert into leavewords
values('小七','好评','未回复')
go
insert into leavewords
values('小九','好评','已回复')
go
select*from leavewords
--管理员表
create table administrators
(admin_id int not null,
username varchar(20) not null,
adminname varchar(20) not null,
)
insert into administrators 
values('201911121','小霈','段霈')
go
insert into administrators 
values('201911120','小舟','郁小舟')
go
select*from administrators 
--发货单表
create table shippedfrom
(ship_id char(10) not null,
ship_date datetime null,
ship_man varchar(20) not null, 
)
drop table shipped 
insert into shipped 
values('01','2020-7-3','小舟')
go
insert into shipped 
values('02','2020-6-3','小舟')
go
insert into shipped 
values('03','2020-6-7','小霈')
go
insert into shipped 
values('04','2020-6-4','小舟')
go
insert into shipped 
values('05','2019-6-2','小霈')
go
insert into shipped 
values('06','2019-7-16','小霈')
go
insert into shipped 
values('07','2020-7-4','小舟')
go
insert into shipped 
values('08','2020-5-8','小霈')
go
insert into shipped 
values('09','2020-5-8','小舟')
go
insert into shipped 
values('10','2020-5-8','小舟')
go
select*from shipped 
--查询
--(1)查询书籍表中百花洲文艺出版社的书籍信息
select*
from books 
where bpress='百花洲文艺出版社'
--(2)查询用户表中真实姓名姓钟的用户信息
select*
from users 
where true_name like '钟%'
--(3)查询作者为墨宝非宝并由百花洲文艺出版社出版的书籍
select *
from books 
where bauthor ='墨宝非宝' and bpress ='百花洲文艺出版社'
--(4)查询订单表中订购数量在30到50之间的订单信息
select*
from orders 
where quantity >=30 and quantity <=50
--(5)查询书籍表中书籍平均价格
select AVG(bprice)
from books 
--(6)查询订购数量最多的订购信息
select top 1 *
from orders 
order by quantity desc
--(7)查询库存数量少于100的书籍作者
select bauthor 
from books join stock   
on books.isbn =stock.isbn 
where stock_qty <100
--(1)更改小一的留言状态为未回复
update leavewords 
set re_status ='未回复'
where username ='小一'
--(2)更改发货单表中01号的发货时间为2020-7-4
update shipped 
set ship_date ='2020-7-4'
where ship_id ='01'
--删除订购数量多于一百的订购信息
delete from orders 
where quantity <50

--视图1在users表中创建查询用户名为小五的信息的视图
create view v1
as
select*from users
where username='小五'
go
select *from v1
--2创建查询价格最低的三本书的信息
create view v2 
as
select top 3 *
from books
order by bprice  asc
go
select*from v2
drop view v3
--3查询所有姓钟的用户的订购信息,结果包括用户名、订单数量、订购日期、书籍编号
create view v3
as
select users.username,quantity ,book_id ,odate 
from users join orders 
        on(users.username=orders.username)
where true_name like '钟%'
select*from v3 
--存储过程 根据管理员输入的用户名，查询用户的所有订购信息，如果没有该用户信息，则提示“无该用户信息”
create proc p1
@username varchar(20)
as
begin
    if exists(select * from orders where username=@username)
           select * from orders where username=@username
    else
       print '无该用户信息！'  
end

exec p1 '小一'
--输入书籍的ISBN，检查该ISBN所对应的书籍是否登记库存，如果登记，显示该书籍的库存信息，如果不存在，则向系统录入该书籍的库存信息
create proc p2
@isbn varchar(20),@stock_qty varchar(10),@logdate datetime
as
begin
if exists(select*from stock where isbn=@isbn)
select *from stock where isbn=@isbn
else
 begin
  insert into stock(isbn,stock_qty,logdate)
  values(@isbn,@stock_qty,@logdate)
  end
 select *from stock where isbn=@isbn
 end 
--触发器
--当删除一个用户信息的同时，删除这个用户的订购记录
create trigger tr1
on users
for delete
as
begin
 if exists(select username from deleted)
 begin
  delete from orders where username=(select username from deleted)
  end
  else
  print'不存在这个用户的信息'
  end
  delete from users where username='小一'
  select *from orders 
 --当更新一个书籍的isbn的同时，更新这个书籍的库存的信息
 create trigger tr2
 on books
 for update
 as
 begin
  if exists (select isbn from deleted)
  begin
  update stock
  set isbn=(select isbn from inserted)
  where isbn=(select isbn from deleted)
  end
  else
  print'没有该书籍的库存记录'
  end
  
  update books 
  set isbn='9787559430000'
  where isbn='9787559431080'
  select *from stock 
  where isbn='9787559430000'
 
--当输入某个书籍库存数量时,其库存数量自动加5本
create trigger tr3
on stock
for insert
as
declare @stock_qty varchar(10),@isbn varchar(20)
if exists (select stock_qty,isbn
 from inserted)
begin
set @stock_qty =@stock_qty +5
update stock set stock_qty =@stock_qty where stock_qty =@stock_qty and isbn=@isbn 
end

insert into stock
values('9787559431080','456','2020-1-1')
go
