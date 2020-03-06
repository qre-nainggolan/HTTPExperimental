USE [WB-PGS]
GO
CREATE VIEW v_vehiclesecurity
AS
	SELECT 
		[wb_security].[dbo].[TRS_Vehicle].[Mill] AS MILL 
      ,[wb_security].[dbo].[TRS_Vehicle].[VehicleNo] AS VehicleNo 
      ,[wb_security].[dbo].[TRS_Vehicle].[TripDate] AS TripDate , 
		COUNT(*) AS TOTAL 
  FROM [wb_security].[dbo].[TRS_Vehicle] 
  GROUP BY [wb_security].[dbo].[TRS_Vehicle].[Mill]
      ,[wb_security].[dbo].[TRS_Vehicle].[VehicleNo]
      ,[wb_security].[dbo].[TRS_Vehicle].[TripDate] 
ORDER BY MILL , VehicleNo, TripDate 

  -- SELECT * FROM v_vehiclesecurity

/*
	public string No_Tiket
	public string Mill
	public Datetime TripDate
	public string VehicleNo
	public string Driver
	public string Supplier
	public string PostIn
	public string PostOut
	public string SecurityIn
	public string SecurityOut
	public DateTime DateIn
	public DateTime DateOut
	public byte[] PictureIn
	public byte[] PictureOut
*/