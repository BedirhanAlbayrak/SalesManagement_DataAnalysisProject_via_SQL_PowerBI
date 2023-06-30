--Cleaned DimProduct Table--


SELECT 
  p.[ProductKey] AS [Product Key], 
  p.[ProductAlternateKey] AS [Product Alternate Key] 
  --[ProductSubcategoryKey]
  --[WeightUnitMeasureCode]
  --[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] AS [Product Name], 
  pc.ProductCategoryKey AS [Product Key],               -- Joined Product Sub Category Key information from Product Sub Category Table
  ps.ProductSubcategoryKey AS [Product Subcategory Key], -- Joined Prodcut Category Key information from Product Category Table
  pc.EnglishProductCategoryName AS [Product Category]
  --[SpanishProductName]
  --[FrenchProductName]
  --[StandardCost]
  --[FinishedGoodsFlag]
  , 
  p.[Color] AS [Product Color] 
  --[SafetyStockLevel]
  --[ReorderPoint]
  --[ListPrice]
  , 
  p.[Size] AS [Product Size] 
  --[SizeRange]
  --[Weight]
  --[DaysToManufacture]
  , 
  p.[ProductLine] AS [Product Line] 
  --[DealerPrice]
  --[Class]
  --[Style]
  --[ModelName]
  --[LargePhoto]
  , 
  p.[EnglishDescription] AS [Product Description] 
  --[FrenchDescription]
  --[ChineseDescription]
  --[ArabicDescription]
  --[HebrewDescription]
  --[ThaiDescription]
  --[GermanDescription]
  --[JapaneseDescription]
  --[TurkishDescription]
  --[StartDate]
  --[EndDate]
  --[Status]
  , 
  ISNULL (p.Status, 'Outdated') AS [Prodcut Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey         

