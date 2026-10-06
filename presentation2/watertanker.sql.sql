-- =====================================================
-- WATER TANKER BOOKING & DELIVERY MANAGEMENT SYSTEM
-- COMPLETE DATABASE SETUP
-- =====================================================

DROP DATABASE IF EXISTS water_tanker;
CREATE DATABASE water_tanker;
USE water_tanker;


-- =====================================================
-- 1. CUSTOMER
-- =====================================================

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO Customer (customer_id, name, phone, email) VALUES
(101,'Rahul Sharma','9876501001','rahul.sharma@gmail.com'),
(102,'Priya Reddy','9876501002','priya.reddy@gmail.com'),
(103,'Arjun Kumar','9876501003','arjun.kumar@gmail.com'),
(104,'Sneha Rao','9876501004','sneha.rao@gmail.com'),
(105,'Vikram Singh','9876501005','vikram.singh@gmail.com'),
(106,'Ananya Mehta','9876501006','ananya.mehta@gmail.com'),
(107,'Rohan Verma','9876501007','rohan.verma@gmail.com'),
(108,'Kavya Nair','9876501008','kavya.nair@gmail.com'),
(109,'Aditya Patel','9876501009','aditya.patel@gmail.com'),
(110,'Meera Iyer','9876501010','meera.iyer@gmail.com'),
(111,'Sanjay Rao','9876501011','sanjay.rao@gmail.com'),
(112,'Pooja Shah','9876501012','pooja.shah@gmail.com'),
(113,'Nikhil Reddy','9876501013','nikhil.reddy@gmail.com'),
(114,'Aisha Khan','9876501014','aisha.khan@gmail.com'),
(115,'Karan Malhotra','9876501015','karan.malhotra@gmail.com'),
(116,'Divya Joshi','9876501016','divya.joshi@gmail.com'),
(117,'Manish Gupta','9876501017','manish.gupta@gmail.com'),
(118,'Ishita Rao','9876501018','ishita.rao@gmail.com'),
(119,'Varun Das','9876501019','varun.das@gmail.com'),
(120,'Neha Kapoor','9876501020','neha.kapoor@gmail.com'),
(121,'Abhishek Jain','9876501021','abhishek.jain@gmail.com'),
(122,'Sana Ali','9876501022','sana.ali@gmail.com'),
(123,'Harish Kumar','9876501023','harish.kumar@gmail.com'),
(124,'Riya Banerjee','9876501024','riya.banerjee@gmail.com'),
(125,'Tarun Rao','9876501025','tarun.rao@gmail.com');


-- =====================================================
-- 2. ADDRESS
-- =====================================================

