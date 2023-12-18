- ExtraQueries.txt
-- List of items needed for a procedure
SELECT itemname, Inventory.inventoryid, DentalProcedure.procedureid,
procedurename, quality
FROM Inventory, DentalProcedure
JOIN Requires ON DentalProcedure.procedureid=Requires.ProcedureID
-- List of employees and their emergency contacts
SELECT M.MedID, EC.emergencyid, EC.ContactName, EC.ContactRelationship
FROM Medical M
FULL OUTER JOIN EmergencyContact EC
ON M.medid = EC.MedicalID
-- List of appointment notes from a certain day and patient
SELECT Appointments.AppointmentID, Appointments.patientid, AppointmentNotes.*
From Appointments
JOIN AppointmentNotes ON
AppointmentNotes.AppointmentID=Appointments.appointmentid
WHERE AppointmentNotes.NoteDate="2023-07-09"
AND Appointments.patientid=9
