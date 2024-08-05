create database TaxManagementSystem;
use TaxManagementSystem;


CREATE TABLE Taxpayer (
    TaxpayerID INT PRIMARY KEY,
    Name VARCHAR(50),
    PAN VARCHAR(10),
    AadharNumber VARCHAR(12),
    Email VARCHAR(50),
    MobileNumber VARCHAR(10),
    Address VARCHAR(100)
);


CREATE TABLE TaxReturn (
    ReturnID INT PRIMARY KEY,
    TaxpayerID INT,
    FinancialYear VARCHAR(9),
    FilingDate DATE,
    TotalIncome DECIMAL(10, 2),
    TaxPaid DECIMAL(10, 2),
    FOREIGN KEY (TaxpayerID) REFERENCES Taxpayer(TaxpayerID)
);


CREATE TABLE IncomeDetails (
    IncomeID INT PRIMARY KEY,
    TaxpayerID INT,
    Source VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (TaxpayerID) REFERENCES Taxpayer(TaxpayerID)
);


CREATE TABLE Deductions (
    DeductionID INT PRIMARY KEY,
    TaxpayerID INT,
    Type VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (TaxpayerID) REFERENCES Taxpayer(TaxpayerID)
);



CREATE TABLE TaxPayment (
    PaymentID INT PRIMARY KEY,
    TaxpayerID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (TaxpayerID) REFERENCES Taxpayer(TaxpayerID)
);


CREATE TABLE Assessment (
    AssessmentID INT PRIMARY KEY,
    ReturnID INT,
    AssessmentDate DATE,
    Status VARCHAR(50),
    AdditionalTax DECIMAL(10, 2),
    FOREIGN KEY (ReturnID) REFERENCES TaxReturn(ReturnID)
);


CREATE TABLE Refund (
    RefundID INT PRIMARY KEY,
    TaxpayerID INT,
    AssessmentID INT,
    RefundAmount DECIMAL(10, 2),
    RefundDate DATE,
    FOREIGN KEY (TaxpayerID) REFERENCES Taxpayer(TaxpayerID),
    FOREIGN KEY (AssessmentID) REFERENCES Assessment(AssessmentID)
);


INSERT INTO Taxpayer (TaxpayerID, Name, PAN, AadharNumber, Email, MobileNumber, Address) VALUES
(1, 'Amit Sharma', 'ABCDE1234F', '123456789012', 'amit.sharma@example.com', '9876543210', '123 Main Street, Delhi'),
(2, 'Neha Verma', 'FGHIJ5678K', '234567890123', 'neha.verma@example.com', '8765432109', '456 Park Avenue, Mumbai'),
(3, 'Rahul Singh', 'KLMNO9101P', '345678901234', 'rahul.singh@example.com', '7654321098', '789 Central Blvd, Kolkata'),
(4, 'Priya Gupta', 'QRSTU1234V', '456789012345', 'priya.gupta@example.com', '6543210987', '101 Rainbow Street, Pune'),
(5, 'Rohan Joshi', 'VWXYZ5678Q', '567890123456', 'rohan.joshi@example.com', '5432109876', '202 Horizon Lane, Bangalore'),
(6, 'Sanjay Kumar', 'LMNOP2345R', '678901234567', 'sanjay.kumar@example.com', '4321098765', '303 Skyline Drive, Chennai'),
(7, 'Pooja Mehta', 'ABCDE3456S', '789012345678', 'pooja.mehta@example.com', '3210987654', '404 Summit Street, Hyderabad'),
(8, 'Vikram Rao', 'FGHIJ6789T', '890123456789', 'vikram.rao@example.com', '2109876543', '505 Mountain Blvd, Ahmedabad'),
(9, 'Anita Patel', 'KLMNO9102U', '901234567890', 'anita.patel@example.com', '1098765432', '606 Valley Road, Jaipur'),
(10, 'Deepak Chawla', 'QRSTU3457V', '123450987612', 'deepak.chawla@example.com', '9988776655', '707 Desert Street, Lucknow'),
(11, 'Sunita Reddy', 'VWXYZ5679W', '234561098723', 'sunita.reddy@example.com', '8877665544', '808 Forest Lane, Patna'),
(12, 'Arjun Desai', 'LMNOP2348X', '345672109834', 'arjun.desai@example.com', '7766554433', '909 Garden Path, Surat'),
(13, 'Kavita Nair', 'ABCDE3459Y', '456783210945', 'kavita.nair@example.com', '6655443322', '1010 Lakeview Drive, Nagpur'),
(14, 'Suresh Menon', 'FGHIJ6780Z', '567894321056', 'suresh.menon@example.com', '5544332211', '1111 River Road, Indore'),
(15, 'Rekha Kapoor', 'KLMNO9103A', '678905432167', 'rekha.kapoor@example.com', '4433221100', '1212 Ocean Drive, Bhopal'),
(16, 'Aakash Jain', 'QRSTU3458B', '789016543278', 'aakash.jain@example.com', '3322110099', '1313 Hilltop Road, Kanpur'),
(17, 'Ritika Bhatia', 'VWXYZ5670C', '890127654389', 'ritika.bhatia@example.com', '2211009988', '1414 Plains Avenue, Ludhiana'),
(18, 'Naveen Kapoor', 'LMNOP2341D', '901238765490', 'naveen.kapoor@example.com', '1100998877', '1515 Coastline St, Agra'),
(19, 'Swati Sinha', 'ABCDE3452E', '123459876501', 'swati.sinha@example.com', '9998887766', '1616 City Center, Varanasi'),
(20, 'Harish Bansal', 'FGHIJ6783F', '234560987612', 'harish.bansal@example.com', '8887776655', '1717 Metro Blvd, Vijayawada'),
(21, 'Megha Sharma', 'KLMNO9104G', '345671098723', 'megha.sharma@example.com', '7776665544', '1818 Harbor Road, Amritsar'),
(22, 'Gaurav Singh', 'QRSTU3455H', '456782109834', 'gaurav.singh@example.com', '6665554433', '1919 Bay Street, Coimbatore'),
(23, 'Pallavi Joshi', 'VWXYZ5676I', '567893210945', 'pallavi.joshi@example.com', '5554443322', '2020 Glenview Ave, Jodhpur'),
(24, 'Abhishek Dutta', 'LMNOP2347J', '678904321056', 'abhishek.dutta@example.com', '4443332211', '2121 Cedar Lane, Guwahati'),
(25, 'Smita Rai', 'ABCDE3458K', '789015432167', 'smita.rai@example.com', '3332221100', '2222 Ridge Road, Gwalior');


INSERT INTO TaxReturn (ReturnID, TaxpayerID, FinancialYear, FilingDate, TotalIncome, TaxPaid) VALUES
(1, 1, '2022-2023', '2023-07-31', 1200000.00, 120000.00),
(2, 2, '2022-2023', '2023-07-31', 1500000.00, 150000.00),
(3, 3, '2022-2023', '2023-07-31', 1000000.00, 100000.00),
(4, 4, '2022-2023', '2023-07-31', 1100000.00, 110000.00),
(5, 5, '2022-2023', '2023-07-31', 1300000.00, 130000.00),
(6, 6, '2022-2023', '2023-07-31', 1400000.00, 140000.00),
(7, 7, '2022-2023', '2023-07-31', 1250000.00, 125000.00),
(8, 8, '2022-2023', '2023-07-31', 1350000.00, 135000.00),
(9, 9, '2022-2023', '2023-07-31', 1150000.00, 115000.00),
(10, 10, '2022-2023', '2023-07-31', 1050000.00, 105000.00),
(11, 11, '2022-2023', '2023-07-31', 1450000.00, 145000.00),
(12, 12, '2022-2023', '2023-07-31', 1550000.00, 155000.00),
(13, 13, '2022-2023', '2023-07-31', 1650000.00, 165000.00),
(14, 14, '2022-2023', '2023-07-31', 1750000.00, 175000.00),
(15, 15, '2022-2023', '2023-07-31', 1850000.00, 185000.00),
(16, 16, '2022-2023', '2023-07-31', 1950000.00, 195000.00),
(17, 17, '2022-2023', '2023-07-31', 2050000.00, 205000.00),
(18, 18, '2022-2023', '2023-07-31', 2150000.00, 215000.00),
(19, 19, '2022-2023', '2023-07-31', 2250000.00, 225000.00),
(20, 20, '2022-2023', '2023-07-31', 2350000.00, 235000.00),
(21, 21, '2022-2023', '2023-07-31', 2450000.00, 245000.00),
(22, 22, '2022-2023', '2023-07-31', 2550000.00, 255000.00),
(23, 23, '2022-2023', '2023-07-31', 2650000.00, 265000.00),
(24, 24, '2022-2023', '2023-07-31', 2750000.00, 275000.00),
(25, 25, '2022-2023', '2023-07-31', 2850000.00, 285000.00);



