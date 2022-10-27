/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,fis.[OrderDateKey]
      ,fis.[DueDateKey]
      ,fis.[ShipDateKey]
      ,fis.[CustomerKey]
      --,fis.[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,fis.[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,fis.[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
	  , sr.[SalesReasonName] as SalesReason
	  , sr.[SalesReasonReasonType] as SalesReasonType
	  ,p.[EnglishPromotionType] as PromotionType
	  ,p.[EnglishPromotionCategory] as PromotionCategory
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] as fis
  LEFT JOIN [AdventureWorksDW2019].[dbo].[FactInternetSalesReason] as fisr
  ON fis.SalesOrderNumber = fisr.SalesOrderNumber
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimSalesReason] as sr
  ON fisr.SalesReasonKey = sr.SalesReasonKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimPromotion] as p
  ON fis.PromotionKey = p.PromotionKey
  WHERE 
  LEFT (fis.OrderDateKey, 4) >= YEAR(GETDATE()) -3 AND fis.[SalesAmount] > 0-- Ensures we always only bring two years of date from extraction.
ORDER BY
  fis.OrderDateKey ASC

  