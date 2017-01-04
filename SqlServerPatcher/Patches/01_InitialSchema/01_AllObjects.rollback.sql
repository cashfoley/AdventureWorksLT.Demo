
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_OrderID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_OrderID];


GO
PRINT N'Dropping [SalesLT].[DF_Customer_NameStyle]...';


GO
ALTER TABLE [SalesLT].[Customer] DROP CONSTRAINT [DF_Customer_NameStyle];


GO
PRINT N'Dropping [SalesLT].[DF_Customer_rowguid]...';


GO
ALTER TABLE [SalesLT].[Customer] DROP CONSTRAINT [DF_Customer_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_Customer_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[Customer] DROP CONSTRAINT [DF_Customer_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_ProductModel_rowguid]...';


GO
ALTER TABLE [SalesLT].[ProductModel] DROP CONSTRAINT [DF_ProductModel_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_ProductModel_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[ProductModel] DROP CONSTRAINT [DF_ProductModel_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_ProductDescription_rowguid]...';


GO
ALTER TABLE [SalesLT].[ProductDescription] DROP CONSTRAINT [DF_ProductDescription_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_ProductDescription_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[ProductDescription] DROP CONSTRAINT [DF_ProductDescription_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_Product_rowguid]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [DF_Product_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_Product_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [DF_Product_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_ProductModelProductDescription_rowguid]...';


GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] DROP CONSTRAINT [DF_ProductModelProductDescription_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_ProductModelProductDescription_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] DROP CONSTRAINT [DF_ProductModelProductDescription_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_ProductCategory_rowguid]...';


GO
ALTER TABLE [SalesLT].[ProductCategory] DROP CONSTRAINT [DF_ProductCategory_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_ProductCategory_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[ProductCategory] DROP CONSTRAINT [DF_ProductCategory_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_Address_rowguid]...';


GO
ALTER TABLE [SalesLT].[Address] DROP CONSTRAINT [DF_Address_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_Address_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[Address] DROP CONSTRAINT [DF_Address_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_CustomerAddress_rowguid]...';


GO
ALTER TABLE [SalesLT].[CustomerAddress] DROP CONSTRAINT [DF_CustomerAddress_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_CustomerAddress_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[CustomerAddress] DROP CONSTRAINT [DF_CustomerAddress_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderDetail_UnitPriceDiscount]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [DF_SalesOrderDetail_UnitPriceDiscount];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderDetail_rowguid]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [DF_SalesOrderDetail_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderDetail_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [DF_SalesOrderDetail_ModifiedDate];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_RevisionNumber]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_RevisionNumber];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_OrderDate]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_OrderDate];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_Status]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_Status];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_OnlineOrderFlag]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_OnlineOrderFlag];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_SubTotal]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_SubTotal];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_TaxAmt]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_TaxAmt];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_Freight]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_Freight];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_rowguid]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_rowguid];


GO
PRINT N'Dropping [SalesLT].[DF_SalesOrderHeader_ModifiedDate]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [DF_SalesOrderHeader_ModifiedDate];


GO
PRINT N'Dropping [dbo].[DF_BuildVersion_ModifiedDate]...';


GO
ALTER TABLE [dbo].[BuildVersion] DROP CONSTRAINT [DF_BuildVersion_ModifiedDate];


GO
PRINT N'Dropping [dbo].[DF_ErrorLog_ErrorTime]...';


GO
ALTER TABLE [dbo].[ErrorLog] DROP CONSTRAINT [DF_ErrorLog_ErrorTime];


GO
PRINT N'Dropping [SalesLT].[FK_CustomerAddress_Customer_CustomerID]...';


GO
ALTER TABLE [SalesLT].[CustomerAddress] DROP CONSTRAINT [FK_CustomerAddress_Customer_CustomerID];


GO
PRINT N'Dropping [SalesLT].[FK_SalesOrderHeader_Customer_CustomerID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID];


