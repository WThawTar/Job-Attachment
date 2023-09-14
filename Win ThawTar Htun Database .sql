Create database Kyles_Bakery_database;


Create table Customer
(Customer_ID varchar (15) Not Null,
Customer_Name varchar (80) Not Null,
Customer_Address varchar (100) Not Null,
Customer_Email varchar (50) Not Null,
Customer_Phone varchar (20) Not Null,
Primary key(Customer_ID));

Desc Customer;




Create table Employee_Type
(Employee_Type_ID int Not Null,
Employee_Type varchar (50) Not Null,
Employee_Type_Salary int Not Null,
Primary key(Employee_Type_ID));

Desc Employee_Type;



Create table Employee
(Employee_ID varchar (30)  Not Null,
Employee_Type_ID int Not Null,
Employee_Name varchar (70) Not Null,
Employee_Address varchar (150) Not Null,
Primary key(Employee_ID),
Foreign key(Employee_Type_ID) references Employee_Type(Employee_Type_ID));

Desc Employee;




Create table Payment
(Payment_Type_ID varchar (20) Not Null,
Payment_Type varchar (20) Not Null,
Primary key(Payment_Type_ID));

Desc Payment;





Create table Ingredients
(Ingredients_ID varchar (25) Not Null,
Ingredients_Description varchar (100) Not Null,
Ingredients_Qty varchar (30) Not Null,
Primary key(Ingredients_ID));

Desc Ingredients;





Create table order_tbl
(Order_ID varchar (10) Not Null,
Customer_ID varchar (15) Not Null,
Employee_ID varchar (30) Not Null,
Payment_Type_ID varchar (20) Not Null,
Order_Date date Not Null,
Primary key(Order_ID),
Foreign key(Customer_ID) references Customer(Customer_ID),
Foreign key(Employee_ID) references Employee(Employee_ID),
Foreign key(Payment_Type_ID) references Payment(Payment_Type_ID));

Desc order_tbl;




Create table Delivery
(Delivery_Code varchar (20) Not Null,
Order_ID varchar (20) Not Null,
Delivery_Order varchar (65) Not Null,
Delivery_Address varchar (90) Not Null,
Primary key(Delivery_Code),
Foreign key(Order_ID) references order_tbl(Order_ID));

Desc Delivery;



Create table Bakery_Product_Type
(Bakery_Product_Type_ID varchar (20) Not Null,
Bakery_Product_Type varchar (30) Not Null,
Primary key(Bakery_Product_Type_ID));

Desc Bakery_Product_Type;





Create table Bakery_Product
(Bakery_Product_ID varchar (20) Not Null,
Bakery_Product_Type_ID varchar (10) Not Null,
Bakery_Name varchar (40) Not Null,
Bakery_Expire_Date date Not Null,
Bakery_Product_Price int Not Null,
Primary key(Bakery_Product_ID),
Foreign key(Bakery_Product_Type_ID) references Bakery_Product_Type(Bakery_Product_Type_ID));

Desc Bakery_Product;



Create table Product_Ingredients
(Bakery_Product_ID varchar (20) Not Null,
Ingredients_ID varchar (25) Not Null,
Primary key(Bakery_Product_ID,Ingredients_ID),
Foreign key(Bakery_Product_ID) references Bakery_Product(Bakery_Product_ID),
Foreign key(Ingredients_ID) references Ingredients(Ingredients_ID));

Desc Product_Ingredients;



Create table Order_Bakery
(Bakery_Product_ID varchar (20) Not Null,
Order_ID varchar (25) Not Null,
Order_Qty int Not Null,
Primary key(Bakery_Product_ID,Order_ID),
Foreign key(Bakery_Product_ID) references Bakery_Product(Bakery_Product_ID));

Desc Order_Bakery;





Insert into Customer values 
('C0109','John Marcus','Davilia 191 Palson','Marcus219@gmail.com','+95 178653287'),
('C0110','Cedon Midth','Cilivana 221 Dyson','Cilivana211@gmail.com','+95 178795391'),
('C0111','May Sign','121 Cilison Midth','MaySignn@gmail.com','+95 867345690'),
('C0112','Abrila Payson','South 101 Midth','AbrilaPP@gmail.com','+95 568545671'),
('C0113','Christian M','Sidney Bordes Mildosn','CMChris@gmail.com','+95 119878903');

