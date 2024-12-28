create database property_management;
use property_management;

CREATE TABLE Property (
    id INT PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255),
    num_bedrooms INT,
    num_bathrooms INT,
    rent_amount DECIMAL(10, 2),
    amenities VARCHAR(255)
);



INSERT INTO Property (address, num_bedrooms, num_bathrooms, rent_amount, amenities) 
VALUES 
('123 Main St', 3, 2, 1500.00, 'Swimming pool, Gym'),
('456 Oak St', 2, 1, 1000.00, 'Parking space'),
('789 Maple St', 4, 3, 2000.00, 'Furnished, Balcony'),
('101 Pine St', 1, 1, 800.00, 'Laundry facilities'),
('202 Elm St', 2, 1, 1200.00, 'Pet-friendly'),
('303 Cedar St', 3, 2, 1600.00, 'Garden'),
('404 Walnut St', 4, 3, 2200.00, 'Pool, Garage'),
('505 Birch St', 2, 1, 1100.00, 'Parking space'),
('606 Pine St', 3, 2, 1700.00, 'Pet-friendly, Gym'),
('707 Maple St', 1, 1, 900.00, 'Laundry facilities'),
('808 Oak St', 2, 1, 1300.00, 'Balcony'),
('909 Cedar St', 4, 3, 1800.00, 'Furnished, Pool'),
('111 Elm St', 3, 2, 1400.00, 'Parking space'),
('222 Maple St', 2, 1, 1000.00, 'Pet-friendly'),
('333 Pine St', 1, 1, 800.00, 'Laundry facilities'),
('444 Oak St', 3, 2, 1600.00, 'Garden'),
('555 Cedar St', 4, 3, 2000.00, 'Furnished, Balcony'),
('666 Elm St', 2, 1, 1200.00, 'Parking space'),
('777 Maple St', 3, 2, 1700.00, 'Pet-friendly, Gym'),
('888 Walnut St', 1, 1, 900.00, 'Laundry facilities');



CREATE TABLE Landlord (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(20)
);


INSERT INTO Landlord (name, email, phone_number) 
VALUES 
('John Doe', 'john.doe@example.com', '123-456-7890'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210'),
('Bob Johnson', 'bob.johnson@example.com', '555-555-5555'),
('Emily Taylor', 'emily.taylor@example.com', '111-222-3333'),
('Michael Clark', 'michael.clark@example.com', '444-555-6666'),
('Sophia White', 'sophia.white@example.com', '777-888-9999'),
('David Brown', 'david.brown@example.com', '123-123-1234'),
('Emma Davis', 'emma.davis@example.com', '456-456-4567'),
('James Wilson', 'james.wilson@example.com', '789-789-7890'),
('Olivia Martinez', 'olivia.martinez@example.com', '321-321-3210'),
('William Anderson', 'william.anderson@example.com', '654-654-6543'),
('Sophia Taylor', 'sophia.taylor@example.com', '987-987-9876'),
('Benjamin Thomas', 'benjamin.thomas@example.com', '222-333-4444'),
('Isabella Garcia', 'isabella.garcia@example.com', '555-666-7777'),
('Jacob Hernandez', 'jacob.hernandez@example.com', '888-999-0000'),
('Mia Walker', 'mia.walker@example.com', '111-222-3333'),
('Ethan Perez', 'ethan.perez@example.com', '444-555-6666'),
('Charlotte Evans', 'charlotte.evans@example.com', '777-888-9999'),
('Alexander Stewart', 'alexander.stewart@example.com', '123-456-7890'),
('Ava Morris', 'ava.morris@example.com', '987-654-3210');


CREATE TABLE Tenant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    property_id INT,
    payment_history TEXT,
    FOREIGN KEY (property_id) REFERENCES Property(id)
);


INSERT INTO Tenant (name, email, phone_number, property_id, payment_history) 
VALUES 
('Alice Jones', 'alice.jones@example.com', '111-222-3333', 1, '2023-01-01: 1500.00; 2023-02-01: 1500.00'),
('Bob Brown', 'bob.brown@example.com', '444-555-6666', 2, '2023-01-01: 1000.00; 2023-02-01: 1000.00'),
('Carol Davis', 'carol.davis@example.com', '777-888-9999', 3, '2023-01-01: 2000.00; 2023-02-01: 2000.00'),
('David Lee', 'david.lee@example.com', '111-111-1111', 4, '2023-01-01: 900.00; 2023-02-01: 900.00'),
('Emma Harris', 'emma.harris@example.com', '222-222-2222', 5, '2023-01-01: 1300.00; 2023-02-01: 1300.00'),
('James Smith', 'james.smith@example.com', '333-333-3333', 6, '2023-01-01: 1700.00; 2023-02-01: 1700.00'),
('Olivia Johnson', 'olivia.johnson@example.com', '444-444-4444', 7, '2023-01-01: 1300.00; 2023-02-01: 1300.00'),
('William Martinez', 'william.martinez@example.com', '555-555-5555', 8, '2023-01-01: 1100.00; 2023-02-01: 1100.00'),
('Sophia Brown', 'sophia.brown@example.com', '666-666-6666', 9, '2023-01-01: 1800.00; 2023-02-01: 1800.00'),
('Benjamin Garcia', 'benjamin.garcia@example.com', '777-777-7777', 10, '2023-01-01: 900.00; 2023-02-01: 900.00'),
('Isabella Hernandez', 'isabella.hernandez@example.com', '888-888-8888', 11, '2023-01-01: 1600.00; 2023-02-01: 1600.00'),
('Jacob Walker', 'jacob.walker@example.com', '999-999-9999', 12, '2023-01-01: 2000.00; 2023-02-01: 2000.00'),
('Mia Perez', 'mia.perez@example.com', '111-111-1111', 13, '2023-01-01: 1200.00; 2023-02-01: 1200.00'),
('Ethan Evans', 'ethan.evans@example.com', '222-222-2222', 14, '2023-01-01: 1400.00; 2023-02-01: 1400.00'),
('Charlotte Stewart', 'charlotte.stewart@example.com', '333-333-3333', 15, '2023-01-01: 1000.00; 2023-02-01: 1000.00'),
('Alexander Morris', 'alexander.morris@example.com', '444-444-4444', 16, '2023-01-01: 1500.00; 2023-02-01: 1500.00'),
('Ava Collins', 'ava.collins@example.com', '555-555-5555', 17, '2023-01-01: 1700.00; 2023-02-01: 1700.00'),
('William Ross', 'william.ross@example.com', '666-666-6666', 18, '2023-01-01: 1200.00; 2023-02-01: 1200.00'),
('Sophia Griffin', 'sophia.griffin@example.com', '777-777-7777', 19, '2023-01-01: 1900.00; 2023-02-01: 1900.00'),
('Benjamin Diaz', 'benjamin.diaz@example.com', '888-888-8888', 20, '2023-01-01: 1300.00; 2023-02-01: 1300.00');


CREATE TABLE RentalAgreement (
    agreement_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT,
    tenant_id INT,
    start_date DATE,
    end_date DATE,
    rent_amount DECIMAL(10, 2),
    FOREIGN KEY (property_id) REFERENCES Property(id),
    FOREIGN KEY (tenant_id) REFERENCES Tenant(id)
);


INSERT INTO RentalAgreement (property_id, tenant_id, start_date, end_date, rent_amount) 
VALUES 
(1, 1, '2023-01-01', '2023-12-31', 1500.00),
(2, 2, '2023-01-01', '2023-12-31', 1000.00),
(3, 3, '2023-01-01', '2023-12-31', 2000.00),
(4, 4, '2023-01-01', '2023-12-31', 900.00),
(5, 5, '2023-01-01', '2023-12-31', 1300.00),
(6, 6, '2023-01-01', '2023-12-31', 1700.00),
(7, 7, '2023-01-01', '2023-12-31', 1300.00),
(8, 8, '2023-01-01', '2023-12-31', 1100.00),
(9, 9, '2023-01-01', '2023-12-31', 1800.00),
(10, 10, '2023-01-01', '2023-12-31', 900.00),
(11, 11, '2023-01-01', '2023-12-31', 1600.00),
(12, 12, '2023-01-01', '2023-12-31', 2000.00),
(13, 13, '2023-01-01', '2023-12-31', 1200.00),
(14, 14, '2023-01-01', '2023-12-31', 1400.00),
(15, 15, '2023-01-01', '2023-12-31', 1000.00),
(16, 16, '2023-01-01', '2023-12-31', 1500.00),
(17, 17, '2023-01-01', '2023-12-31', 1700.00),
(18, 18, '2023-01-01', '2023-12-31', 1200.00),
(19, 19, '2023-01-01', '2023-12-31', 1900.00),
(20, 20, '2023-01-01', '2023-12-31', 1300.00);



CREATE TABLE RentPayment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    tenant_id INT,
    agreement_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10, 2),
    payment_status VARCHAR(50),
    FOREIGN KEY (tenant_id) REFERENCES Tenant(id),
    FOREIGN KEY (agreement_id) REFERENCES RentalAgreement(agreement_id)
);

INSERT INTO RentPayment (tenant_id, agreement_id, payment_date, payment_amount, payment_status) 
VALUES 
(1, 1, '2023-01-15', 1500.00, 'Paid'),
(2, 2, '2023-01-15', 1000.00, 'Paid'),
(3, 3, '2023-01-15', 2000.00, 'Paid'),
(4, 4, '2023-01-15', 900.00, 'Paid'),
(5, 5, '2023-01-15', 1300.00, 'Paid'),
(6, 6, '2023-01-15', 1700.00, 'Paid'),
(7, 7, '2023-01-15', 1300.00, 'Paid'),
(8, 8, '2023-01-15', 1100.00, 'Paid'),
(9, 9, '2023-01-15', 1800.00, 'Paid'),
(10, 10, '2023-01-15', 900.00, 'Paid'),
(11, 11, '2023-01-15', 1600.00, 'Paid'),
(12, 12, '2023-01-15', 2000.00, 'Paid'),
(13, 13, '2023-01-15', 1200.00, 'Paid'),
(14, 14, '2023-01-15', 1400.00, 'Paid'),
(15, 15, '2023-01-15', 1000.00, 'Paid'),
(16, 16, '2023-01-15', 1500.00, 'Paid'),
(17, 17, '2023-01-15', 1700.00, 'Paid'),
(18, 18, '2023-01-15', 1200.00, 'Paid'),
(19, 19, '2023-01-15', 1900.00, 'Paid'),
(20, 20, '2023-01-15', 1300.00, 'Paid');


CREATE TABLE Notice (
    property_id INT,
    tenant_id INT,
    notice_date DATE,
    notice_status VARCHAR(50),
    FOREIGN KEY (property_id) REFERENCES Property(id),
    FOREIGN KEY (tenant_id) REFERENCES Tenant(id)
);


INSERT INTO Notice (property_id, tenant_id, notice_date, notice_status) 
VALUES 
(1, 1, '2023-11-01', 'Pending'),
(2, 2, '2023-11-01', 'Pending'),
(3, 3, '2023-11-01', 'Pending'),
(4, 4, '2023-11-01', 'Pending'),
(5, 5, '2023-11-01', 'Pending'),
(6, 6, '2023-11-01', 'Pending'),
(7, 7, '2023-11-01', 'Pending'),
(8, 8, '2023-11-01', 'Pending'),
(9, 9, '2023-11-01', 'Pending'),
(10, 10, '2023-11-01', 'Pending'),
(11, 11, '2023-11-01', 'Pending'),
(12, 12, '2023-11-01', 'Pending'),
(13, 13, '2023-11-01', 'Pending'),
(14, 14, '2023-11-01', 'Pending'),
(15, 15, '2023-11-01', 'Pending'),
(16, 16, '2023-11-01', 'Pending'),
(17, 17, '2023-11-01', 'Pending'),
(18, 18, '2023-11-01', 'Pending'),
(19, 19, '2023-11-01', 'Pending'),
(20, 20, '2023-11-01', 'Pending');


CREATE TABLE BankAccount (
    account_number VARCHAR(50) PRIMARY KEY,
    bank_name VARCHAR(100),
    IFSC_code VARCHAR(20)
);

INSERT INTO BankAccount (account_number, bank_name, IFSC_code) 
VALUES 
('1111111111', 'Bank of America', 'BOFAUS3N'),
('2222222222', 'Chase Bank', 'CHASUS33'),
('3333333333', 'Wells Fargo', 'WFBIUS6S'),
('4444444444', 'Citibank', 'CITIUS33'),
('5555555555', 'HSBC', 'HSBCUS33'),
('6666666666', 'TD Bank', 'NRTHUS33'),
('7777777777', 'Bank of Montreal', 'BOFMUS33'),
('8888888888', 'Scotiabank', 'NOSMUS33'),
('9999999999', 'Royal Bank of Canada', 'ROYCUS33'),
('1234567890', 'Barclays', 'BARCUS33'),
('2345678901', 'BNP Paribas', 'BNPAUS33'),
('3456789012', 'UBS', 'UBSWUS33'),
('4567890123', 'Deutsche Bank', 'DEUTUS33'),
('5678901234', 'Credit Suisse', 'CSGNUS33'),
('6789012345', 'Societe Generale', 'SOGEUS33'),
('7890123456', 'ING Bank', 'INGBUS33'),
('8901234567', 'Mizuho Bank', 'MHCBUS33'),
('9012345678', 'Sumitomo Mitsui Banking Corporation', 'SMBCUS33'),
('0123456789', 'MUFG Bank', 'BOTKUS33'),
('5432109876', 'Nomura Holdings', 'NOMAUS33');