GO
PRINT N'Dropping [SalesLT].[FK_Product_ProductModel_ProductModelID]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [FK_Product_ProductModel_ProductModelID];


GO
PRINT N'Dropping [SalesLT].[FK_ProductModelProductDescription_ProductModel_ProductModelID]...';


GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] DROP CONSTRAINT [FK_ProductModelProductDescription_ProductModel_ProductModelID];


GO
PRINT N'Dropping [SalesLT].[FK_ProductModelProductDescription_ProductDescription_ProductDescriptionID]...';


GO
ALTER TABLE [SalesLT].[ProductModelProductDescription] DROP CONSTRAINT [FK_ProductModelProductDescription_ProductDescription_ProductDescriptionID];


GO
PRINT N'Dropping [SalesLT].[FK_SalesOrderDetail_Product_ProductID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [FK_SalesOrderDetail_Product_ProductID];


GO
PRINT N'Dropping [SalesLT].[FK_Product_ProductCategory_ProductCategoryID]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [FK_Product_ProductCategory_ProductCategoryID];


GO
PRINT N'Dropping [SalesLT].[FK_ProductCategory_ProductCategory_ParentProductCategoryID_ProductCategoryID]...';


GO
ALTER TABLE [SalesLT].[ProductCategory] DROP CONSTRAINT [FK_ProductCategory_ProductCategory_ParentProductCategoryID_ProductCategoryID];


GO
PRINT N'Dropping [SalesLT].[FK_CustomerAddress_Address_AddressID]...';


GO
ALTER TABLE [SalesLT].[CustomerAddress] DROP CONSTRAINT [FK_CustomerAddress_Address_AddressID];


GO
PRINT N'Dropping [SalesLT].[FK_SalesOrderHeader_Address_BillTo_AddressID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [FK_SalesOrderHeader_Address_BillTo_AddressID];


GO
PRINT N'Dropping [SalesLT].[FK_SalesOrderHeader_Address_ShipTo_AddressID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [FK_SalesOrderHeader_Address_ShipTo_AddressID];


GO
PRINT N'Dropping [SalesLT].[FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID];


GO
PRINT N'Dropping [SalesLT].[CK_Product_ListPrice]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [CK_Product_ListPrice];


GO
PRINT N'Dropping [SalesLT].[CK_Product_SellEndDate]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [CK_Product_SellEndDate];


GO
PRINT N'Dropping [SalesLT].[CK_Product_StandardCost]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [CK_Product_StandardCost];


GO
PRINT N'Dropping [SalesLT].[CK_Product_Weight]...';


GO
ALTER TABLE [SalesLT].[Product] DROP CONSTRAINT [CK_Product_Weight];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderDetail_OrderQty]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [CK_SalesOrderDetail_OrderQty];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderDetail_UnitPrice]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [CK_SalesOrderDetail_UnitPrice];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderDetail_UnitPriceDiscount]...';


GO
ALTER TABLE [SalesLT].[SalesOrderDetail] DROP CONSTRAINT [CK_SalesOrderDetail_UnitPriceDiscount];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_DueDate]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_DueDate];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_Freight]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_Freight];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_ShipDate]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_ShipDate];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_Status]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_Status];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_SubTotal]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_SubTotal];


GO
PRINT N'Dropping [SalesLT].[CK_SalesOrderHeader_TaxAmt]...';


GO
ALTER TABLE [SalesLT].[SalesOrderHeader] DROP CONSTRAINT [CK_SalesOrderHeader_TaxAmt];


GO
PRINT N'Dropping [SalesLT].[Address]...';


GO
DROP TABLE [SalesLT].[Address];


GO
PRINT N'Dropping [SalesLT].[CustomerAddress]...';


GO
DROP TABLE [SalesLT].[CustomerAddress];


GO
PRINT N'Dropping [SalesLT].[SalesOrderDetail]...';


