
PRINT N'Creating [SalesLT].[vAllCustomers]...';


GO
CREATE VIEW [SalesLT].[vAllCustomers]
    AS SELECT * FROM [SalesLT].[Customer]
GO
PRINT N'Update complete.';


GO