CREATE TABLE Address (
    address_id INT PRIMARY KEY,
    unit VARCHAR(150) NOT NULL,
    city VARCHAR(50) NOT NULL,
    postcode VARCHAR(10) NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Address (address_id, unit, city, postcode, customer_id) VALUES
(101,'House 12, MG Road','Hyderabad','500001',101),
(102,'Flat 204, Green Heights','Hyderabad','500032',102),
(103,'House 45, Banjara Hills','Hyderabad','500034',103),
(104,'Villa 8, Kondapur','Hyderabad','500084',104),
(105,'House 21, Kukatpally','Hyderabad','500072',105),
(106,'Flat 302, Lake View','Hyderabad','500081',106),
(107,'House 18, Madhapur','Hyderabad','500081',107),
(108,'Flat 110, Sunrise Towers','Hyderabad','500090',108),
(109,'House 67, Jubilee Hills','Hyderabad','500033',109),
(110,'Flat 405, Green Residency','Hyderabad','500016',110),
(111,'House 9, Begumpet','Hyderabad','500016',111),
(112,'Flat 601, Pearl Apartments','Hyderabad','500038',112),
(113,'House 33, Manikonda','Hyderabad','500089',113),
(114,'Flat 207, City Heights','Hyderabad','500018',114),
(115,'House 72, Gachibowli','Hyderabad','500032',115),
(116,'Flat 509, Metro Residency','Hyderabad','500084',116),
(117,'House 14, Miyapur','Hyderabad','500049',117),
(118,'Flat 302, Oak Towers','Hyderabad','500050',118),
(119,'House 41, Nallagandla','Hyderabad','500019',119),
(120,'Flat 803, Sky Residency','Hyderabad','500081',120),
(121,'House 25, Himayat Nagar','Hyderabad','500029',121),
(122,'Flat 104, Royal Enclave','Hyderabad','500060',122),
(123,'House 88, LB Nagar','Hyderabad','500074',123),
(124,'Flat 406, Urban Homes','Hyderabad','500072',124),
(125,'House 19, Uppal','Hyderabad','500039',125);


-- =====================================================
-- 3. WATER SOURCE
-- =====================================================

CREATE TABLE Water_Source (
    source_id INT PRIMARY KEY,
    source_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    type VARCHAR(30) NOT NULL
);

INSERT INTO Water_Source (source_id, source_name, location, type) VALUES
(101,'Gandipet Water Source','Gandipet','Reservoir'),
(102,'Himayat Sagar Source','Rajendranagar','Reservoir'),
(103,'Hussain Sagar Source','Tank Bund','Municipal'),
(104,'Kondapur Borewell','Kondapur','Borewell'),
(105,'Miyapur Water Plant','Miyapur','Municipal'),
(106,'Uppal Water Plant','Uppal','Municipal'),
(107,'Manikonda Borewell','Manikonda','Borewell'),
(108,'Kukatpally Source','Kukatpally','Municipal'),
(109,'Gachibowli Source','Gachibowli','Municipal'),
(110,'LB Nagar Borewell','LB Nagar','Borewell'),
(111,'Nanakramguda Source','Nanakramguda','Municipal'),
(112,'Begumpet Source','Begumpet','Municipal'),
(113,'Madhapur Source','Madhapur','Municipal'),
(114,'Jubilee Hills Source','Jubilee Hills','Municipal'),
(115,'Nallagandla Source','Nallagandla','Borewell'),
(116,'Kompally Source','Kompally','Reservoir'),
(117,'Secunderabad Source','Secunderabad','Municipal'),
(118,'Alwal Borewell','Alwal','Borewell'),
(119,'Sainikpuri Source','Sainikpuri','Municipal'),
(120,'Mehdipatnam Source','Mehdipatnam','Municipal'),
(121,'Tolichowki Source','Tolichowki','Borewell'),
(122,'Attapur Source','Attapur','Municipal'),
(123,'Chandanagar Source','Chandanagar','Municipal'),
(124,'Hafeezpet Source','Hafeezpet','Borewell'),
(125,'Bachupally Source','Bachupally','Reservoir');


-- =====================================================
-- 4. BOOKING
-- =====================================================

CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    booking_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    remarks VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

INSERT INTO Booking (booking_id, customer_id, booking_date, status, remarks) VALUES
(101,101,'2026-09-17','Confirmed','Morning delivery'),
(102,102,'2026-09-17','Confirmed','Apartment requirement'),
(103,103,'2026-09-18','Pending','Regular supply'),
(104,104,'2026-09-18','Confirmed','Villa requirement'),
(105,105,'2026-09-19','Pending','Weekend delivery'),
(106,106,'2026-09-19','Confirmed','Urgent requirement'),
(107,107,'2026-09-20','Completed','Monthly supply'),
(108,108,'2026-09-20','Cancelled','Customer cancelled'),
(109,109,'2026-09-21','Confirmed','Large quantity'),
(110,110,'2026-09-21','Pending','Morning requirement'),
(111,111,'2026-09-22','Confirmed','Regular booking'),
(112,112,'2026-09-22','Completed','Delivered successfully'),
(113,113,'2026-09-23','Confirmed','Apartment supply'),
(114,114,'2026-09-23','Pending','New customer'),
(115,115,'2026-09-24','Confirmed','Construction use'),
(116,116,'2026-09-24','Cancelled','Address issue'),
(117,117,'2026-09-25','Confirmed','Weekly requirement'),
(118,118,'2026-09-25','Completed','Delivered'),
(119,119,'2026-09-26','Pending','Regular supply'),
(120,120,'2026-09-26','Confirmed','High quantity'),
(121,121,'2026-09-27','Confirmed','Morning delivery'),
(122,122,'2026-09-27','Pending','Residential supply'),
(123,123,'2026-09-28','Completed','Delivered'),
(124,124,'2026-09-28','Confirmed','Apartment requirement'),
(125,125,'2026-09-29','Pending','Monthly booking');

-- =====================================================
-- 5. TANKER
-- =====================================================

CREATE TABLE Tanker (
    tanker_id INT PRIMARY KEY,
    tank_number VARCHAR(20) NOT NULL UNIQUE,
    capacity_liters INT NOT NULL,
    status VARCHAR(20) NOT NULL
);

INSERT INTO Tanker (tanker_id, tank_number, capacity_liters, status) VALUES
(101,'TNK-101',5000,'Available'),
(102,'TNK-102',6000,'Available'),
(103,'TNK-103',8000,'Available'),
(104,'TNK-104',10000,'Maintenance'),
(105,'TNK-105',12000,'Available'),
(106,'TNK-106',5000,'Available'),
(107,'TNK-107',7500,'Available'),
(108,'TNK-108',9000,'In Transit'),
(109,'TNK-109',10000,'Available'),
(110,'TNK-110',6000,'Available'),
(111,'TNK-111',8000,'Maintenance'),
(112,'TNK-112',12000,'Available'),
(113,'TNK-113',5000,'Available'),
(114,'TNK-114',7000,'Available'),
(115,'TNK-115',9000,'In Transit'),
(116,'TNK-116',11000,'Available'),
(117,'TNK-117',6000,'Available'),
(118,'TNK-118',8000,'Available'),
(119,'TNK-119',10000,'Maintenance'),
(120,'TNK-120',12000,'Available'),
(121,'TNK-121',5000,'Available'),
(122,'TNK-122',7500,'Available'),
(123,'TNK-123',9000,'Available'),
(124,'TNK-124',6000,'In Transit'),
(125,'TNK-125',10000,'Available');


-- =====================================================
-- 6. DRIVER
-- =====================================================

CREATE TABLE Driver (
    driver_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    license_no VARCHAR(30) NOT NULL UNIQUE,
    battery_date DATE
);

INSERT INTO Driver (driver_id, name, phone, license_no, battery_date) VALUES
(101,'Ramesh Kumar','9000010001','DL-10101','2027-05-10'),
(102,'Suresh Reddy','9000010002','DL-10102','2027-06-15'),
(103,'Mahesh Rao','9000010003','DL-10103','2027-08-20'),
(104,'Kiran Singh','9000010004','DL-10104','2027-09-12'),
(105,'Naveen Kumar','9000010005','DL-10105','2027-11-25'),
(106,'Imran Khan','9000010006','DL-10106','2028-01-18'),
(107,'Ravi Teja','9000010007','DL-10107','2028-02-22'),
(108,'Ajay Verma','9000010008','DL-10108','2027-12-30'),
(109,'Prakash Rao','9000010009','DL-10109','2028-03-14'),
(110,'Sunil Kumar','9000010010','DL-10110','2028-04-05'),
(111,'Vijay Reddy','9000010011','DL-10111','2028-05-16'),
(112,'Manoj Singh','9000010012','DL-10112','2028-06-21'),
(113,'Deepak Sharma','9000010013','DL-10113','2028-07-08'),
(114,'Akash Patel','9000010014','DL-10114','2028-08-19'),
(115,'Rohit Das','9000010015','DL-10115','2028-09-25'),
(116,'Ganesh Rao','9000010016','DL-10116','2028-10-11'),
(117,'Harish Kumar','9000010017','DL-10117','2028-11-17'),
(118,'Faizan Ali','9000010018','DL-10118','2028-12-03'),
(119,'Mohan Reddy','9000010019','DL-10119','2029-01-09'),
(120,'Vivek Jain','9000010020','DL-10120','2029-02-14'),
(121,'Rakesh Rao','9000010021','DL-10121','2029-03-20'),
(122,'Sanjay Kumar','9000010022','DL-10122','2029-04-25'),
(123,'Nitin Verma','9000010023','DL-10123','2029-05-30'),
(124,'Asif Khan','9000010024','DL-10124','2029-06-15'),
(125,'Mukul Sharma','9000010025','DL-10125','2029-07-22');


-- =====================================================
-- 7. SCHEDULE
-- =====================================================

CREATE TABLE Schedule (
    schedule_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    schedule_date DATE NOT NULL,
    time_slot VARCHAR(20) NOT NULL,
    tanker_id INT NOT NULL,
    driver_id INT NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (tanker_id) REFERENCES Tanker(tanker_id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);

INSERT INTO Schedule
(schedule_id, booking_id, schedule_date, time_slot, tanker_id, driver_id) VALUES
(101,101,'2026-09-17','07:00-08:00',101,101),
(102,102,'2026-09-17','08:00-09:00',102,102),
(103,103,'2026-09-18','09:00-10:00',103,103),
(104,104,'2026-09-18','10:00-11:00',105,104),
(105,105,'2026-09-19','07:00-08:00',106,105),
(106,106,'2026-09-19','08:00-09:00',107,106),
(107,107,'2026-09-20','09:00-10:00',109,107),
(108,108,'2026-09-20','10:00-11:00',110,108),
(109,109,'2026-09-21','11:00-12:00',112,109),
(110,110,'2026-09-21','07:00-08:00',113,110),
(111,111,'2026-09-22','08:00-09:00',114,111),
(112,112,'2026-09-22','09:00-10:00',116,112),
(113,113,'2026-09-23','10:00-11:00',117,113),
(114,114,'2026-09-23','11:00-12:00',118,114),
(115,115,'2026-09-24','07:00-08:00',120,115),
(116,116,'2026-09-24','08:00-09:00',121,116),
(117,117,'2026-09-25','09:00-10:00',122,117),
(118,118,'2026-09-25','10:00-11:00',123,118),
(119,119,'2026-09-26','11:00-12:00',125,119),
(120,120,'2026-09-26','07:00-08:00',101,120),
(121,121,'2026-09-27','08:00-09:00',102,121),
(122,122,'2026-09-27','09:00-10:00',103,122),
(123,123,'2026-09-28','10:00-11:00',105,123),
(124,124,'2026-09-28','11:00-12:00',106,124),
(125,125,'2026-09-29','07:00-08:00',107,125);


-- =====================================================
-- 8. BILL
-- =====================================================

CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    bill_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

INSERT INTO Bill
(bill_id, booking_id, bill_date, total_amount, status) VALUES
(101,101,'2026-09-17',5000.00,'Paid'),
(102,102,'2026-09-17',7500.00,'Partial'),
(103,103,'2026-09-18',9000.00,'Pending'),
(104,104,'2026-09-18',10000.00,'Paid'),
(105,105,'2026-09-19',4500.00,'Pending'),
(106,106,'2026-09-19',6250.00,'Partial'),
(107,107,'2026-09-20',7200.00,'Paid'),
(108,108,'2026-09-20',3000.00,'Cancelled'),
(109,109,'2026-09-21',12000.00,'Paid'),
(110,110,'2026-09-21',5500.00,'Pending'),
(111,111,'2026-09-22',6500.00,'Partial'),
(112,112,'2026-09-22',8000.00,'Paid'),
(113,113,'2026-09-23',5750.00,'Pending'),
(114,114,'2026-09-23',4000.00,'Pending'),
(115,115,'2026-09-24',9500.00,'Paid'),
(116,116,'2026-09-24',5000.00,'Cancelled'),
(117,117,'2026-09-25',6000.00,'Partial'),
(118,118,'2026-09-25',7000.00,'Paid'),
(119,119,'2026-09-26',8500.00,'Pending'),
(120,120,'2026-09-26',11000.00,'Paid'),
(121,121,'2026-09-27',5000.00,'Partial'),
(122,122,'2026-09-27',6500.00,'Pending'),
(123,123,'2026-09-28',9000.00,'Paid'),
(124,124,'2026-09-28',5500.00,'Partial'),
(125,125,'2026-09-29',7500.00,'Pending');


-- =====================================================
-- 9. FILLING RECORD
-- =====================================================

CREATE TABLE Filling_Record (
    filling_record_id INT PRIMARY KEY,
    schedule_id INT NOT NULL,
    source_id INT NOT NULL,
    filled_qty INT NOT NULL,
    first_time TIME NOT NULL,
    last_time TIME NOT NULL,
    unit_name VARCHAR(20) NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES Schedule(schedule_id),
    FOREIGN KEY (source_id) REFERENCES Water_Source(source_id)
);

INSERT INTO Filling_Record
(filling_record_id, schedule_id, source_id, filled_qty, first_time, last_time, unit_name) VALUES
(101,101,101,4800,'06:25:00','06:50:00','Liters'),
(102,102,102,7200,'07:20:00','07:45:00','Liters'),
(103,103,103,7800,'08:15:00','08:45:00','Liters'),
(104,104,104,9500,'09:15:00','09:50:00','Liters'),
(105,105,105,4300,'06:20:00','06:45:00','Liters'),
(106,106,106,6000,'07:15:00','07:40:00','Liters'),
(107,107,107,7000,'08:20:00','08:50:00','Liters'),
(108,108,108,5000,'09:20:00','09:45:00','Liters'),
(109,109,109,9800,'10:15:00','10:50:00','Liters'),
(110,110,110,5500,'06:30:00','06:55:00','Liters'),
(111,111,111,6300,'07:20:00','07:45:00','Liters'),
(112,112,112,7900,'08:15:00','08:40:00','Liters'),
(113,113,113,5600,'09:15:00','09:40:00','Liters'),
(114,114,114,3900,'10:15:00','10:40:00','Liters'),
(115,115,115,8800,'06:20:00','06:55:00','Liters'),
(116,116,116,4800,'07:15:00','07:40:00','Liters'),
(117,117,117,5900,'08:20:00','08:45:00','Liters'),
(118,118,118,6800,'09:15:00','09:40:00','Liters'),
(119,119,119,8200,'10:20:00','10:55:00','Liters'),
(120,120,120,10500,'06:20:00','06:55:00','Liters'),
(121,121,121,4700,'07:15:00','07:40:00','Liters'),
(122,122,122,6200,'08:20:00','08:45:00','Liters'),
(123,123,123,8700,'09:15:00','09:50:00','Liters'),
(124,124,124,5200,'10:20:00','10:45:00','Liters'),
(125,125,125,7300,'06:25:00','06:50:00','Liters');


-- =====================================================
-- 10. PAYMENT
-- =====================================================

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    bill_id INT NOT NULL,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    mode VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (bill_id) REFERENCES Bill(bill_id)
);

INSERT INTO Payment
(payment_id, bill_id, payment_date, amount, mode, status) VALUES
(101,101,'2026-09-17',5000,'UPI','Completed'),
(102,102,'2026-09-17',4000,'Cash','Completed'),
(103,102,'2026-09-18',2000,'UPI','Completed'),
(104,104,'2026-09-18',10000,'Card','Completed'),
(105,105,'2026-09-19',2000,'Cash','Completed'),
(106,106,'2026-09-19',3000,'UPI','Completed'),
(107,107,'2026-09-20',7200,'Bank Transfer','Completed'),
(108,108,'2026-09-20',3000,'UPI','Refunded'),
(109,109,'2026-09-21',12000,'Card','Completed'),
(110,110,'2026-09-21',1500,'Cash','Completed'),
(111,111,'2026-09-22',3000,'UPI','Completed'),
(112,112,'2026-09-22',8000,'Bank Transfer','Completed'),
(113,113,'2026-09-23',2500,'Cash','Completed'),
(114,114,'2026-09-23',1000,'UPI','Completed'),
(115,115,'2026-09-24',9500,'Card','Completed'),
(116,116,'2026-09-24',5000,'UPI','Refunded'),
(117,117,'2026-09-25',2500,'Cash','Completed'),
(118,118,'2026-09-25',7000,'UPI','Completed'),
(119,119,'2026-09-26',2000,'Cash','Completed'),
(120,120,'2026-09-26',11000,'Bank Transfer','Completed'),
(121,121,'2026-09-27',2500,'UPI','Completed'),
(122,122,'2026-09-27',1500,'Cash','Completed'),
(123,123,'2026-09-28',9000,'Card','Completed'),
(124,124,'2026-09-28',2500,'UPI','Completed'),
(125,125,'2026-09-29',2000,'Cash','Completed');


-- =====================================================
-- 11. TARIFF
-- =====================================================

CREATE TABLE Tariff (
    tariff_id INT PRIMARY KEY,
    tariff_name VARCHAR(50) NOT NULL,
    rate_per_liter DECIMAL(6,2) NOT NULL,
    effective_from DATE NOT NULL
);

INSERT INTO Tariff
(tariff_id, tariff_name, rate_per_liter, effective_from) VALUES
(101,'Standard',1.00,'2026-01-01'),
(102,'Premium',1.25,'2026-01-01'),
(103,'Emergency',1.50,'2026-01-01'),
(104,'Bulk',0.90,'2026-01-01'),
(105,'Residential',1.00,'2026-02-01'),
(106,'Commercial',1.20,'2026-02-01'),
(107,'Construction',1.35,'2026-02-01'),
(108,'Night Supply',1.40,'2026-03-01'),
(109,'Weekend',1.30,'2026-03-01'),
(110,'Apartment',1.10,'2026-03-01'),
(111,'Industrial',1.45,'2026-04-01'),
(112,'Regular',0.95,'2026-04-01'),
(113,'Priority',1.55,'2026-04-01'),
(114,'Festival',1.60,'2026-05-01'),
(115,'Summer',1.50,'2026-05-01'),
(116,'Monsoon',0.85,'2026-06-01'),
(117,'Bulk Plus',0.80,'2026-06-01'),
(118,'Corporate',1.25,'2026-07-01'),
(119,'Housing Society',1.05,'2026-07-01'),
(120,'Express',1.70,'2026-07-01'),
(121,'Economy',0.75,'2026-08-01'),
(122,'Premium Plus',1.40,'2026-08-01'),
(123,'Large Volume',0.88,'2026-08-01'),
(124,'Urgent',1.65,'2026-09-01'),
(125,'Special Contract',0.70,'2026-09-01');


-- =====================================================
-- 12. DELIVERY
-- =====================================================

CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY,
    schedule_id INT NOT NULL,
    quantity_yes INT NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (schedule_id) REFERENCES Schedule(schedule_id)
);

