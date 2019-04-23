/******* Archival Procedure SQL DB*************
Proc Name: usp_getDatafrArchival
Schema : dataArchival
Author :Alivia Banerjee
Create Date:20190327
Last Modified :20190328

*****************************************/

IF OBJECT_ID (N'dataArchival.usp_getDatafrArchival', N'P') IS NOT NULL 
DROP PROC dataArchival.usp_getDatafrArchival
GO
CREATE PROC dataArchival.usp_getDatafrArchival 
(
	@SourceTableName		varchar(500),
	@ArchSourceTSField		varchar(200),
	@StartDate				VARCHAR(50),
	@EndDate				VARCHAR(50)--- included
	
)
AS
BEGIN
--- Declare block
	DECLARE  @sql varchar(1000)
	
	SELECT @sql ='SELECT * FROM '+@SourceTableName +
	             ' WHERE '+@ArchSourceTSField +
				 ' BETWEEN '''+@StartDate+''' AND '''+@EndDate+''''

    PRINT @sql

    exec(@sql) 	
			
	

END