INSERT INTO IncomeDetails (IncomeID, TaxpayerID, Source, Amount) VALUES
(1, 1, 'Salary', 1200000.00),
(2, 2, 'Business', 1500000.00),
(3, 3, 'Salary', 1000000.00),
(4, 4, 'Business', 1100000.00),
(5, 5, 'Salary', 1300000.00),
(6, 6, 'Business', 1400000.00),
(7, 7, 'Salary', 1250000.00),
(8, 8, 'Business', 1350000.00),
(9, 9, 'Salary', 1150000.00),
(10, 10, 'Business', 1050000.00),
(11, 11, 'Salary', 1450000.00),
(12, 12, 'Business', 1550000.00),
(13, 13, 'Salary', 1650000.00),
(14, 14, 'Business', 1750000.00),
(15, 15, 'Salary', 1850000.00),
(16, 16, 'Business', 1950000.00),
(17, 17, 'Salary', 2050000.00),
(18, 18, 'Business', 2150000.00),
(19, 19, 'Salary', 2250000.00),
(20, 20, 'Business', 2350000.00),
(21, 21, 'Salary', 2450000.00),
(22, 22, 'Business', 2550000.00),
(23, 23, 'Salary', 2650000.00),
(24, 24, 'Business', 2750000.00),
(25, 25, 'Salary', 2850000.00);



INSERT INTO Deductions (DeductionID, TaxpayerID, Type, Amount) VALUES
(1, 1, '80C', 150000.00),
(2, 2, '80D', 50000.00),
(3, 3, '80C', 150000.00),
(4, 4, '80D', 50000.00),
(5, 5, '80C', 150000.00),
(6, 6, '80D', 50000.00),
(7, 7, '80C', 150000.00),
(8, 8, '80D', 50000.00),
(9, 9, '80C', 150000.00),
(10, 10, '80D', 50000.00),
(11, 11, '80C', 150000.00),
(12, 12, '80D', 50000.00),
(13, 13, '80C', 150000.00),
(14, 14, '80D', 50000.00),
(15, 15, '80C', 150000.00),
(16, 16, '80D', 50000.00),
(17, 17, '80C', 150000.00),
(18, 18, '80D', 50000.00),
(19, 19, '80C', 150000.00),
(20, 20, '80D', 50000.00),
(21, 21, '80C', 150000.00),
(22, 22, '80D', 50000.00),
(23, 23, '80C', 150000.00),
(24, 24, '80D', 50000.00),
(25, 25, '80C', 150000.00);



INSERT INTO TaxPayment (PaymentID, TaxpayerID, PaymentDate, Amount) VALUES
(1, 1, '2023-07-30', 120000.00),
(2, 2, '2023-07-30', 150000.00),
(3, 3, '2023-07-30', 100000.00),
(4, 4, '2023-07-30', 110000.00),
(5, 5, '2023-07-30', 130000.00),
(6, 6, '2023-07-30', 140000.00),
(7, 7, '2023-07-30', 125000.00),
(8, 8, '2023-07-30', 135000.00),
(9, 9, '2023-07-30', 115000.00),
(10, 10, '2023-07-30', 105000.00),
(11, 11, '2023-07-30', 145000.00),
(12, 12, '2023-07-30', 155000.00),
(13, 13, '2023-07-30', 165000.00),
(14, 14, '2023-07-30', 175000.00),
(15, 15, '2023-07-30', 185000.00),
(16, 16, '2023-07-30', 195000.00),
(17, 17, '2023-07-30', 205000.00),
(18, 18, '2023-07-30', 215000.00),
(19, 19, '2023-07-30', 225000.00),
(20, 20, '2023-07-30', 235000.00),
(21, 21, '2023-07-30', 245000.00),
(22, 22, '2023-07-30', 255000.00),
(23, 23, '2023-07-30', 265000.00),
(24, 24, '2023-07-30', 275000.00),
(25, 25, '2023-07-30', 285000.00);



