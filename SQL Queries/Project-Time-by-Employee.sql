SELECT [WBS1]
,[WBS2]
,[WBS3]
,[Name]
, SUM([RegHrs] + [OvtHrs])
AS Total_Hours
FROM [Vision].[dbo].[LD]
GROUP BY [WBS1], [WBS2], [WBS3], [Name];