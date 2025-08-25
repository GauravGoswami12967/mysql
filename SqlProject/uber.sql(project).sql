create database uber;
use uber;

create table drivers
(
driverID int primary key,
driverName varchar(20),
driverContactNo varchar(20),
vehicleType varchar(20),
passangercount varchar(20),
vehicleNumber varchar(20),
driverStatus varchar(20),
timeOfArrival varchar(20),
tripStatus varchar(20),
price int not null
)
;

create table passenger
(
passengerID int primary key ,
passengerName varchar(20),
passengerContactNo varchar(20),
pickupLocation varchar(20),
droplocation varchar(20),
paymentType varchar(20) not null,
paymentStatus varchar(20),
driverID int,
foreign key (driverID) references drivers(driverID)
)
;

delimiter //
create trigger psgcountnew1 before insert on drivers for each row 
begin
set new.passangercount=
case
when new.vehicleType="moto"then "1 passenger"
when new.vehicleType="auto"then "3 passenger"
when new.vehicleType="ubergo" or  new.vehicleType="premier" then "4 passenger"
when new.vehicleType="uberXL"then "6 passenger"
else "vehical not found"
end;
end //
delimiter ;

select * from drivers where driverStatus="available";
select driverName,passengerName,pickupLocation,droplocation,drivercontactno,vehicleType,passangercount,driverStatus,price from drivers inner join passenger on drivers.driverID=passenger.driverID;

