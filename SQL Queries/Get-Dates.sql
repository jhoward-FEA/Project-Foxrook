SELECT MIN(LD.TransDate) as GetDate
	, CL.ClientID
	FROM [Vision].[dbo].[LD]
	JOIN [Vision].[dbo].[PR] ON LD.WBS1 = PR.WBS1
	JOIN [Vision].[dbo].[CL] ON PR.ClientID = CL.ClientID
	GROUP BY CL.ClientID;