Select * from  Customer;





Insert into Employee_Type values
(502,'Bread Baker',70),
(503,'Sale Person',50),
(504,'Dough Maker',80),
(505,'Pastry Chefs',150),
(506,'Waiter',30);

Select * from Employee_Type;



Insert into Employee values
('1E080',502,'W Wiston','Orando Mile Cast 111'),
('1E081',503,'J Smith','74th builing of Mile West'),
('1E082',504,'Lanae Mail','Street of Calson'),
('1E083',505,'Jone Lane','121 Building Morse'),
('1E084',506,'CL Marine','JE 151 Spate Building');

Select * from Employee;





Insert into Payment values
('00191','Cash on Delivery'),
('00192','On Bank'),
('00193','Cash on Delivery'),
('00194','On Bank'),
('00195','Cash on Delivery');

Select * from Payment;



Insert into Ingredients values
('2C192','Pepperoni, Cheese, Bacon,Tomato','100g'),
('2C193','Milk, Eggs, Vanilla, Butter','20g'),
('2C194','Flour, Raspberry, Nuts','10g'),
('2C195','Strawberry, MilkCream, Strawberry fruits','50g'),
('2C196','MilkCream, Cheese, Nuts','60g');

Select * from Ingredients;



Insert into order_tbl values
('A0191','C0109','1E080','00191','2021-7-18'),
('A0192','C0110','1E081','00192','2021-7-18'),
('A0193','C0111','1E082','00193','2021-7-19'),
('A0194','C0112','1E083','00194','2021-7-19'),
('A0195','C0112','1E084','00195','2021-7-19');

Select * from order_tbl;




Insert into Delivery values
('DC501','A0191','Croissant','467 West Lalar Ave'),
('DC502','A0192','Ecliar','Cilivana 221 Dyson'),
('DC503','A0193','Strawberry Cake','Sidney Bordes Mildosn'),
('DC504','A0194','Cheesy Pizza','411 Easr Mayor Aye'),
('DC505','A0195','Pizza','121 Cilison Midth');

Select * from Delivery;





Insert into Bakery_Product_Type values
('P1015','Italian Bread'),
('P1016','French Pastries'),
('P1017','American Muffin'),
('P1018','Australian Chiffon cake'),
('P1019','Australian Chiffon cake');

Select * from  Bakery_Product_Type;




Insert into Bakery_Product values
('B2310','P1015','Cheesy Pizza','2021-7-30',9),
('B2311','P1016','Ecliar','2021-7-23',3),
('B2312','P1017','Muffin ','2021-7-25',9),
('B2313','P1018','Strawberry Cake','2021-7-22',60),
('B2314','P1019','Cheese Cake','2021-7-23',60);

Select * from Bakery_Product;



Insert into Product_Ingredients values
('B2310','2C192'),
('B2311','2C193'),
('B2312','2C194'),
('B2313','2C195'),
('B2314','2C196');

Select * from Product_Ingredients;



Insert into Order_Bakery values
('B2310','A0191',1),
('B2311','A0192',3),
('B2312','A0193',2),
('B2313','A0194',7),
('B2314','A0195',2);

Select * from Order_Bakery;






-- Select Show the date of purchase along with price--
SELECT bp.Bakery_Name, o.order_date, bp.bakery_name , bp.Bakery_Product_Price
FROM bakery_product bp, order_bakery ob , order_tbl o
WHERE bp.Bakery_Product_ID=ob.Bakery_Product_ID
AND ob.order_ID=o.Order_ID;



-- Select employees with 'max' values in salary --
SELECT e.employee_id,MAX(et.Employee_Type_Salary)as 'Highest Salary'
FROM employee e, employee_type et
Where e.Employee_Type_ID=et.Employee_Type_ID
Group by et.employee_type_salary 
Order by et.Employee_Type_Salary desc;





desc employee_type;

select * from employee_type;

Update Employee_Type
Set Employee_Type_ID=502
Where Employee_Type_Salary=30;

Alter table employee_type
modify column Employee_Type_Salary int not null;


