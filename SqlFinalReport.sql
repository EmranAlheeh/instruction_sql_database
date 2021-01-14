-- Schema for create tables 

CREATE TABLE Customer
(
    cus_ID CHAR(10),
    title VARCHAR(255),
    name VARCHAR(255),
    date_of_birth date,
    email VARCHAR(255),
    phone_num CHAR(10),
    driving_license VARCHAR(255),
    PRIMARY KEY (cus_ID)
);


CREATE TABLE Vehicle
(
    cus_ID CHAR(10),
    ins_ID CHAR(10),
    veh_ID CHAR(10),
    veh_model VARCHAR(255),
    year_of_manufacture VARCHAR(255),
    veh_type VARCHAR(255),
    status VARCHAR(255),
    gps_location VARCHAR(255),
    event VARCHAR(255),
    PRIMARY KEY (veh_ID),
    FOREIGN KEY (cus_ID ) REFERENCES customer,
);
CREATE TABLE InsurancePolicies
(
    cus_ID CHAR(10),
    ins_ID CHAR(10),
    veh_ID CHAR(10),
    Type_of_insurance VARCHAR(255),
    cost NUMERIC(8,2),
    start_date date,
    End_date date,
    num_driv char(5),
    excess VARCHAR(255)
        PRIMARY KEY (ins_ID),
    FOREIGN KEY (cus_ID ) REFERENCES customer,
    FOREIGN KEY (veh_ID ) REFERENCES Vehicle
);






CREATE TABLE DailyScore
(
    Score_id int,
    veh_ID CHAR(10),
    speed_score NUMERIC(8,2),
    breaking_score NUMERIC(8,2),
    night_driving_score NUMERIC(8,2),
    day date,
    PRIMARY KEY (score_ID),
    FOREIGN KEY (veh_ID ) REFERENCES Vehicle,
);


CREATE TABLE Trip
(
    Trip_id int,
    veh_ID CHAR(10),
    date_of_trip DATE,
    start_location VARCHAR(255),
    end_location VARCHAR(255),
    time_travelled TIME,
    distance_travelled NUMERIC(8,2)
        PRIMARY KEY (trip_ID),

    FOREIGN KEY (veh_ID ) REFERENCES vehicle,
);



CREATE TABLE SpeedEvents
(
    Speed_event_id int,
    veh_ID CHAR(10),
    StreetName VARCHAR(255),
    Date_Time datetime,
    SpeedLimit NUMERIC(8,2),
    actualSpeed NUMERIC(8,2),

    FOREIGN KEY (veh_ID ) REFERENCES vehicle,
);




-- Inserting the records  

-- insert records for customer table

INSERT INTO Customer
VALUES
    ('2222', 'mr', 'Feras Bannoura', '2000-8-15', '201801451@bethlehem.edu', '0592622745', 'manual gear ');
INSERT INTO Customer
VALUES
    ('3333', 'ms', 'Marah Jabr', '2000-8-15', '201801662@bethlehem.edu', '0592622761', 'automatic ');
INSERT INTO Customer
VALUES
    ('4444', 'mr', 'Imran Al-heeh', '2000-1-15', '201701628@bethlehem.edu', '0592493011', 'manual gear ');
INSERT INTO Customer
VALUES
    ('5555', 'mr', 'MohamadSharaf', '2000-10-15', '201402246@bethlehem.edu', '0592623001', 'manual gear ');
INSERT INTO Customer
VALUES
    ('1111', 'mr', 'Mahmoud Ayash', '2000-10-15', '201801146@bethlehem.edu', '0592623001', 'manual gear ');
INSERT INTO Customer
VALUES
    ('6666', 'mr', 'Noor Heeh', '1999-11-15', '201701146@bethlehem.edu', '0592623301', 'manual gear ');


-- insert records for Vehicle table


INSERT INTO Vehicle
-- insert Vehicle data  for customer Mahmoud Ayash 
VALUES
    ('1111', '1234', '1000', 'BMW', '2000 ', 'Truck' , 'on' , 'Beithlehem', 'accident');

INSERT INTO Vehicle
-- insert Vehicle data  for customer Feras 
VALUES
    ('2222', '2345', '2000', 'KIA', '2020 ', 'car' , 'on' , 'Beit Sahour' , 'Speed Event');

