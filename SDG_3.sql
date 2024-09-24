SELECT Location, COUNT(*) AS MaternalDeaths
FROM MaternalMortalityRecords AS MMR
JOIN Patients AS P ON MMR.PatientID = P.PatientID
WHERE P.Location LIKE 'Rural%'
GROUP BY Patients;