GO
DROP TABLE [SalesLT].[SalesOrderDetail];


GO
PRINT N'Dropping [SalesLT].[SalesOrderHeader]...';


GO
DROP TABLE [SalesLT].[SalesOrderHeader];


GO
PRINT N'Dropping [dbo].[BuildVersion]...';


GO
DROP TABLE [dbo].[BuildVersion];


GO
PRINT N'Dropping [dbo].[ufnGetSalesOrderStatusText]...';


GO
DROP FUNCTION [dbo].[ufnGetSalesOrderStatusText];


GO
PRINT N'Dropping [dbo].[ufnGetCustomerInformation]...';


GO
DROP FUNCTION [dbo].[ufnGetCustomerInformation];


GO
PRINT N'Dropping [SalesLT].[Customer]...';


GO
DROP TABLE [SalesLT].[Customer];


GO
PRINT N'Dropping [dbo].[ufnGetAllCategories]...';


GO
DROP FUNCTION [dbo].[ufnGetAllCategories];


GO
PRINT N'Dropping [SalesLT].[vProductAndDescription].[IX_vProductAndDescription]...';


GO
DROP INDEX [IX_vProductAndDescription]
    ON [SalesLT].[vProductAndDescription];


GO
PRINT N'Dropping [SalesLT].[vProductAndDescription]...';


GO
DROP VIEW [SalesLT].[vProductAndDescription];


GO
PRINT N'Dropping [SalesLT].[ProductDescription]...';


GO
DROP TABLE [SalesLT].[ProductDescription];


GO
PRINT N'Dropping [SalesLT].[Product]...';


GO
DROP TABLE [SalesLT].[Product];


GO
PRINT N'Dropping [SalesLT].[ProductModelProductDescription]...';


GO
DROP TABLE [SalesLT].[ProductModelProductDescription];


GO
PRINT N'Dropping [SalesLT].[vGetAllCategories]...';


GO
DROP VIEW [SalesLT].[vGetAllCategories];


GO
PRINT N'Dropping [SalesLT].[vProductModelCatalogDescription]...';


GO
DROP VIEW [SalesLT].[vProductModelCatalogDescription];


GO
PRINT N'Dropping [SalesLT].[ProductModel]...';


GO
DROP TABLE [SalesLT].[ProductModel];


GO
PRINT N'Dropping [SalesLT].[ProductCategory]...';


GO
DROP TABLE [SalesLT].[ProductCategory];


GO
PRINT N'Dropping [dbo].[uspLogError]...';


GO
DROP PROCEDURE [dbo].[uspLogError];


GO
PRINT N'Dropping [dbo].[uspPrintError]...';


GO
DROP PROCEDURE [dbo].[uspPrintError];


GO
PRINT N'Dropping [dbo].[ErrorLog]...';


GO
DROP TABLE [dbo].[ErrorLog];


GO
PRINT N'Dropping [dbo].[AccountNumber]...';


GO
DROP TYPE [dbo].[AccountNumber];


GO
PRINT N'Dropping [dbo].[Flag]...';


GO
DROP TYPE [dbo].[Flag];


GO
PRINT N'Dropping [dbo].[Name]...';


GO
DROP TYPE [dbo].[Name];


GO
PRINT N'Dropping [dbo].[NameStyle]...';


GO
DROP TYPE [dbo].[NameStyle];


GO
PRINT N'Dropping [dbo].[OrderNumber]...';


GO
DROP TYPE [dbo].[OrderNumber];


GO
PRINT N'Dropping [dbo].[Phone]...';


GO
DROP TYPE [dbo].[Phone];


GO
PRINT N'Dropping [SalesLT].[SalesOrderNumber]...';


GO
DROP SEQUENCE [SalesLT].[SalesOrderNumber];


GO
PRINT N'Dropping [SalesLT]...';


GO
DROP SCHEMA [SalesLT];


GO
PRINT N'Update complete.';


GO
