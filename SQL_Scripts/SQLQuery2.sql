SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Gender;

SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM stg_Churn) AS Percentage
FROM stg_Churn
GROUP BY Contract;

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc

SELECT DISTINCT Internet_Type
from stg_Churn

