/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  c.[CustomerKey] as CustomerKey
      --,[GeographyKey]
      ,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as FirstName
      --,[MiddleName]
      ,c.[LastName] as LastName
	  ,c.FirstName + ' ' + c.LastName as FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
	  ,CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[Suffix]
      --,c.[Gender] as Gender
      --,[EmailAddress]
      ,c.[YearlyIncome] as YearlyIncome
      ,c.[TotalChildren] as TotalChildren
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] as DateFirstPurchase
      --,[CommuteDistance]
	  ,g.[City] as [Customer City]
	  ,g.[StateProvinceCode] as [State Province Code]
	  ,g.[CountryRegionCode] as [Country Region Code] 
	  ,g.[StateProvinceName] as [State Province Name]
	  ,g.[EnglishCountryRegionName] as [Country Region Name]
	
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
  ORDER BY CustomerKey ASC