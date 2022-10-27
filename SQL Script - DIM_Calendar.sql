/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] as Month
	  , LEFT([EnglishMonthName], 3) as MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as MonthNum
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      ,[FiscalQuarter] as QuaterFis
      ,[FiscalYear] as YearFis
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >=2019	