-- SimpleQueries.txt
-- Query A
SELECT P.LastName, M.MedicationName, M.DatePrescribed, M.Dosage
FROM Person AS P, Medication AS M, Patient AS PT
WHERE PT.PatientID = P.PersonID
AND M.MedicationID = PT.PatientID
ORDER BY P.LastName, M.MedicationName;
-- Query B
SELECT p.FirstName, p.LastName, p.DOB, p.EmailAddress
FROM Person P, InsurancePlan IP, Patient PT, InsuranceCoverage IC
WHERE P.PersonID = IP.InsuranceID
AND IP.InsurancePlanID = PT.PatientID
AND IC.InsuranceID = IP.InsurancePlanID
AND IP.PlanName = 'Delta Dental Insurance';
-- Query C
SELECT DP.ProcedureName, DP.ProcedureDate, BR.Doctor
FROM DentalProcedure DP, BillingRecord BR, Medical M
WHERE DP.ProcedureID = BR.BillingID
AND DP.ProcedureID = M.MedID
AND M.MedID = BR.BillingID
AND BR.Doctor = 'Dr. Smillow';
-- Query D
-- Distinct helps ensure only one record per person is returned
SELECT DISTINCT P.FirstName, P.LastName, P.EmailAddress, I.InvoiceDate
FROM Person P, Patient PT, Invoice I, Appointments AP, Applied A
WHERE P.PersonID = PT.PatientID
AND AP.AppointmentID = PT.PatientID
AND I.AppointmentID = AP.AppointmentID
AND I.InvoiceDate < '2023-07-12'
AND A.AMOUNT > 10;
-- Query E
SELECT P.FirstName, P.LastName, P.EmailAddress, SUM(PY.PaymentAmount) AS
TotalRevenue
FROM Person P, Patient PT, Payment PY
WHERE P.PersonID = PT.PatientID
AND PY.PatientID = PT.PatientID
AND PY.PaymentDate < CURRENT_DATE
GROUP BY P.FirstName, P.LastName, P.EmailAddress
-- Query F
SELECT DISTINCT Person.firstname, Person.lastname,
BillingRecord.proceduresperformed
FROM Person, BillingRecord
WHERE Person.PersonID = BillingRecord.BillingID
AND proceduresperformed < 5
GROUP BY lastname
-- Query G
SELECT procedurename, perunitcharge, InvoiceProcedure.QtyPerformed
FROM DentalProcedure, InvoiceProcedure
WHERE DentalProcedure.ProcedureID = InvoiceProcedure.ProcedureID
ORDER BY perunitcharge DESC
-- Query H
SELECT 'Card', SUM(PaymentAmount) AS TotalAmount, COUNT(P.creditid) AS USED
FROM Payment P, Credit CR, Cash CA, Checks CH
WHERE P.PaymentID = CR.CreditID
AND P.PaymentID = CA.CashID
AND P.PaymentID = CH.CheckID
-- Query I
SELECT IP.PlanName, COUNT(*) AS UsageCount
FROM InsurancePlan IP, PatientInsurance PI
WHERE IP.InsuranceID = PI.InsuranceID
AND Ip.planname = 'Delta Dental Insurance'