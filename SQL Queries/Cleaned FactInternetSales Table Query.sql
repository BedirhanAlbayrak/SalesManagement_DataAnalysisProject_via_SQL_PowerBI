--Cleaned FactInternetSales Table--


SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey] 
  --[PromotionKey]
  --[CurrencyKey]
  --[SalesTerritoryKey]
  , 
  [SalesOrderNumber] 
  --[SalesOrderLineNumber]
  --[RevisionNumber]
  --[OrderQuantity]
  --[UnitPrice]
  --[ExtendedAmount]
  --[UnitPriceDiscountPct]
  --[DiscountAmount]
  --[ProductStandardCost]
  --[TotalProductCost]
  , 
  [SalesAmount] 
  --[TaxAmt]
  --[Freight]
  --[CarrierTrackingNumber]
  --[CustomerPONumber]
  --[OrderDate]
  --[DueDate]
  --[ShipDate]
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDate, 4) >= '2021' -- Ensures that bring only 2021 and after dated data because we are focusing last 2 year for sales analys.
ORDER BY 
  OrderDateKey ASC
