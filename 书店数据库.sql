--���ݿ�
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
 --�û���
 Create  table  users                        
(username varchar(20) not null ,                   
phone char(15) null,
address char(100) null,                 
true_name char(20)not null,
)  
use sx
drop table users
--¼���û���
insert into users
values('Сһ','18600005421','����ʡ������','��һ')
go
insert into users
values('С��','18600005422','����ʡ��ɽ��','���')
go
insert into users
values('С��','18600005423','������ʡ������','����')
go
insert into users
values('С��','18600005424','����ʡ������','��С��')
go
insert into users
values('С��','15600005425','����ʡ������','��С��')
go
insert into users
values('С��','15600005426','������','Ф��')
go
insert into users
values('С��','18600005427','������','����')
go
insert into users
values('С��','18600005428','������','��С��')
go
insert into users
values('С��','18600005429','����ʡ��ɽ��','��С��')
go
insert into users
values('Сʮ','18600005420','�Ĵ�ʡ�ɶ�','��ʮ')
go
insert into users
values('С��','18600005430','����ʡ��ɳ��','����')
go
insert into users
values('С��','18600005440','����ʡ��ɳ��','��С��')
go
select*from users
--�鼮��
create table books
(isbn varchar(20) not null,
book_id char(5) not null primary key, 
bname varchar(50) not null,
bpress varchar(50) not null,
bprice decimal(4,2) null,
bauthor varchar(30) not null,
)
drop table books
--¼���鼮��
insert into books
values('9787559431080','001','ʮ�������Ϸ','���շ�����ճ�����','79.80','ī���Ǳ�')
go
insert into books
values('9787519036485','002','һ��С��ݮ','����������','56.00','���˼')
go
insert into books
values('9787550021143','003','�����ҵ�Сȷ��','�ٻ������ճ�����','49.80','��������')
go
insert into books
values('9787550022898','004','С�Ϸ�','�ٻ������ճ�����','32.00','����')
go
insert into books
values('9787510845062','005','������ô����ֻϲ����','�й����������','39.80','��')
go
insert into books
values('9787550014633','006','ֻ�����úõ�','�ٻ������ճ�����','29.80','��������')
go
insert into books
values('9787550214224','007','���øպ�','�������ϳ��湫˾','52.00','���¸�')
go
insert into books
values('9787514374315','008','������ܷ�����Ҫ�ܿɰ�','�ִ�������','39.80','������')
go
insert into books
values('9787544270878','009','�����ӻ���','�Ϻ����湫˾','39.50','��Ұ����')
go
insert into books
values('9787559436696','010','�������� ����ɰ�','���շ�����ճ�����','45.00','������')
go
insert into books
values('9787511377470','011','֪��֪��Ӧ���̷ʺ���','�й����ȳ�����','42.00','��')
go
insert into books
values('9787559640246','012','Ц��','�������ϳ��湫˾','49.80','�')
go
insert into books
values('97875500073140','013','һ��һ�����˹�','�ٻ������ճ�����','29.80','ī���Ǳ�')
go
select*from books
--������
create table orders
(username varchar(20) not null primary key,  
order_id char(19) not null,
quantity int not null,
book_id char(6) not null ,
odate datetime null,
)
drop table orders
--¼�붩����
insert into orders
values('Сһ','1073343266100674590','34','012','2020-7-2')
go
insert into orders
values('С��','1053048451328674590','10','008','2020-6-1')
go
insert into orders
values('С��','1049797856412674590','1','012','2020-6-6')
go
insert into orders
values('С��','1037730978722674590','33','007','2020-6-1')
go
insert into orders
values('С��','1037588609787674590','60','009','2019-6-1')
go
insert into orders
values('С��','1032632343903674590','130','001','2019-7-15')
go
insert into orders
values('С��','1012315585173674590','3','002','2020-7-1')
go
insert into orders
values('С��','1006771330340674590','1','011','2020-5-6')
go
insert into orders
values('С��','993006113669674590','1','003','2020-5-7')
go
insert into orders
values('Сʮ','993064163193674590','1','004','2019-5-6')
go
select*from orders 
--����
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
--�û����Ա�
create table leavewords
(username varchar(20) not null,
atype varchar(10) null,
re_status varchar(10),
)
drop table leavewords 
insert into leavewords
values('Сһ','����','�ѻظ�')
go
insert into leavewords
values('С��','����','�ѻظ�')
go
insert into leavewords
values('С��','����','δ�ظ�')
go
insert into leavewords
values('С��','����','�ѻظ�')
go
select*from leavewords
--����Ա��
create table administrators
(admin_id int not null,
username varchar(20) not null,
adminname varchar(20) not null,
)
insert into administrators 
values('201911121','С��','����')
go
insert into administrators 
values('201911120','С��','��С��')
go
select*from administrators 
--��������
create table shippedfrom
(ship_id char(10) not null,
ship_date datetime null,
ship_man varchar(20) not null, 
)
drop table shipped 
insert into shipped 
values('01','2020-7-3','С��')
go
insert into shipped 
values('02','2020-6-3','С��')
go
insert into shipped 
values('03','2020-6-7','С��')
go
insert into shipped 
values('04','2020-6-4','С��')
go
insert into shipped 
values('05','2019-6-2','С��')
go
insert into shipped 
values('06','2019-7-16','С��')
go
insert into shipped 
values('07','2020-7-4','С��')
go
insert into shipped 
values('08','2020-5-8','С��')
go
insert into shipped 
values('09','2020-5-8','С��')
go
insert into shipped 
values('10','2020-5-8','С��')
go
select*from shipped 
--��ѯ
--(1)��ѯ�鼮���аٻ������ճ�������鼮��Ϣ
select*
from books 
where bpress='�ٻ������ճ�����'
--(2)��ѯ�û�������ʵ�������ӵ��û���Ϣ
select*
from users 
where true_name like '��%'
--(3)��ѯ����Ϊī���Ǳ����ɰٻ������ճ����������鼮
select *
from books 
where bauthor ='ī���Ǳ�' and bpress ='�ٻ������ճ�����'
--(4)��ѯ�������ж���������30��50֮��Ķ�����Ϣ
select*
from orders 
where quantity >=30 and quantity <=50
--(5)��ѯ�鼮�����鼮ƽ���۸�
select AVG(bprice)
from books 
--(6)��ѯ�����������Ķ�����Ϣ
select top 1 *
from orders 
order by quantity desc
--(7)��ѯ�����������100���鼮����
select bauthor 
from books join stock   
on books.isbn =stock.isbn 
where stock_qty <100
--(1)����Сһ������״̬Ϊδ�ظ�
update leavewords 
set re_status ='δ�ظ�'
where username ='Сһ'
--(2)���ķ���������01�ŵķ���ʱ��Ϊ2020-7-4
update shipped 
set ship_date ='2020-7-4'
where ship_id ='01'
--ɾ��������������һ�ٵĶ�����Ϣ
delete from orders 
where quantity <50

