create table customer_address (
address_id number primary key not null
line_1 varchar(50) not null
line_2 varchar(50)
city varchar(50) not null
state varchar(50) not null
zipcode varchar(15) not null
type varchar (15) not null
customer_id number not null 

CONSTRAINT check_type
CHECK (type in ("Home", "Work"))
  
CONSTRAINT fk_cust_id 
foreign key (customer_id)
references customer(customer_id)
);

create table bike (
bike_id number primary key not null
status varchar (8)
last_service date 
commission_date date
service_by varchar(25) 
bike_no unique not null  
total_distance number not null


CONSTRAINT check_status
CHECK (status in ("Active", "Inactive"))
);

create table maintenance (
maintenance_id number primary key
summary varchar(100)
date_of_maintenance date
bike_id number not null
serviced by varchar(25)
complete_date 
maintenance_cost number

CONSTRAINT fk_bike_id 
foreign key (bike_id)
references bike(bike_id)
);

create table feedback(
feedback_id primary key not null
review varchar (100)
star number 
customer_id
trans_id 

CONSTRAINT check_star
CHECK (star in ("1", "2", "3", "4", "5"))

CONSTRAINT fk_customer_id 
foreign key (customer_id)
references customer(customer_id)

CONSTRAINT fk_trans_id 
foreign key (trans_id)
references ride_transaction(trans_id)
);

create table payment (
payment_id primary key not null
payment_date date
payment_type varchar(6)
payment_trans_id number   
discount_id number

CONSTRAINT fk_payment_trans_id 
foreign key (payment_trans_id)
references ride_transaction(trans_id)

CONSTRAINT fk_discount_id 
foreign key (discount_id)
references discount(discount_id)
);











