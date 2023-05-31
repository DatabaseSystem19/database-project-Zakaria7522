insert into Customer values (1001,'Zakaria','Hossain','zakaria','zakahossain22@gmail.com',
				'01735828548','xakjfd');
insert into Customer values (1002,'Abu','Saeed','abusaeed','abusaeed@gmail.com',
				'01725628626','jbvksj');
insert into Customer values (1003,'Atique','Faisal','atique','atique@gmail.com',
				'01783832832','mvlxkmf');
insert into Customer values (1004,'Naimur','Rahaman','naimur','naimur@gmail.com',
				'01984323894','jfjlkf'); 
insert into Customer values (1005,'Asadullah','Galib','galib','galib@gmail.com',
				'01642394789','jhdjfh');
insert into Customer values (1006,'Tamim','Hossain','tamim','tamim@gmail.com',
				'01829834792','dksjff');
insert into Customer values (1007,'Habibur','Rahaman','habib','habib@gmail.com',
				'01829834782','jdjske');
insert into Customer values (1008,'Zobayer','Abedin','zobayer','zobayer@gmail.com',
				'01829834726','sdjfds');
insert into Customer values (1009,'Fahim','Abrar','wasi','wasi@gmail.com',
				'01828234792','fdsfgs');
insert into Customer values (1010,'Naiyem','Islam','naiyem','naiyem@gmail.com',
				'01829294792','dk1cff');	


insert into  Reservation values (2001,1002,101,TO_DATE ('2023/03/12','yyyy/mm/dd'),
					TO_DATE ('2023/03/13','yyyy/mm/dd'));
insert into  Reservation values (2002,1003,102,TO_DATE ('2023/03/14','yyyy/mm/dd'),
					TO_DATE ('2023/03/15','yyyy/mm/dd'));
insert into  Reservation values (2003,1004,105,TO_DATE ('2023/03/16','yyyy/mm/dd'),
					TO_DATE ('2023/03/17','yyyy/mm/dd'));
insert into  Reservation values (2004,1006,107,TO_DATE ('2023/03/18','yyyy/mm/dd'),
					TO_DATE ('2023/03/19','yyyy/mm/dd'));
insert into  Reservation values (2005,1002,101,TO_DATE ('2023/03/20','yyyy/mm/dd'),
					TO_DATE ('2023/03/21','yyyy/mm/dd'));
insert into  Reservation values (2006,1003,102,TO_DATE ('2023/03/12','yyyy/mm/dd'),
					TO_DATE ('2023/03/13','yyyy/mm/dd'));
insert into  Reservation values (2007,1004,105,TO_DATE ('2023/03/14','yyyy/mm/dd'),
					TO_DATE ('2023/03/18','yyyy/mm/dd'));
insert into  Reservation values (2008,1006,107,TO_DATE ('2023/03/28','yyyy/mm/dd'),
					TO_DATE ('2023/03/30','yyyy/mm/dd'));
insert into  Reservation values (2009,1002,109,TO_DATE ('2023/03/13','yyyy/mm/dd'),
					TO_DATE ('2023/03/17','yyyy/mm/dd'));
insert into  Reservation values (2010,1002,104,TO_DATE ('2023/03/19','yyyy/mm/dd'),
					TO_DATE ('2023/03/20','yyyy/mm/dd'));	


insert into Restaurent values (3001,'The Garden Kitchen', 'garden@gmail.com','01848938463','www.gardenkitchen.com');
insert into Restaurent values (3002,'Latest Recipe', 'latestrecipe@gmail.com','01883004802','www.latestrecipe.com');
insert into Restaurent values (3003,'Glazed','glazed@gmail.com','01842394935','www.glazed.com');
insert into Restaurent values (3004,'Prego', 'prego@gmail.com','01584348963','www.prego.com');
insert into Restaurent values (3005,'Crème De La Crème Cafe', 'creme@gmail.com','01894138463','www.cremede.com');
insert into Restaurent values (3006,'Pizza Hut', 'pizzahut@gmail.com','01889184802','www.pizzahut.com');
insert into Restaurent values (3007,'Summerfields by Sarina','sarina@gmail.com','01842399245','www.sarina.com');
insert into Restaurent values (3008,'Hazir Biriani', 'hazi@gmail.com','01584319963','www.hazirbiriyani.com');
insert into Restaurent values (3009,'The White Canary Cafe','canary@gmail.com','01842124935','www.canary.com');
insert into Restaurent values (3010,'Latitude 23', 'latitude@gmail.com','01581748963','www.latitude.com');


insert into Products values (4001,3001,'Kacchi Biriyani',350);
insert into Products values (4002,3002,'Beef Kala Bhuna',220);
insert into Products values (4003,3003,'Sheek Kebab with Naan',270);
insert into Products values (4004,3004,'Falooda',250);
insert into Products values (4005,3001,'Tehari',350);
insert into Products values (4006,3002,'Fuchka',120);
insert into Products values (4007,3003,'Chowmein',140);
insert into Products values (4008,3004,'Lassi',80);
insert into Products values (4009,3007,'Pizza',220);
insert into Products values (4010,3008,'Burger',150);


insert into Orderss values (5001,1001,4001,'Kacchi Biriyani',5);
insert into Orderss values (5002,1002,4002,'Beef Kala Bhuna',6);
insert into Orderss values (5003,1003,4003,'Sheek Kebab with Naan',12);
insert into Orderss values (5004,1004,4004,'Kacchi Biriyani',7);
insert into Orderss values (5005,1001,4006,'Fuchka',5);
insert into Orderss values (5006,1002,4007,'Chowmein',6); 
insert into Orderss values (5007,1003,4009,'Pizza',12);
insert into Orderss values (5008,1004,4008,'Lassi',7);
insert into Orderss values (5009,1005,4001,'Kacchi Biriyani',5);
insert into Orderss values (5010,1006,4002,'Beef Kala Bhuna',6);



insert into Bills values (6001,1001,'Kacchi Biriyani',5,1750);
insert into Bills values (6002,1002,'Beef Kala Bhuna',6,1320);
insert into Bills values (6003,1003,'Sheek Kebab with Naan',12,3240);
insert into Bills values (6004,1004,'Kacchi Biriyani',7,2450);
insert into Bills values (6005,1001,'Fuchka',5,600);
insert into Bills values (6006,1002,'Chowmein',6,840);
insert into Bills values (6007,1003,'Pizza',12,2640);
insert into Bills values (6008,1004,'Lassi',7,560);
insert into Bills values (6009,1005,'Kacchi Biriyani',5,1750);
insert into Bills values (60010,1006,'Beef Kala Bhuna',6,1320);