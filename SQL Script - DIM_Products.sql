/****** Script for SelectTopNRows command from SSMS  ******/
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductCode
      ,p.[ProductSubcategoryKey] as ProductSubcategoryKey
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      ,p.[StandardCost] as CostPrice 
      --,[FinishedGoodsFlag]
      ,p.[Color] as ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as ProductLine
      ,p.[DealerPrice] as DealerPrice
      --,[Class]
      --,[Style]
      ,p.[ModelName] as ProductModelName
      --,[LargePhoto]
      ,p.[EnglishDescription] as ProductDes
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (p.[Status], 'Outdated') as ProductStatus
	  ,pc.[EnglishProductCategoryName] as ProductCatName
	  ,ps.[EnglishProductSubcategoryName] as ProductSubCatName
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  JOIN dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
  ORDER BY  p.ProductKey asc