INSERT INTO Assessment (AssessmentID, ReturnID, AssessmentDate, Status, AdditionalTax) VALUES
(1, 1, '2023-08-01', 'Completed', 0.00),
(2, 2, '2023-08-01', 'Completed', 0.00),
(3, 3, '2023-08-01', 'Pending', 5000.00),
(4, 4, '2023-08-01', 'Completed', 0.00),
(5, 5, '2023-08-01', 'Pending', 6000.00),
(6, 6, '2023-08-01', 'Completed', 0.00),
(7, 7, '2023-08-01', 'Pending', 7000.00),
(8, 8, '2023-08-01', 'Completed', 0.00),
(9, 9, '2023-08-01', 'Pending', 8000.00),
(10, 10, '2023-08-01', 'Completed', 0.00),
(11, 11, '2023-08-01', 'Pending', 9000.00),
(12, 12, '2023-08-01', 'Completed', 0.00),
(13, 13, '2023-08-01', 'Pending', 10000.00),
(14, 14, '2023-08-01', 'Completed', 0.00),
(15, 15, '2023-08-01', 'Pending', 11000.00),
(16, 16, '2023-08-01', 'Completed', 0.00),
(17, 17, '2023-08-01', 'Pending', 12000.00),
(18, 18, '2023-08-01', 'Completed', 0.00),
(19, 19, '2023-08-01', 'Pending', 13000.00),
(20, 20, '2023-08-01', 'Completed', 0.00),
(21, 21, '2023-08-01', 'Pending', 14000.00),
(22, 22, '2023-08-01', 'Completed', 0.00),
(23, 23, '2023-08-01', 'Pending', 15000.00),
(24, 24, '2023-08-01', 'Completed', 0.00),
(25, 25, '2023-08-01', 'Pending', 16000.00);



INSERT INTO Refund (RefundID, TaxpayerID, AssessmentID, RefundAmount, RefundDate) VALUES
(1, 1, 1, 0.00, '2023-08-02'),
(2, 2, 2, 0.00, '2023-08-02'),
(3, 3, 3, 5000.00, '2023-08-02'),
(4, 4, 4, 0.00, '2023-08-02'),
(5, 5, 5, 6000.00, '2023-08-02'),
(6, 6, 6, 0.00, '2023-08-02'),
(7, 7, 7, 7000.00, '2023-08-02'),
(8, 8, 8, 0.00, '2023-08-02'),
(9, 9, 9, 8000.00, '2023-08-02'),
(10, 10, 10, 0.00, '2023-08-02'),
(11, 11, 11, 9000.00, '2023-08-02'),
(12, 12, 12, 0.00, '2023-08-02'),
(13, 13, 13, 10000.00, '2023-08-02'),
(14, 14, 14, 0.00, '2023-08-02'),
(15, 15, 15, 11000.00, '2023-08-02'),
(16, 16, 16, 0.00, '2023-08-02'),
(17, 17, 17, 12000.00, '2023-08-02'),
(18, 18, 18, 0.00, '2023-08-02'),
(19, 19, 19, 13000.00, '2023-08-02'),
(20, 20, 20, 0.00, '2023-08-02'),
(21, 21, 21, 14000.00, '2023-08-02'),
(22, 22, 22, 0.00, '2023-08-02'),
(23, 23, 23, 15000.00, '2023-08-02'),
(24, 24, 24, 0.00, '2023-08-02'),
(25, 25, 25, 16000.00, '2023-08-02');
