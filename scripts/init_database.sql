/*
AVISO:
    Executar este script excluirá todo o banco de dados 'DataWarehouse' se ele existir.
    Todos os dados no banco de dados serão permanentemente excluídos. Prossiga com cautela
    e certifique-se de ter backups adequados antes de executar este script.
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