--��ͼ1��users���д�����ѯ�û���ΪС�����Ϣ����ͼ
create view v1
as
select*from users
where username='С��'
go
select *from v1
--2������ѯ�۸���͵����������Ϣ
create view v2 
as
select top 3 *
from books
order by bprice  asc
go
select*from v2
drop view v3
--3��ѯ�������ӵ��û��Ķ�����Ϣ,��������û����������������������ڡ��鼮���
create view v3
as
select users.username,quantity ,book_id ,odate 
from users join orders 
        on(users.username=orders.username)
where true_name like '��%'
select*from v3 
--�洢���� ���ݹ���Ա������û�������ѯ�û������ж�����Ϣ�����û�и��û���Ϣ������ʾ���޸��û���Ϣ��
create proc p1
@username varchar(20)
as
begin
    if exists(select * from orders where username=@username)
           select * from orders where username=@username
    else
       print '�޸��û���Ϣ��'  
end

exec p1 'Сһ'
--�����鼮��ISBN������ISBN����Ӧ���鼮�Ƿ�Ǽǿ�棬����Ǽǣ���ʾ���鼮�Ŀ����Ϣ����������ڣ�����ϵͳ¼����鼮�Ŀ����Ϣ
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
--������
--��ɾ��һ���û���Ϣ��ͬʱ��ɾ������û��Ķ�����¼
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
  print'����������û�����Ϣ'
  end
  delete from users where username='Сһ'
  select *from orders 
 --������һ���鼮��isbn��ͬʱ����������鼮�Ŀ�����Ϣ
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
  print'û�и��鼮�Ŀ���¼'
  end
  
  update books 
  set isbn='9787559430000'
  where isbn='9787559431080'
  select *from stock 
  where isbn='9787559430000'
 
--������ĳ���鼮�������ʱ,���������Զ���5��
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
