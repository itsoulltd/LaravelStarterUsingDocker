CREATE TABLE IF NOT EXISTS Passenger
 (
 id int auto_increment primary key,
 name varchar(1024) null,
 age  int default '18' null,
 sex varchar(12) null,
 constraint Passenger_id_uindex unique (id)
 );

--
-- Dumping data for table `Passenger`
--

INSERT INTO `Passenger` (`name`, `age`, `sex`)
VALUES
('towhid',37,'male')
,('sohana',28,'female')
,('tanvir',31,'male')
,('Tanvirul Islam',26,'male')
,('tanvir Islam',32,'male')
,('Akib Hassan',31,'male')
,('Sohana 2',29,'female')
,('Sohana Islam Khan',28,'female')
,('Jahab Ali',28,'male')
,('tanvir Islam',29,'male')
,('Tusin',15,NULL)
,('Tanvir',18,NULL);

CREATE TABLE IF NOT EXISTS Person
(
  uuid       varchar(512) not null primary key,
  name       varchar(512) null,
  age        int          null,
  active     tinyint(1)   null,
  salary     double       null,
  dob        datetime     null,
  height     float        null,
  createDate timestamp    null,
  dobDate    date         null,
  createTime time         null
);

--
-- Dumping data for table `Person`
--

INSERT INTO
`Person` (`uuid`, `name`, `age`, `active`, `salary`, `dob`, `height`, `createDate`, `dobDate`, `createTime`)
VALUES
('40accccf-996c-4530-aea0-8c13b364f92c','Sohana',28,0,200,'2018-11-07 00:00:00',NULL,'2010-06-21 15:01:01','2010-06-21','21:01:01')
,('482a8497-a5a6-4320-a9fd-b1287b0122d1#2','sohana',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL)
,('71f7874e-e6af-4e8c-b443-69d4fa4ff3bf','Towhid',34,0,200,'2018-11-10 00:00:00',NULL,'2010-06-21 15:01:01','2010-06-21','21:01:01')
,('809f6133-9fcd-4598-bb79-1c2289a227d6','Tusin',18,0,200,'2018-11-07 00:00:00',NULL,'2010-06-21 15:01:01','2010-06-21','21:01:01');

-- Dump completed on 2018-11-10 11:13:48