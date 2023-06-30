--Cleaned DimDate Table--


SELECT 
  [DateKey] AS [Date Key]
  ,[FullDateAlternateKey] AS DATE 
  --[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] AS DAY 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]  
  --[DayNumberOfMonth]
  --[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS [Week Number], 
  [EnglishMonthName] AS Month 
  --[SpanishMonthName]
  --[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS [Month Number], 
  [CalendarQuarter] AS Quarter,
  [CalendarYear] AS YEAR
  --[CalendarSemester]
  --[FiscalQuarter]
  --[FiscalYear]
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2021