INSERT INTO Vehicle
-- insert Vehicle data  for customer Marah 
VALUES
    ('3333', '3456', '3000', 'PoLo', '2000 ', 'car', 'on', 'Bethlehem', 'Speed Event');

INSERT INTO Vehicle
-- insert Vehicle data  for customer Imran 
VALUES
    ('4444', '4567', '4000', 'BMW', '2007 ', 'Truck' , 'on' , 'Hebron' , 'no event');

INSERT INTO Vehicle
-- insert Vehicle data  for customer MohamadSharaf 
VALUES
    ('5555', '5678', '5000', 'Mercides', '2005 ', 'car' , 'off' , 'Hebron', 'no event');

INSERT INTO Vehicle
-- insert Vehicle data  for customer Noor 
VALUES
    ('6666', '8901', '6000', 'Hounda', '2007 ', 'car' , 'on' , 'Hebron' , 'no event');

-- insert records for InsurancePolicies table

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer Mahmoud Ayash
VALUES
    ('1111', '1234', '1000' , 'Comprehensive', 7000, '2020-8-23', '2021-8-23', '1', null );

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer Feras
VALUES
    ('2222', '2345', '2000', 'Comprehensive', 1500, '2000-1-1', '2021-1-1 ', '2', null );

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer Marah
VALUES
    ('3333', '3456', '3000', 'Third party' , 1000, '2020-6-25', '2020-12-25', '3', null );

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer Emran
VALUES
    ('4444', '4567', '4000', 'Comprehensive' , 7000, '2020-12-1', '2021-12-1 ', '4', null );

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer MohamadSharaf
VALUES
    ('5555', '5678' , '5000', 'Comprehensive ' , 1500, '2020-8-15', '2021-8-15 ', '2', null );

INSERT INTO InsurancePolicies
-- insert InsurancePolicies data  for customer Noor
VALUES
    ('6666', '8910' , '6000', 'Comprehensive ' , 1500, '2020-4-15', '2021-4-15 ', '2', null );

-- insert records for DailyScore table

INSERT INTO DailyScore
-- insert DailyScore data  for customer Seif
VALUES
    ('1', '1000', 75, 78, 60 , '2020-12-15' );

INSERT INTO DailyScore
-- insert DailyScore data  for customer Feras
VALUES
    ('2', '2000', 25, 80, 60 , '2020-12-15' );
INSERT INTO DailyScore
VALUES
    ('3', '2000', 15, 78, 50 , '2020-12-17' );
INSERT INTO DailyScore
VALUES
    ('4', '2000', 12, 87, 90 , '2020-12-19' );

INSERT INTO DailyScore
-- insert DailyScore data  for customer Marah
VALUES
    ('5', '3000', 25, 78, 80 , '2020-12-15' );
INSERT INTO DailyScore
VALUES
    ('6', '3000', 15, 78, 85 , '2020-12-18' );
INSERT INTO DailyScore
VALUES
    ('7', '3000', 90, 78, 60 , '2020-12-19' );

-- insert DailyScore data  for customer Imran

INSERT INTO DailyScore
VALUES
    ('8', '4000', 95, 88, 80 , '2020-12-15' );
INSERT INTO DailyScore
VALUES
    ('9', '4000', 85, 88, 90 , '2020-12-19' );
INSERT INTO DailyScore
VALUES
    ('10', '4000', 25, 88, 80 , '2020-12-20' );


-- insert DailyScore data  for customer Noor
INSERT INTO DailyScore
VALUES
    ('13', '6000', 75, 88, 80 , '2020-12-20' );
INSERT INTO DailyScore
VALUES
    ('14', '6000', 75, 88, 80 , '2020-11-20' );



-- insert records for SpeedEvents table


-- insert SpeedEvents data  for customer Feras

INSERT INTO SpeedEvents
VALUES
  ('1', '2000', 'Al-amal street', '2020-12-15 11:30:30', 40 , 70);
INSERT INTO SpeedEvents
VALUES
  ('2', '2000', 'Bet Sahour street', '2020-12-17 13:30:30', 70 , 100);
INSERT INTO SpeedEvents
VALUES
  ('3', '2000', 'Alquds street', '2020-12-19 9:30:30', 50 , 70);
 
 -- insert SpeedEvents data  for customer Marah

INSERT INTO SpeedEvents
VALUES
  ('4', '3000', 'Alkader street', '2020-12-15 13:30:30', 40 , 60);
INSERT INTO SpeedEvents
VALUES
  ('5', '3000', 'Almadbasa street', '2020-12-19 12:20:30', 30 , 50);
 
 -- insert SpeedEvents data  for customer Imran

INSERT INTO SpeedEvents
VALUES
  ('6', '4000', 'Bet Sahour street', '2020-12-15 13:30:30', 70 , 100);
INSERT INTO SpeedEvents
VALUES
  ('7', '4000', ' school street', '2020-12-20 13:30:30', 70 , 100);
-- insert records for Trip table


-- insert Trip data  for customer Feras
INSERT INTO Trip
VALUES
    ('1', '2000', '2020-12-15', 'Bethlehem', 'Ramallah', '1:23' , 22);
INSERT INTO Trip
VALUES
    ('2', '2000', '2020-12-17', 'Beit Sahour', 'Nablus', '2:23' , 58);
INSERT INTO Trip
VALUES
    ('3', '2000', '2020-12-19', 'Bethlehem', 'Sourif', '1:45' , 30);

-- insert Trip data  for customer Marah

INSERT INTO Trip
VALUES
    ('4', '3000', '2020-12-15', 'Al-Khader', 'Bethlehem', '0:30' , 14);
INSERT INTO Trip
VALUES
    ('5', '3000', '2020-12-18', 'Al-Khader', 'Jericho', '1:30' , 33);
INSERT INTO Trip
VALUES
    ('6', '3000', '2020-12-19', 'Al-Khader', 'Hebron', '1:12' , 28);

-- insert Trip data  for customer Imran

INSERT INTO Trip
VALUES
    ('7', '4000', '2020-12-15', 'Sourif', 'Bethlehem', '1:14' , 34);
INSERT INTO Trip
VALUES
    ('8', '4000', '2020-12-19', 'Sourif', 'Ramallah', '2:10' , 45);
INSERT INTO Trip
VALUES
    ('9', '4000', '2020-12-20', 'Sourif', 'Jerousalem', '1:15' , 40);

-- insert Trip data  for customer Noor
INSERT INTO Trip
VALUES
    ('10', '6000', '2020-11-20', 'Sourif', 'Jerousalem', '1:15' , 40);
INSERT INTO Trip
VALUES
    ('11', '6000', '2020-12-20', 'Sourif', 'Jerousalem', '1:15' , 40);

--   Reporting query: 

-- Report 2.1 query : 

SELECT c.title, c.name, c.date_of_birth, InsurancePolicies.End_date, InsurancePolicies.cost , AVG(DailyScore.speed_score+DailyScore.breaking_score+DailyScore.night_driving_score)/3 As score
FROM Customer AS c INNER JOIN InsurancePolicies on c.cus_ID = InsurancePolicies.cus_ID
    INNER join Vehicle on c.cus_ID = Vehicle.cus_ID
    INNER join DailyScore on Vehicle.veh_ID = DailyScore.veh_ID
WHERE DailyScore.[day]  IN(
  SELECT MAX([day])
FROM DailyScore
WHERE DailyScore.veh_ID = Vehicle.veh_ID AND InsurancePolicies.End_date BETWEEN GETDATE() and DATEADD(MONTH,1,GETDATE()) 
)
GROUP BY c.title, c.name, c.date_of_birth,InsurancePolicies.End_date,InsurancePolicies.cost
ORDER BY InsurancePolicies.End_date;

-- Report 2.2 query : 
SELECT DISTINCT Customer.title, Customer.name, Vehicle.veh_ID, SpeedEvents.Date_Time, SpeedEvents.SpeedLimit, SpeedEvents.actualSpeed
FROM Customer
    INNER JOIN Vehicle on Customer.cus_ID = Vehicle.cus_ID
    INNER JOIN SpeedEvents on Vehicle.veh_ID = SpeedEvents.veh_ID
    INNER join DailyScore on Vehicle.veh_ID = DailyScore.veh_ID
WHERE DailyScore.speed_score < 30
GROUP BY Customer.title, Customer.name , Vehicle.veh_ID , SpeedEvents.Date_Time ,SpeedEvents.SpeedLimit,SpeedEvents.actualSpeed
HAVING COUNT(DailyScore.speed_score) > 1

-- Report 2.3 query : 
WITH
    dailyScoreAvg
    AS

    (
        SELECT veh_ID, (DATENAME(mm, [day]) + ' ' + DATENAME(yy, [day])) As Month, AVG((speed_score+breaking_score+night_driving_score)/3) AS AvgScore
        From DailyScore
        GROUP by veh_ID ,(DATENAME(mm, day) + ' ' + DATENAME(yy, day))
    ) ,
    TripAvg
    As
    (
        SELECT veh_ID, COUNT(*)As NumberOfTrips , Sum(distance_travelled) As TotalTraveledDistance, (DATENAME(mm, [date_of_trip]) + ' ' + DATENAME(yy, [date_of_trip])) As Month, CONVERT(varchar(3),SUM(DATEDIFF( HOUR, '0:00:00', Trip.time_travelled))) + ':' + RIGHT('0' + CONVERT(varchar(2),SUM(DATEDIFF( mi, '0:00:00', Trip.time_travelled))%60),2) as timetotal
        from Trip
        GROUP BY Trip.veh_ID, (DATENAME(mm, [date_of_trip]) + ' ' + DATENAME(yy, [date_of_trip]))

    )
Select Customer.name, TripAvg.NumberOfTrips, TripAvg.TotalTraveledDistance, TripAvg.Month, TripAvg.timetotal , dailyScoreAvg.AvgScore
From TripAvg, dailyScoreAvg , Vehicle INNER JOIN Customer on Customer.cus_ID = Vehicle.cus_ID
    INNER JOIN InsurancePolicies on InsurancePolicies.veh_ID = Vehicle.veh_ID
WHERE TripAvg.veh_ID = Vehicle.veh_ID AND TripAvg.veh_ID = dailyScoreAvg.veh_ID AND TripAvg.Month = dailyScoreAvg.Month AND GETDATE() < InsurancePolicies.End_date




-- Report 2.4 query :

SELECT Customer.name , Customer.phone_num, Vehicle.[status]
FROM Customer INNER join Vehicle on Customer.cus_ID = Vehicle.cus_ID
WHERE  Vehicle.[status] ='off'

-- Report 2.5 query :

SELECT DISTINCT Customer.name, Customer.phone_num, Vehicle.veh_ID, DailyScore.[day],
    DailyScore.speed_score, DailyScore.breaking_score, DailyScore.night_driving_score,
    AVG(DailyScore.speed_score+DailyScore.breaking_score+DailyScore.night_driving_score)/3 As mainScore
FROM Customer
    INNER JOIN Vehicle on Customer.cus_ID = Vehicle.cus_ID
    INNER join DailyScore on Vehicle.veh_ID = DailyScore.veh_ID
WHERE  DailyScore.[day] >= DATEADD(MONTH,-2,GETDATE()) AND DailyScore.[day] < GETDATE() AND
    Customer.name NOT IN (
 SELECT Customer.name
    FROM Customer
        INNER JOIN Vehicle on Customer.cus_ID = Vehicle.cus_ID
        INNER join DailyScore on Vehicle.veh_ID = DailyScore.veh_ID
    GROUP BY Customer.phone_num, Customer.name , Vehicle.veh_ID, DailyScore.speed_score,DailyScore.breaking_score,DailyScore.night_driving_score,DailyScore.[day]
    HAVING ( AVG(DailyScore.speed_score+DailyScore.breaking_score+DailyScore.night_driving_score)/3) <70 

)
GROUP BY Customer.phone_num, Customer.name , Vehicle.veh_ID, DailyScore.speed_score,DailyScore.breaking_score,DailyScore.night_driving_score,DailyScore.[day]
HAVING ( AVG(DailyScore.speed_score+DailyScore.breaking_score+DailyScore.night_driving_score)/3) >70