-- Select Customer who bought product bakery including 'Cake' --
Select bp.bakery_name, c.Customer_Name , o.Order_ID 
From customer c, order_tbl o, order_bakery ob, bakery_product bp
Where c.Customer_ID=o.Customer_ID
AND o.Order_ID=ob.Order_ID
AND ob.Bakery_Product_ID=bp.Bakery_Product_ID
AND bp.bakery_name like '%cake';             





-- Show list of heavy recipes in inventory along with bakery product--
Select bp.Bakery_Name,bpt.Bakery_Product_Type,i.Ingredients_Description,i.Ingredients_Qty
From order_tbl o, order_bakery ob, bakery_product bp,bakery_product_type bpt, product_ingredients pit, ingredients i
Where o.Order_ID=ob.Order_ID
AND ob.Bakery_Product_ID=bp.Bakery_Product_ID
AND bp.Bakery_Product_Type_ID=bpt.Bakery_Product_Type_ID
AND bp.Bakery_Product_ID=pit.Bakery_Product_ID
AND pit.Ingredients_ID=i.Ingredients_ID
Group by bp.bakery_product_id,i.Ingredients_Description,i.Ingredients_Qty
Having i.Ingredients_Qty >20;





-- Select Show Kyles Bakery Shop order sales price of each day along with payment and delivery details--
Select o.Order_Date,  p.Payment_Type,ob.Order_Qty, d.Delivery_Order,d.Delivery_Address, ob.Order_Qty*bp.Bakery_Product_Price AS 'Total Sale'
From customer c, order_tbl o,delivery d, payment p, order_bakery ob, bakery_product bp
Where c.Customer_ID=o.Customer_ID
AND o.Payment_Type_ID=p.Payment_Type_ID
AND o.Order_ID=d.Order_ID 
AND o.Order_ID=ob.Order_ID
AND ob.Bakery_Product_ID=bp.Bakery_Product_ID
Group by o.Order_ID,o.Order_Date,p.Payment_Type,d.Delivery_Order,d.Delivery_Address;






-- Show query of average price per ingredients in Kyles bakery shop--
Select pit.Ingredients_ID, i.Ingredients_Description, i.Ingredients_Qty , AVG(bp.Bakery_Product_Price) as 'Ingredients Price'
From bakery_product bp, bakery_product_type bpt, product_ingredients pit, ingredients i 
Where bpt.Bakery_Product_Type_ID=bp.Bakery_Product_Type_ID
AND bp.Bakery_Product_ID=pit.Bakery_Product_ID
AND pit.Ingredients_ID=i.Ingredients_ID
Group by i.Ingredients_ID,i.Ingredients_Description;




-- Show query  that will retrieve all bakery items that have not expired based on the order and expiry dates--
SELECT bp.Bakery_Name, bp.Bakery_Expire_Date ,o.Order_Date
FROM bakery_product bp,order_bakery ob, order_tbl o
WHERE bp.Bakery_Product_ID=ob.Bakery_Product_ID
AND ob.Order_ID=o.Order_ID
And  DATEDIFF(bp.Bakery_Expire_Date, o.Order_Date) >= 0;




-- Show list of Quantity of order below 4--
SELECT ob.Order_Qty, ob.Order_ID , pit.Ingredients_ID 
FROM order_bakery ob, bakery_product bp, product_ingredients pit 
Where ob.Bakery_Product_ID=bp.Bakery_Product_ID
AND bp.Bakery_Product_ID=pit.Bakery_Product_ID
HAVING ob.Order_Qty < 4;





-- Kyles Bakery Shop wants to know how many loyal customers purchase on bakery shop in desc order--

Select c.Customer_ID , c.Customer_Name ,COUNT(o.Order_ID) as 'No of Purchase'
From customer c, order_tbl o
Where c.Customer_ID=o.Customer_ID
Group by c.customer_ID
Order by COUNT(o.Order_ID)desc;




-- Show all records from order matching table from product--
SELECT o.Order_ID, o.Order_Date, bp.Bakery_Name, bp.Bakery_Product_Price
FROM order_tbl o, bakery_product bp
LEFT JOIN bakery_product 
ON bp.Bakery_Product_ID = bp.Bakery_Product_ID;











 
















