Create DATABASE DENTIST
GO
USE DENTIST
GO
-- CreateQueries.txt
-- Create the Person table
CREATE TABLE Person (
PersonID INT NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
DOB DATE NOT NULL,
EmailAddress VARCHAR(100) NOT NULL,
CONSTRAINT Person_PK PRIMARY KEY (PersonID)
);
-- Create the Patient table
CREATE TABLE Patient (
PatientID INT NOT NULL,
DateSigned DATE NOT NULL,
NotSigned VARCHAR(10) NOT NULL,
CONSTRAINT Patient_PK PRIMARY KEY (PatientID),
FOREIGN KEY (PatientID) REFERENCES Person (PersonID)
);
-- Create the InsuranceCoverage table
CREATE TABLE InsuranceCoverage (
InsuranceID INT NOT NULL,
AcceptedPolicyTypes VARCHAR(100) NOT NULL,
CONSTRAINT InsuranceCoverage_PK PRIMARY KEY (InsuranceID)
);
-- Create the InsurancePlan table
CREATE TABLE InsurancePlan (
InsurancePlanID INT NOT NULL,
PlanName VARCHAR(100) NOT NULL,
InsuranceID INT NOT NULL,
CONSTRAINT InsurancePlan_PK PRIMARY KEY (InsurancePlanID),
FOREIGN KEY (InsuranceID) REFERENCES InsuranceCoverage(InsuranceID)
);
-- Create the PatientInsurance table
CREATE TABLE PatientInsurance (
InsuranceID INT NOT NULL,
InsuranceInfo VARCHAR(100) NOT NULL,
CONSTRAINT PatientIns_PK PRIMARY KEY (InsuranceID),
FOREIGN KEY (InsuranceID) REFERENCES Patient(PatientID)
);
-- Create the Employee table
CREATE TABLE Employee (
EmployeeID INT NOT NULL,
Salary DECIMAL(10, 2) NOT NULL,
CONSTRAINT Employee_PK PRIMARY KEY (EmployeeID),
FOREIGN KEY (EmployeeID) REFERENCES Person(PersonID)
);
-- Create the Address table
CREATE TABLE Address (
AddressID INT NOT NULL,
Street VARCHAR(100) NOT NULL,
City VARCHAR(50) NOT NULL,
ZipCode VARCHAR(5) NOT NULL,
State VARCHAR(50) NOT NULL,
CONSTRAINT Address_PK PRIMARY KEY (AddressID)
);
-- Create the MedicalRecord table
CREATE TABLE MedicalRecord (
MedicalID INT NOT NULL,
LastDate DATE NOT NULL,
PatientID INT NOT NULL,
CONSTRAINT MedicalRecord_PK PRIMARY KEY (MedicalID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
-- Create the Allergies table
CREATE TABLE Allergies (
AllergiesID INT NOT NULL,
Symptoms VARCHAR(50) NOT NULL,
AllergyName VARCHAR(100) NOT NULL,
CONSTRAINT Alllergies_PK PRIMARY KEY (AllergiesID)
);
-- Create the Medication table
CREATE TABLE Medication (
MedicationID INT NOT NULL,
MedicationName VARCHAR(300) NOT NULL,
DatePrescribed Date NOT NULL,
Dosage INT NOT NULL,
CONSTRAINT Medication_PK PRIMARY KEY (MedicationID)
);
-- Create the EmergencyContact table
CREATE TABLE EmergencyContact (
EmergencyID INT NOT NULL,
ContactName VARCHAR(100) NOT NULL,
ContactRelationship VARCHAR(50) NOT NULL,
MedicalID INT NOT NULL,
CONSTRAINT EmergencyContact_PK PRIMARY KEY (EmergencyID),
FOREIGN KEY (MedicalID) REFERENCES MedicalRecord(MedicalID)
);
-- Create the Medical table
CREATE TABLE Medical (
MedID INT NOT NULL,
MedicalLicense VARCHAR(50) NOT NULL,
CONSTRAINT Medical_PK PRIMARY KEY (MedID)
);
-- Create the NonMedical table
CREATE TABLE NonMedical (
NonMedID INT NOT NULL,
Role VARCHAR(50) NOT NULL,
CONSTRAINT NonMedical_PK PRIMARY KEY (NonMedID),
FOREIGN KEY (NonMedID) REFERENCES Employee(EmployeeID)
);
-- Create the DentalProcedure table
CREATE TABLE DentalProcedure (
ProcedureID INT NOT NULL,
PerUnitCharge DECIMAL(10, 2) NOT NULL,
ProcedureName VARCHAR(100) NOT NULL,
ProcedureDate DATE NOT NULL,
CONSTRAINT DentalProcedure_PK PRIMARY KEY (ProcedureID)
);
-- Create the Inventory table
CREATE TABLE Inventory (
InventoryID INT NOT NULL,
InventoryQty INT NOT NULL,
UnitPrice DECIMAL(10, 2) NOT NULL,
ItemName VARCHAR(300) NOT NULL,
CONSTRAINT Inventory_PK PRIMARY KEY (InventoryID)
);
-- Create the Appointments table
CREATE TABLE Appointments (
AppointmentID INT NOT NULL,
Date DATE NOT NULL,
PatientID INT NOT NULL,
CONSTRAINT Appointments_PK PRIMARY KEY (AppointmentID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
-- Create the BillingRecord table
CREATE TABLE BillingRecord (
BillingID INT NOT NULL,
BillingDate DATE NOT NULL,
ProceduresPerformed INT NOT NULL,
SupervisingDoctor VARCHAR(100) NOT NULL,
Doctor VARCHAR(100) NOT NULL,
MedicalProfessional VARCHAR(200) NOT NULL,
AppointmentID INT NOT NULL,
CONSTRAINT BillingRecord_PK PRIMARY KEY (BillingID),
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
-- Create the BillingDetails table
CREATE TABLE BillingDetails (
BillingID INT NOT NULL,
Status VARCHAR(50) NOT NULL,
CONSTRAINT Billing_PK PRIMARY KEY (BillingID),
FOREIGN KEY (BillingID) REFERENCES Appointments(AppointmentID)
);
-- Create the AppointmentNotes table
CREATE TABLE AppointmentNotes (
NoteID INT NOT NULL,
NoteDate DATE NOT NULL,
NoteText VARCHAR(500) NOT NULL,
AppointmentID INT NOT NULL,
CONSTRAINT AppointmentNotes_PK PRIMARY KEY (NoteID),
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
-- Create the Invoice table
CREATE TABLE Invoice (
InvoiceID INT NOT NULL,
QtyOfProcedures INT NOT NULL,
InvoiceDate DATE NOT NULL,
AppointmentID INT NOT NULL,
InsuranceID INT NOT NULL,
CONSTRAINT Invoice_PK PRIMARY KEY (InvoiceID),
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
FOREIGN KEY (InsuranceID) REFERENCES InsurancePlan(InsurancePlanID)
);
-- Create the Payment table
CREATE TABLE Payment (
PaymentID INT NOT NULL,
PaymentAmount DECIMAL(10, 2) NOT NULL,
PaymentDate DATE NOT NULL,
PatientID INT NOT NULL,
CreditID INT NOT NULL,
CONSTRAINT Payment_PK PRIMARY KEY (PaymentID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
-- Create the Credit table
CREATE TABLE Credit (
CreditID INT NOT NULL,
CardNumber VARCHAR(16) NOT NULL,
ExpDate DATE NOT NULL,
CONSTRAINT Credit_PK PRIMARY KEY (CreditID),
FOREIGN KEY (CreditID) REFERENCES Payment(PaymentID)
);
-- Create the Cash table
CREATE TABLE Cash (
CashID INT NOT NULL,
CashAmount DECIMAL(10, 2) NOT NULL,
CONSTRAINT Cash_PK PRIMARY KEY (CashID),
FOREIGN KEY (CashID) REFERENCES Payment(PaymentID)
);
-- Create the Checks table
CREATE TABLE Checks (
CheckID INT NOT NULL,
AccountNumber VARCHAR(20) NOT NULL,
CONSTRAINT Checks_PK PRIMARY KEY (CheckID),
FOREIGN KEY (CheckID) REFERENCES Payment(PaymentID)
);
-- Create the PersonAddress table
CREATE TABLE PersonAddress (
PersonID INT NOT NULL,
AddressID INT NOT NULL,
AddrStatus VARCHAR(50) NOT NULL,
CONSTRAINT PersonAddr_PK PRIMARY KEY (PersonID, AddressID),
FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);
-- Create the Associated table
CREATE TABLE Associated (
ProcedureID INT NOT NULL,
AppointmentID INT NOT NULL,
Qtys INT NOT NULL,
CONSTRAINT Asscociated_PK PRIMARY KEY (ProcedureID, AppointmentID),
FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(ProcedureID),
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);
-- Create the InvoiceProcedure table
CREATE TABLE InvoiceProcedure (
ProcedureID INT NOT NULL,
InvoiceID INT NOT NULL,
QtyPerformed INT NOT NULL,
CONSTRAINT InvoicePro_PK PRIMARY KEY (ProcedureID, InvoiceID),
FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(ProcedureID),
FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);
-- Create the Applied table
CREATE TABLE Applied (
PaymentID INT NOT NULL,
InvoiceID INT NOT NULL,
Date DATE NOT NULL,
Amount DECIMAL(10, 2) NOT NULL,
CONSTRAINT Applied_PK PRIMARY KEY (PaymentID, InvoiceID),
FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID),
FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);
-- Create the Requires table
CREATE TABLE Requires (
ProcedureID INT NOT NULL,
InventoryID INT NOT NULL,
Quality VARCHAR(50) NOT NULL,
CONSTRAINT Requires_PK PRIMARY KEY (ProcedureID, InventoryID),
FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(ProcedureID),
FOREIGN KEY (InventoryID) REFERENCES Inventory(InventoryID)
);
-- Create the Performs table
CREATE TABLE Performs (
ProcedureID INT NOT NULL,
MedID INT NOT NULL,
Quantity INT NOT NULL,
CONSTRAINT Peforms_PK PRIMARY KEY (ProcedureID, MedID),
FOREIGN KEY (ProcedureID) REFERENCES DentalProcedure(ProcedureID),
FOREIGN KEY (MedID) REFERENCES Medical(MedID)
);
-- Create the AllergyHistory table
CREATE TABLE AllergyHistory (
AllergyID INT NOT NULL,
MedicalID INT NOT NULL,
Quantity INT NOT NULL,
Type VARCHAR(100) NOT NULL,
CONSTRAINT AllergyHist_PK PRIMARY KEY (AllergyID, MedicalID),
FOREIGN KEY (AllergyID) REFERENCES Allergies(AllergiesID),
FOREIGN KEY (MedicalID) REFERENCES MedicalRecord(MedicalID)
);
-- Create the MedicationHistory table
CREATE TABLE MedicationHistory (
MedicationID INT NOT NULL,
MedicalID INT NOT NULL,
Quantity INT NOT NULL,
Type VARCHAR(100) NOT NULL,
CONSTRAINT MedicationHIST_PK PRIMARY KEY (MedicationID, MedicalID),
FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID),
FOREIGN KEY (MedicalID) REFERENCES MedicalRecord(MedicalID)
);