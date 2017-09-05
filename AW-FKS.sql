use adventureworks;

ALTER TABLE `Address` ADD CONSTRAINT `my_fk_0` FOREIGN KEY (`StateProvinceID`) REFERENCES `StateProvince` (`StateProvinceID`);
ALTER TABLE `BillOfMaterials` ADD CONSTRAINT `my_fk_1` FOREIGN KEY (`ProductAssemblyID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `BillOfMaterials` ADD CONSTRAINT `my_fk_2` FOREIGN KEY (`ComponentID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ContactCreditCard` ADD CONSTRAINT `my_fk_3` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE `ContactCreditCard` ADD CONSTRAINT `my_fk_4` FOREIGN KEY (`CreditCardID`) REFERENCES `CreditCard` (`CreditCardID`);
ALTER TABLE `Customer` ADD CONSTRAINT `my_fk_7` FOREIGN KEY (`TerritoryID`) REFERENCES `SalesTerritory` (`TerritoryID`);
ALTER TABLE `CustomerAddress` ADD CONSTRAINT `my_fk_8` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
ALTER TABLE `CustomerAddress` ADD CONSTRAINT `my_fk_9` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`);
ALTER TABLE `CustomerAddress` ADD CONSTRAINT `my_fk_10` FOREIGN KEY (`AddressTypeID`) REFERENCES `AddressType` (`AddressTypeID`);
ALTER TABLE `Employee` ADD CONSTRAINT `my_fk_11` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE `Employee` ADD CONSTRAINT `my_fk_12` FOREIGN KEY (`ManagerID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE `EmployeeAddress` ADD CONSTRAINT `my_fk_13` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE `EmployeeAddress` ADD CONSTRAINT `my_fk_14` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`);
ALTER TABLE `EmployeeDepartmentHistory` ADD CONSTRAINT `my_fk_15` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE  `department` CHANGE  `DepartmentID`  `DepartmentID` SMALLINT( 6 ) NOT NULL AUTO_INCREMENT ;
ALTER TABLE  `EmployeeDepartmentHistory` ADD CONSTRAINT  `my_fk_16` FOREIGN KEY (  `DepartmentID` ) REFERENCES  `Department` (  `DepartmentID` );
ALTER TABLE  `shift` CHANGE  `ShiftID`  `ShiftID` TINYINT( 4 ) NOT NULL AUTO_INCREMENT ;
ALTER TABLE `EmployeeDepartmentHistory` ADD CONSTRAINT `my_fk_17` FOREIGN KEY (`ShiftID`) REFERENCES `Shift` (`ShiftID`);
ALTER TABLE `EmployeePayHistory` ADD CONSTRAINT `my_fk_18` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE `Individual` ADD CONSTRAINT `my_fk_19` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
ALTER TABLE `Individual` ADD CONSTRAINT `my_fk_20` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE `JobCandidate` ADD CONSTRAINT `my_fk_21` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE `Product` ADD CONSTRAINT `my_fk_22` FOREIGN KEY (`ProductSubcategoryID`) REFERENCES `ProductSubCategory` (`ProductSubCategoryID`);
ALTER TABLE `Product` ADD CONSTRAINT `my_fk_23` FOREIGN KEY (`ProductModelID`) REFERENCES `ProductModel` (`ProductModelID`);
ALTER TABLE `ProductCostHistory` ADD CONSTRAINT `my_fk_24` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductDocument` ADD CONSTRAINT `my_fk_25` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductDocument` ADD CONSTRAINT `my_fk_26` FOREIGN KEY (`DocumentID`) REFERENCES `Document` (`DocumentID`);
ALTER TABLE `ProductInventory` ADD CONSTRAINT `my_fk_27` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE  `location` CHANGE  `LocationID`  `LocationID` SMALLINT( 6 ) NOT NULL AUTO_INCREMENT ;
ALTER TABLE  `ProductInventory` ADD CONSTRAINT  `my_fk_28` FOREIGN KEY (  `LocationID` ) REFERENCES  `Location` (  `LocationID` );
ALTER TABLE `ProductListPriceHistory` ADD CONSTRAINT `my_fk_29` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductModelIllustration` ADD CONSTRAINT `my_fk_30` FOREIGN KEY (`ProductModelID`) REFERENCES `ProductModel` (`ProductModelID`);
ALTER TABLE `ProductModelIllustration` ADD CONSTRAINT `my_fk_31` FOREIGN KEY (`IllustrationID`) REFERENCES `Illustration` (`IllustrationID`);
ALTER TABLE `ProductModelProductDescriptionCulture` ADD CONSTRAINT `my_fk_32` FOREIGN KEY (`ProductModelID`) REFERENCES `ProductModel` (`ProductModelID`);
ALTER TABLE `ProductModelProductDescriptionCulture` ADD CONSTRAINT `my_fk_33` FOREIGN KEY (`ProductDescriptionID`) REFERENCES `ProductDescription` (`ProductDescriptionID`);
ALTER TABLE `ProductModelProductDescriptionCulture` ADD CONSTRAINT `my_fk_34` FOREIGN KEY (`CultureID`) REFERENCES `Culture` (`CultureID`);
ALTER TABLE `ProductProductPhoto` ADD CONSTRAINT `my_fk_35` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductProductPhoto` ADD CONSTRAINT `my_fk_36` FOREIGN KEY (`ProductPhotoID`) REFERENCES `ProductPhoto` (`ProductPhotoID`);
ALTER TABLE `ProductReview` ADD CONSTRAINT `my_fk_37` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductSubcategory` ADD CONSTRAINT `my_fk_38` FOREIGN KEY (`ProductCategoryID`) REFERENCES `ProductCategory` (`ProductCategoryID`);
ALTER TABLE `ProductVendor` ADD CONSTRAINT `my_fk_39` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `ProductVendor` ADD CONSTRAINT `my_fk_40` FOREIGN KEY (`VendorID`) REFERENCES `Vendor` (`VendorID`);
ALTER TABLE  `purchaseorderheader` ADD PRIMARY KEY (  `PurchaseOrderID` ) ;
ALTER TABLE `PurchaseOrderDetail` ADD CONSTRAINT `my_fk_41` FOREIGN KEY (`PurchaseOrderID`) REFERENCES `PurchaseOrderHeader` (`PurchaseOrderID`);
ALTER TABLE `PurchaseOrderDetail` ADD CONSTRAINT `my_fk_42` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `PurchaseOrderHeader` ADD CONSTRAINT `my_fk_43` FOREIGN KEY (`EmployeeID`) REFERENCES `Employee` (`EmployeeID`);
ALTER TABLE `PurchaseOrderHeader` ADD CONSTRAINT `my_fk_44` FOREIGN KEY (`VendorID`) REFERENCES `Vendor` (`VendorID`);
ALTER TABLE `PurchaseOrderHeader` ADD CONSTRAINT `my_fk_45` FOREIGN KEY (`ShipMethodID`) REFERENCES `ShipMethod` (`ShipMethodID`);
ALTER TABLE `SalesOrderDetail` ADD CONSTRAINT `my_fk_46` FOREIGN KEY (`SalesOrderID`) REFERENCES `SalesOrderHeader` (`SalesOrderID`);
ALTER TABLE `SalesOrderDetail` ADD CONSTRAINT `my_fk_47` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `SalesOrderDetail` ADD CONSTRAINT `my_fk_48` FOREIGN KEY (`SpecialOfferID`) REFERENCES `SpecialOfferProduct` (`SpecialOfferID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_49` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_50` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_52` FOREIGN KEY (`TerritoryID`) REFERENCES `SalesTerritory` (`TerritoryID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_53` FOREIGN KEY (`BillToAddressID`) REFERENCES `Address` (`AddressID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_54` FOREIGN KEY (`ShipToAddressID`) REFERENCES `Address` (`AddressID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_55` FOREIGN KEY (`ShipMethodID`) REFERENCES `ShipMethod` (`ShipMethodID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_56` FOREIGN KEY (`CreditCardID`) REFERENCES `CreditCard` (`CreditCardID`);
ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_57` FOREIGN KEY (`CurrencyRateID`) REFERENCES `CurrencyRate` (`CurrencyRateID`);
ALTER TABLE `SalesOrderHeaderSalesReason` ADD CONSTRAINT `my_fk_58` FOREIGN KEY (`SalesOrderID`) REFERENCES `SalesOrderHeader` (`SalesOrderID`);
ALTER TABLE `SalesOrderHeaderSalesReason` ADD CONSTRAINT `my_fk_59` FOREIGN KEY (`SalesReasonID`) REFERENCES `SalesReason` (`SalesReasonID`);
ALTER TABLE `SalesPerson` ADD CONSTRAINT `my_fk_60` FOREIGN KEY (`TerritoryID`) REFERENCES `SalesTerritory` (`TerritoryID`);
ALTER TABLE `SalesPersonQuotaHistory` ADD CONSTRAINT `my_fk_61` FOREIGN KEY (`SalesPersonID`) REFERENCES `SalesPerson` (`SalesPersonID`);
ALTER TABLE `SalesTerritory` ADD CONSTRAINT `my_fk_62` FOREIGN KEY (`CountryRegionCode`) REFERENCES `CountryRegion` (`CountryRegionCode`);
ALTER TABLE `SalesTerritoryHistory` ADD CONSTRAINT `my_fk_63` FOREIGN KEY (`TerritoryID`) REFERENCES `SalesTerritory` (`TerritoryID`);
ALTER TABLE `ShoppingCartItem` ADD CONSTRAINT `my_fk_64` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `SpecialOfferProduct` ADD CONSTRAINT `my_fk_65` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `StateProvince` ADD CONSTRAINT `my_fk_66` FOREIGN KEY (`CountryRegionCode`) REFERENCES `CountryRegion` (`CountryRegionCode`);
ALTER TABLE `StateProvince` ADD CONSTRAINT `my_fk_67` FOREIGN KEY (`TerritoryID`) REFERENCES `SalesTerritory` (`TerritoryID`);
ALTER TABLE `Store` ADD CONSTRAINT `my_fk_68` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
ALTER TABLE `Store` ADD CONSTRAINT `my_fk_69` FOREIGN KEY (`SalesPersonID`) REFERENCES `SalesPerson` (`SalesPersonID`);
ALTER TABLE `StoreContact` ADD CONSTRAINT `my_fk_70` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);
ALTER TABLE `StoreContact` ADD CONSTRAINT `my_fk_71` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE `StoreContact` ADD CONSTRAINT `my_fk_72` FOREIGN KEY (`ContactTypeID`) REFERENCES `ContactType` (`ContactTypeID`);
ALTER TABLE `TransactionHistory` ADD CONSTRAINT `my_fk_73` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `TransactionHistoryArchive` ADD CONSTRAINT `my_fk_74` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `VendorAddress` ADD CONSTRAINT `my_fk_75` FOREIGN KEY (`VendorID`) REFERENCES `Vendor` (`VendorID`);
ALTER TABLE `VendorAddress` ADD CONSTRAINT `my_fk_76` FOREIGN KEY (`AddressID`) REFERENCES `Address` (`AddressID`);
ALTER TABLE `VendorAddress` ADD CONSTRAINT `my_fk_77` FOREIGN KEY (`AddressTypeID`) REFERENCES `AddressType` (`AddressTypeID`);
ALTER TABLE `VendorContact` ADD CONSTRAINT `my_fk_78` FOREIGN KEY (`ContactID`) REFERENCES `Contact` (`ContactID`);
ALTER TABLE  `scrapreason` CHANGE  `ScrapReasonID`  `ScrapReasonID` SMALLINT( 6 ) NOT NULL AUTO_INCREMENT ;
ALTER TABLE `WorkOrder` ADD CONSTRAINT `my_fk_79` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `WorkOrder` ADD CONSTRAINT `my_fk_80` FOREIGN KEY (`ScrapReasonID`) REFERENCES `ScrapReason` (`ScrapReasonID`);
ALTER TABLE `WorkOrderRouting` ADD CONSTRAINT `my_fk_81` FOREIGN KEY (`WorkOrderID`) REFERENCES `WorkOrder` (`WorkOrderID`);
ALTER TABLE `WorkOrderRouting` ADD CONSTRAINT `my_fk_82` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`);
ALTER TABLE `WorkOrderRouting` ADD CONSTRAINT `my_fk_83` FOREIGN KEY (`LocationID`) REFERENCES `Location` (`LocationID`);



-- -------------------The FK keys below will not execute in mysql------------------------------
-- ALTER TABLE `CountryRegionCurrency` ADD CONSTRAINT `my_fk_5` FOREIGN KEY (`CountryRegionCode`) REFERENCES `CountryRegion` (`CountryRegionCode`);
-- ALTER TABLE `CountryRegionCurrency` ADD CONSTRAINT `my_fk_6` FOREIGN KEY (`CurrencyCode`) REFERENCES `Currency` (`CurrencyCode`);
-- ALTER TABLE `SalesOrderHeader` ADD CONSTRAINT `my_fk_51` FOREIGN KEY (`SalesPersonID`) REFERENCES `SalesPerson` (`SalePersonID`);

