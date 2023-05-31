-- PL/SQL
-- Variable declaration and print value
set serveroutput on
declare 
Customer_id Customer.customer_id%type;
First_name Customer.first_name%type;

begin
select customer_id,first_name into Customer_id,
First_name from Customer where customer_id=1004;
dbms_output.put_line('CUSTOMER ID : '||Customer_id||
 ' FIRST NAME : '||First_name);
end;
/

-- Insert and set default value
set serveroutput on
declare 
Product_id Products.product_id%type:=4011;
Restaurent_id Products.rs_id%type:=3005;
Product_name Products.product_name%type:='Bhel Puri';
Price Products.price%type:=120;

begin
insert into Products values(Product_id,Restaurent_id,
Product_name,Price);
select * into Product_id,Restaurent_id,Product_name,
Price from Products where product_id=4011;
dbms_output.put_line('PRODUCT ID : '||Product_id||
' RESTAURENT ID : '||Restaurent_id||' PRODUCT NAME : 
'||Product_name||' PRICE : '||Price);
end;
/

-- Rowtype
set serveroutput on
declare 
Products_row Products%rowtype;

begin
select product_id,product_name,price into 
Products_row.product_id,Products_row.product_name,
Products_row.price from Products where product_id=4010;
dbms_output.put_line('PRODUCT ID : '||Products_row.product_id
||' PRODUCT NAME : '||Products_row.product_name);
end;
/

-- Cursor and row count
set serveroutput on
declare 
Product_id Products.product_id%type;
Restaurent_id Products.rs_id%type;
Product_name Products.product_name%type;
Price Products.price%type;
cursor products_cursor is select * from Products
where product_id<4006;

BEGIN
open products_cursor;
fetch products_cursor into Product_id,Restaurent_id,
Product_name,Price;
while products_cursor%found loop
dbms_output.put_line('PRODUCT ID: '||Product_id||
 ' RESTAURENT ID: '||Restaurent_id || ' PRODUCT NAME:
  ' ||Product_name|| ' PRICE: '||Price);
dbms_output.put_line('Row count: '|| products_cursor%rowcount);
fetch products_cursor into Product_id,Restaurent_id,
Product_name,Price;
end loop;
close products_cursor;
end;
/

-- For and While loop
set serveroutput on
declare 
  counter number;
  Username Customer.username%type;
  TYPE NAMEARRAY IS VARRAY(5) OF Customer.username%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
  
begin
  counter:=1;
  for x in 1001..1005  
  loop
    select username into Username from Customer where customer_id=x;
    A_NAME.EXTEND();
    A_NAME(counter):=Username;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

-- ARRAY without extend() function
set serveroutput on
declare 
  counter number:=1;
  Username Customer.username%type;
  TYPE NAMEARRAY IS VARRAY(5) OF Customer.username%type; 
  A_NAME NAMEARRAY:=NAMEARRAY('name1','name2','name3');
  
begin
  counter:=1;
  for x in 1001..1003  
  loop
    select username into Username from Customer where customer_id=x;
    A_NAME(counter):=Username;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

-- If-else
set serveroutput on
declare 
  counter number:=1;
  Username Customer.username%type;
  TYPE NAMEARRAY IS VARRAY(5) OF Customer.username%type; 
  A_NAME NAMEARRAY:=NAMEARRAY('name1','name2','name3');
  
begin
  counter:=1;
  for x in 1001..1003  
  loop
    select username into Username from Customer where customer_id=x;
    if Username='zakaria'
    then
    dbms_output.put_line('Customer registered');
    elsif Username='abusaeed'
    THEN
    dbms_output.put_line('Customer not registered');
    else
    dbms_output.put_line('Registration error');
    end if;
  end loop;
end;


-- Procedure
CREATE OR REPLACE PROCEDURE proc2(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)

AS
t_show CHAR(30);

BEGIN
t_show := 'From procedure: ';
  SELECT username INTO var2 FROM Customer WHERE
   customer_id=1005;
  var3 := var1 + 1; 
  DBMS_OUTPUT.PUT_LINE(t_show|| ', Username is : '
  ||var2 || ', Var1 is : ' || var1);
END;
/

set serveroutput on
declare 
Customer_id Customer.customer_id%type:=1004;
Username Customer.username%type;
extra number;

begin
proc2(Customer_id,Username,extra);
end;
/

-- Function
set serveroutput on
create or replace function fun(var1 in varchar) 
return varchar AS
value Customer.username%type;

begin
  select username into value from Customer where 
  customer_id=var1; 
   return value;
end;
/

set serveroutput on
declare 
value varchar(20);

begin
value:=fun(1007);
dbms_output.put_line(value);
end;
/