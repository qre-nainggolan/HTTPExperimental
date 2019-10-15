SELECT Estate, YEAR(InspectionDate) AS Year, MONTH(InspectionDate) AS Month, DAY(InspectionDate) AS DAY, InspectionDate, Shift, Employee1 AS Petugas1, COUNT(employee1) AS DiperiksaPetugas1, Employee2 AS Petugas2, COUNT(employee2) AS DiperiksaPetugas2 FROM aa_tblcontrol WHERE estate = 'KTZ' AND YEAR(InspectionDate) = '2019' AND Month(InspectionDate) = '10' GROUP BY InspectionDate, Employee1, Employee2 ORDER BY InspectionDate ASC


https://www.oracle.com/technetwork/database/windows/utilsoft-096155.html