INSERT INTO Delivery
(delivery_id, schedule_id, quantity_yes, status) VALUES
(101,101,4700,'Delivered'),
(102,102,7000,'Delivered'),
(103,103,7600,'Delivered'),
(104,104,9200,'Delayed'),
(105,105,4200,'Delivered'),
(106,106,5900,'Delivered'),
(107,107,6800,'Delivered'),
(108,108,0,'Cancelled'),
(109,109,9500,'Delivered'),
(110,110,5200,'Delayed'),
(111,111,6100,'Delivered'),
(112,112,7800,'Delivered'),
(113,113,5500,'Delivered'),
(114,114,3800,'Pending'),
(115,115,8600,'Delivered'),
(116,116,0,'Cancelled'),
(117,117,5700,'Delayed'),
(118,118,6700,'Delivered'),
(119,119,8000,'Pending'),
(120,120,10200,'Delivered'),
(121,121,4500,'Delivered'),
(122,122,6000,'Delayed'),
(123,123,8500,'Delivered'),
(124,124,5000,'Pending'),
(125,125,7100,'Pending');


-- =====================================================
-- 13. COMPLAINT
-- =====================================================

CREATE TABLE Complaint (
    complaint_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    complaint_date DATE NOT NULL,
    issue VARCHAR(200) NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);

