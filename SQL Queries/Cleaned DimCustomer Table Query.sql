--Cleaned DimCustomer Table--


SELECT 
  c.[CustomerKey] AS [Customer Key]
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  --[FirstName]
  --[MiddleName]
  --[LastName]
  , 
  CONCAT(c.FirstName, ' ', c.MiddleName, ' ', c.LastName) AS [Customer Name] -- Concatenating customer's first, middle and last name colums on one column.
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  --[Gender]
  , 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Famale' END AS Gender 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  , 
  c.[DateFirstPurchase] AS [Date First Purchase] 
  --[CommuteDistance]
  , 
  g.City AS [Customer City] -- Joined Customer's City information from Geography Table.
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN DimGeography AS g on c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey



