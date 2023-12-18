-- InsertQueries.txt
-- -- Insert data into the Person table
INSERT INTO Person (PersonID, FirstName, LastName, DOB, EmailAddress)
VALUES
(1, 'John', 'Doe', '1990-05-15', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '1985-09-23', 'jane.smith@example.com'),
13
(3, 'Michael', 'Johnson', '1978-12-10', 'michael.johnson@example.com'),
(4, 'Emily', 'Brown', '1992-07-02', 'emily.brown@example.com'),
(5, 'David', 'Wilson', '1982-03-27', 'david.wilson@example.com'),
(6, 'Sarah', 'Anderson', '1995-11-18', 'sarah.anderson@example.com'),
(7, 'Christopher', 'Taylor', '1989-08-04', 'christopher.taylor@example.com'),
(8, 'Olivia', 'Miller', '1984-06-09', 'olivia.miller@example.com'),
(9, 'Daniel', 'Thomas', '1998-02-14', 'daniel.thomas@example.com'),
(10, 'Sophia', 'Willow', '1991-10-22', 'sophia.jackson@example.com');
-- Insert data into the Patient table
INSERT INTO Patient (PatientID, DateSigned, NotSigned)
VALUES
(1, '2023-01-10', 'No'),
(2, '2022-11-30', 'Yes'),
(3, '2023-03-05', 'No'),
(4, '2023-02-18', 'Yes'),
(5, '2023-04-20', 'No'),
(6, '2023-06-08', 'Yes'),
(7, '2023-05-12', 'No'),
(8, '2023-07-01', 'Yes'),
(9, '2023-03-22', 'No'),
(10, '2023-06-30', 'No');
-- Insert data into the InsuranceCoverage table
INSERT INTO InsuranceCoverage (InsuranceID, AcceptedPolicyTypes)
VALUES
(1, 'Policy A'),
(2, 'Policy B'),
(3, 'Policy C'),
(4, 'Policy D'),
(5, 'Policy E'),
(6, 'Policy F'),
(7, 'Policy G'),
(8, 'Policy H'),
(9, 'Policy I'),
(10, 'Policy J');
-- Insert data into the InsurancePlan table
INSERT INTO InsurancePlan (InsurancePlanID, PlanName, InsuranceID)
VALUES
14
(1, 'Delta Dental Insurance', 1),
(2, 'Medicare', 2),
(3, 'Delta Dental Insurance', 3),
(4, 'Delta Dental Insurance', 4),
(5, 'Medicare', 5),
(6, 'Delta Dental Insurance', 6),
(7, 'Delta Dental Insurance', 7),
(8, 'Delta Dental Insurance', 8),
(9, 'Delta Dental Insurance', 9),
(10, 'Medicare', 10);
-- Insert data into the PatientInsurance table
INSERT INTO PatientInsurance (InsuranceID, InsuranceInfo)
VALUES
(1, 'Insurance info 1'),
(2, 'Insurance info 2'),
(3, 'Insurance info 3'),
(4, 'Insurance info 4'),
(5, 'Insurance info 5'),
(6, 'Insurance info 6'),
(7, 'Insurance info 7'),
(8, 'Insurance info 8'),
(9, 'Insurance info 9'),
(10, 'Insurance info 10');
-- Insert data into the Employee table
INSERT INTO Employee (EmployeeID, Salary)
VALUES
(1, 50000),
(2, 60000),
(3, 70000),
(4, 55000),
(5, 65000),
(6, 75000),
(7, 80000),
(8, 55000),
(9, 70000),
(10, 60000);
-- Insert data into the Address table
INSERT INTO Address (AddressID, Street, City, ZipCode, State)
VALUES
(1, '123 Main Street', 'New York', '10001', 'NY'),
(2, '456 Elm Avenue', 'Los Angeles', '90001', 'CA'),
(3, '789 Oak Lane', 'Chicago', '60601', 'IL'),
(4, '321 Maple Road', 'Houston', '77001', 'TX'),
(5, '987 Pine Street', 'Miami', '33101', 'FL'),
(6, '654 Cedar Drive', 'Seattle', '98101', 'WA'),
(7, '852 Walnut Avenue', 'Boston', '02101', 'MA'),
(8, '159 Spruce Lane', 'Atlanta', '30301', 'GA'),
(9, '753 Cherry Street', 'Denver', '80201', 'CO'),
(10, '369 Birch Road', 'Dallas', '75201', 'TX');
-- Insert data into the MedicalRecord table
INSERT INTO MedicalRecord (MedicalID, LastDate, PatientID)
VALUES
(1, '2023-06-25', 1),
(2, '2023-05-15', 2),
(3, '2023-06-30', 3),
(4, '2023-04-10', 4),
(5, '2023-05-22', 5),
(6, '2023-06-18', 6),
(7, '2023-05-30', 7),
(8, '2023-06-10', 8),
(9, '2023-04-05', 9),
(10, '2023-06-28', 10);
-- Insert data into the Allergies table
INSERT INTO Allergies (AllergiesID, Symptoms, AllergyName)
VALUES
(1, 'Rash', 'Allergy A'),
(2, 'Sneezing', 'Allergy B'),
(3, 'Itchy Eyes', 'Allergy C'),
(4, 'Coughing', 'Allergy D'),
(5, 'Swelling', 'Allergy E'),
(6, 'Runny Nose', 'Allergy F'),
(7, 'Difficulty Breathing', 'Allergy G'),
(8, 'Watery Eyes', 'Allergy H'),
(9, 'Hives', 'Allergy I'),
(10, 'Sore Throat', 'Allergy J');
16
-- Insert data into the Medication table
INSERT INTO Medication (MedicationID, MedicationName, DatePrescribed, Dosage)
VALUES
(1, 'Ibuprofen', '2022-05-15', 500),
(2, 'Ibuprofen', '2022-06-01', 200),
(3, 'Lidocaine', '2022-07-10', 2),
(4, 'Chlorhexidine Mouthwash', '2022-08-05', 15),
(5, 'Fluoride Gel', '2022-09-20', 1),
(6, 'Oxycodone', '2022-10-12', 5),
(7, 'Ibuprofen', '2022-11-30', 500),
(8, 'Naproxen', '2023-01-05', 220),
(9, 'Articaine', '2023-02-22', 4),
(10, 'Ibuprofen', '2023-03-15', 500);
-- Insert data into the EmergencyContact table
INSERT INTO EmergencyContact (EmergencyID, ContactName, ContactRelationship,
MedicalID)
VALUES
(1, 'Emergency Contact 1', 'Parent', 1),
(2, 'Emergency Contact 2', 'Spouse', 2),
(3, 'Emergency Contact 3', 'Sibling', 3),
(4, 'Emergency Contact 4', 'Friend', 4),
(5, 'Emergency Contact 5', 'Child', 5),
(6, 'Emergency Contact 6', 'Parent', 6),
(7, 'Emergency Contact 7', 'Spouse', 7),
(8, 'Emergency Contact 8', 'Sibling', 8),
(9, 'Emergency Contact 9', 'Friend', 9),
(10, 'Emergency Contact 10', 'Child', 10);
-- Insert data into the Medical table
INSERT INTO Medical (MedID, MedicalLicense)
VALUES
(1, 'License 1'),
(2, 'License 2'),
(3, 'License 3'),
(4, 'License 4'),
(5, 'License 5'),
(6, 'License 6'),
(7, 'License 7'),
(8, 'License 8'),
(9, 'License 9'),
(10, 'License 10');
-- Insert data into the NonMedical table
INSERT INTO NonMedical (NonMedID, Role)
VALUES
(1, 'Role 1'),
(2, 'Role 2'),
(3, 'Role 3'),
(4, 'Role 4'),
(5, 'Role 5'),
(6, 'Role 6'),
(7, 'Role 7'),
(8, 'Role 8'),
(9, 'Role 9'),
(10, 'Role 10');
-- Insert data into the DentalProcedure table
INSERT INTO DentalProcedure (ProcedureID, PerUnitCharge, ProcedureName,
ProcedureDate)
VALUES
(1, 100.00, 'Procedure A', '2023-07-01'),
(2, 150.00, 'Procedure B', '2023-05-15'),
(3, 200.00, 'Procedure C', '2023-06-20'),
(4, 120.00, 'Procedure D', '2023-03-05'),
(5, 180.00, 'Procedure E', '2023-12-28'),
(6, 130.00, 'Procedure F', '2023-11-12'),
(7, 170.00, 'Procedure G', '2023-07-02'),
(8, 160.00, 'Procedure H', '2023-06-25'),
(9, 140.00, 'Procedure I', '2023-06-18'),
(10, 190.00, 'Procedure J', '2023-06-30');
-- Insert data into the Inventory table
INSERT INTO Inventory (InventoryID, InventoryQty, UnitPrice, ItemName)
VALUES
(1, 10, 5.00, 'Item A'),
(2, 20, 8.00, 'Item B'),
(3, 15, 10.00, 'Item C'),
(4, 12, 6.00, 'Item D'),
(5, 18, 4.00, 'Item E'),
(6, 9, 7.00, 'Item F'),
(7, 17, 12.00, 'Item G'),
(8, 14, 9.00, 'Item H'),
(9, 11, 3.00, 'Item I'),
(10, 16, 6.00, 'Item J');
-- Insert data into the Appointments table
INSERT INTO Appointments (AppointmentID, Date, PatientID)
VALUES
(1, '2023-07-10', 1),
(2, '2023-07-12', 2),
(3, '2023-05-15', 3),
(4, '2023-03-11', 4),
(5, '2023-07-14', 5),
(6, '2023-08-16', 6),
(7, '2023-11-13', 7),
(8, '2023-02-17', 8),
(9, '2023-03-09', 9),
(10, '2023-06-18', 10);
-- Insert sample data into the BillingRecord table
INSERT INTO BillingRecord (BillingID, BillingDate, ProceduresPerformed,
SupervisingDoctor, Doctor, MedicalProfessional, AppointmentID)
VALUES
(1, '2023-07-10', 2, 'Dr. Smith', 'Dr. Smillow', 'Medical Professional 1', 1),
(2, '2023-07-12', 3, 'Dr. Brown', 'Dr. Wilson', 'Medical Professional 2', 2),
(3, '2023-07-15', 5, 'Dr. Anderson', 'Dr. Taylor', 'Medical Professional 3', 3),
(4, '2023-07-11', 4, 'Dr. Miller', 'Dr. Smillow', 'Medical Professional 4', 4),
(5, '2023-07-14', 2, 'Dr. Jackson', 'Dr. Smith', 'Medical Professional 5', 5),
(6, '2023-07-16', 1, 'Dr. Smillow', 'Dr. Brown', 'Medical Professional 6', 6),
(7, '2023-07-13', 3, 'Dr. Wilson', 'Dr. Anderson', 'Medical Professional 7', 7),
(8, '2023-07-17', 6, 'Dr. Smillow', 'Dr. Miller', 'Medical Professional 8', 8),
(9, '2023-07-09', 4, 'Dr. Thomas', 'Dr. Jackson', 'Medical Professional 9', 9),
(10, '2023-07-18', 3, 'Dr. Smith', 'Dr. Johnson', 'Medical Professional 10', 10);
-- Insert data into the BillingDetails table
INSERT INTO BillingDetails (BillingID, Status)
VALUES
(1, 'Cancelled'),
(2, 'Attended'),
(3, 'Attended'),
(4, 'Cancelled'),
(5, 'Cancelled'),
(6, 'Attended'),
(7, 'Cancelled'),
(8, 'Attended'),
(9, 'Cancelled'),
(10,'Attended');
-- Insert data into the AppointmentNotes table
INSERT INTO AppointmentNotes (NoteID, NoteDate, NoteText, AppointmentID)
VALUES
(1, '2023-02-10', 'Note 1 for Appointment 1', 1),
(2, '2023-04-12', 'Note 2 for Appointment 2', 2),
(3, '2023-04-15', 'Note 3 for Appointment 3', 3),
(4, '2023-056-11', 'Note 4 for Appointment 4', 4),
(5, '2023-05-14', 'Note 5 for Appointment 5', 5),
(6, '2023-06-16', 'Note 6 for Appointment 6', 6),
(7, '2023-07-13', 'Note 7 for Appointment 7', 7),
(8, '2023-08-17', 'Note 8 for Appointment 8', 8),
(9, '2023-07-09', 'Note 9 for Appointment 9', 9),
(10, '2023-07-18', 'Note 10 for Appointment 10', 10);
-- Insert data into the Invoice table
INSERT INTO Invoice (InvoiceID, QtyOfProcedures, InvoiceDate, AppointmentID,
InsuranceID)
VALUES
(1, 2, '2023-05-10', 1, 1),
(2, 2, '2023-06-12', 2, 2),
(3, 2, '2023-06-15', 3, 3),
(4, 2, '2023-04-11', 4, 4),
(5, 2, '2023-05-14', 5, 5),
(6, 3, '2023-03-16', 6, 6),
(7, 3, '2023-02-13', 7, 7),
(8, 3, '2023-01-17', 8, 8),
(9, 3, '2023-07-09', 9, 9),
(10, 3, '2023-07-18', 10, 10);
-- Insert data into the Payment table
INSERT INTO Payment (PaymentID, PaymentAmount, PaymentDate, PatientID,
CreditID)
VALUES
(1, 100.00, '2023-07-10', 1, 1),
(2, 150.00, '2023-07-12', 2, 2),
(3, 200.00, '2023-07-15', 3, 3),
(4, 120.00, '2023-07-11', 4, 4),
(5, 180.00, '2023-07-14', 5, 5),
(6, 130.00, '2023-07-16', 6, 6),
(7, 170.00, '2023-07-13', 7, 7),
(8, 160.00, '2023-07-17', 8, 8),
(9, 140.00, '2023-07-09', 9, 9),
(10, 190.00, '2023-07-18', 10, 10);
-- Insert data into the Credit table
INSERT INTO Credit (CreditID, CardNumber, ExpDate)
VALUES
(1, '1234567812345678', '2025-12-31'),
(2, '2345678923456789', '2024-11-30'),
(3, '3456789034567890', '2025-09-30'),
(4, '4567890145678901', '2024-08-31'),
(5, '5678901256789012', '2025-07-31'),
(6, '6789012367890123', '2024-06-30'),
(7, '7890123478901234', '2025-05-31'),
(8, '8901234589012345', '2024-04-30'),
(9, '9012345690123456', '2025-03-31'),
(10, '0123456701234567', '2024-02-29');
-- Insert data into the Cash table
INSERT INTO Cash (CashID, CashAmount)
VALUES
(1, 50.00),
(2, 75.00),
(3, 100.00),
(4, 60.00),
(5, 90.00),
(6, 65.00),
(7, 85.00),
(8, 80.00),
(9, 70.00),
(10, 95.00);
-- Insert data into the Checks table
INSERT INTO Checks (CheckID, AccountNumber)
VALUES
(1, '111111561111'),
(2, '222962222222'),
(3, '333334093333'),
(4, '444449344444'),
(5, '555389555555'),
(6, '666698266666'),
(7, '774546765777'),
(8, '888594884888'),
(9, '990584849999'),
(10, '00173800300');
-- Insert data into the PersonAddress table
INSERT INTO PersonAddress (PersonID, AddressID, AddrStatus)
VALUES
(1, 1, 'Primary'),
(2, 2, 'Secondary'),
(3, 3, 'Primary'),
(4, 4, 'Primary'),
(5, 5, 'Secondary'),
(6, 6, 'Primary'),
(7, 7, 'Primary'),
(8, 8, 'Primary'),
(9, 9, 'Primary'),
(10, 10, 'Primary');
-- Insert data into the Associated table
INSERT INTO Associated (ProcedureID, AppointmentID, Qtys)
VALUES
(1, 1, 4),
(2, 2, 10),
(3, 3, 1),
(4, 4, 3),
(5, 5, 5),
(6, 6, 1),
(7, 7, 6),
(8, 8, 3),
(9, 9, 1),
(10, 10, 2);
-- Insert data into the InvoiceProcedure table
INSERT INTO InvoiceProcedure (ProcedureID, InvoiceID, QtyPerformed)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 60),
(5, 5, 2),
(6, 6, 1),
(7, 7, 20),
(8, 8, 3),
(9, 9, 10),
(10, 10, 2);
-- Insert data into the Applied table
INSERT INTO Applied (PaymentID, InvoiceID, Date, Amount)
VALUES
(1, 1, '2023-05-10', 100.00),
(2, 2, '2023-11-12', 150.00),
(3, 3, '2023-10-15', 200.00),
(4, 4, '2023-04-11', 120.00),
(5, 5, '2023-08-14', 180.00),
(6, 6, '2023-03-16', 130.00),
(7, 7, '2023-02-13', 170.00),
(8, 8, '2023-07-17', 160.00),
(9, 9, '2023-07-09', 140.00),
(10, 10, '2023-07-18', 190.00);
-- Insert data into the Requires table
INSERT INTO Requires (ProcedureID, InventoryID, Quality)
VALUES
(1, 1, 'Best'),
(1, 2, 'Best'),
(2, 3, 'Good'),
(2, 4, 'Good'),
(3, 5, 'Best'),
(3, 6, 'Worst'),
(4, 7, 'Worst'),
(4, 8, 'Worst'),
(5, 9, 'Good'),
(5, 10, 'Good');
-- Insert data into the Performs table
INSERT INTO Performs (ProcedureID, MedID, Quantity)
VALUES
(1, 1, 5),
(1, 2, 10),
(2, 3, 8),
(2, 4, 12),
(3, 5, 6),
(3, 6, 15),
(4, 7, 10),
(4, 8, 18),
(5, 9, 7),
(5, 10, 14);
-- Insert data into the AllergyHistory table
INSERT INTO AllergyHistory (AllergyID, MedicalID, Quantity, Type)
VALUES
(1, 1, 3, 'Type A'),
(1, 2, 2, 'Type B'),
(2, 3, 4, 'Type C'),
(2, 4, 5, 'Type D'),
(3, 5, 1, 'Type E'),
(3, 6, 2, 'Type F'),
(4, 7, 3, 'Type G'),
(4, 8, 4, 'Type H'),
(5, 9, 2, 'Type I'),
(5, 10, 5, 'Type J');
-- Insert data into the MedicationHistory table
INSERT INTO MedicationHistory (MedicationID, MedicalID, Quantity, Type)
VALUES
(1, 1, 10, 'Liquid'),
(1, 2, 8, 'Pill'),
(2, 3, 12, 'Pill'),
(2, 4, 10, 'Liquid'),
(3, 5, 6, 'Liquid'),
(3, 6, 15, 'Pill'),
(4, 7, 9, 'Spray'),
(4, 8, 10, 'Pill'),
(5, 9, 5, 'Spray'),
(5, 10, 12, 'Liquid');