INSERT INTO Complaint
(complaint_id, booking_id, complaint_date, issue, status) VALUES
(101,102,'2026-09-17','Delivery was delayed','Resolved'),
(102,103,'2026-09-18','Quantity received was less','Open'),
(103,104,'2026-09-18','Late delivery','Resolved'),
(104,105,'2026-09-19','Tanker arrived late','Open'),
(105,106,'2026-09-19','Water quality concern','Investigating'),
(106,107,'2026-09-20','Driver arrived late','Resolved'),
(107,109,'2026-09-21','Quantity mismatch','Open'),
(108,110,'2026-09-21','Delivery delay','Resolved'),
(109,111,'2026-09-22','Incorrect quantity','Open'),
(110,113,'2026-09-23','Tanker delay','Resolved'),
(111,114,'2026-09-23','Driver communication issue','Open'),
(112,115,'2026-09-24','Delivery was delayed','Investigating'),
(113,117,'2026-09-25','Less water delivered','Open'),
(114,118,'2026-09-25','Late arrival','Resolved'),
(115,119,'2026-09-26','Tanker arrived late','Open'),
(116,120,'2026-09-26','Quantity mismatch','Resolved'),
(117,121,'2026-09-27','Water quality concern','Investigating'),
(118,122,'2026-09-27','Delivery delay','Open'),
(119,123,'2026-09-28','Wrong delivery time','Resolved'),
(120,124,'2026-09-28','Quantity received was less','Open'),
(121,125,'2026-09-29','Tanker arrived late','Open'),
(122,101,'2026-09-17','Minor delivery delay','Resolved'),
(123,108,'2026-09-20','Booking cancellation issue','Closed'),
(124,112,'2026-09-22','Billing clarification','Resolved'),
(125,116,'2026-09-24','Cancellation request','Closed');


-- =====================================================
-- REQUIRED QUERY
-- Display customer names where booking is Pending
-- and remark is Residential
-- =====================================================

SELECT c.name AS customer_name,
       b.remarks AS remark
FROM Customer c
JOIN Booking b
ON c.customer_id = b.customer_id
WHERE b.status = 'Pending'
AND b.remarks = 'Residential';


-- =====================================================
-- OPTIONAL CHECK
-- =====================================================

SELECT * FROM Booking;

SELECT COUNT(*) AS total_customers
FROM Customer;

SELECT COUNT(*) AS pending_residential_bookings
FROM Booking
WHERE status = 'Pending'
AND remarks = 'Residential';