select * from blinkit_data
;
SELECT COUNT(*) AS total_rows
FROM blinkit_data;

USE blinkitdb;

ALTER TABLE blinkit_data
RENAME COLUMN `ï»¿Item Fat Content` TO `Item Fat Content`;


USE blinkitdb;

ALTER TABLE blinkit_data
RENAME COLUMN Sales TO Total_Sales;
USE blinkitdb;

SELECT *
FROM blinkit_data;
SHOW COLUMNS FROM blinkit_data;

DESCRIBE blinkit_data;
USE blinkitdb;

ALTER TABLE blinkit_data
    RENAME COLUMN `Outlet Type` TO `Outlet_Type`,
    RENAME COLUMN `Outlet Size` TO `Outlet_Size`,
    RENAME COLUMN `Outlet Location Type` TO `Outlet_Location_Type`,
    RENAME COLUMN `Outlet Identifier` TO `Outlet_Identifier`,
    RENAME COLUMN `Outlet Establishment Year` TO `Outlet_Establishment_Year`,
    RENAME COLUMN `Item Weight` TO `Item_Weight`,
    RENAME COLUMN `Item Visibility` TO `Item_Visibility`,
    RENAME COLUMN `Item Type` TO `Item_Type`,
    RENAME COLUMN `Item Identifier` TO `Item_Identifier`,
    RENAME COLUMN `Item Fat Content` TO `Item_Fat_Content`;
    
    DESCRIBE blinkit_data;

update blinkit_data
set Item_Fat_Content =
case 
when Item_Fat_Content in ('LF','low fat') then 'Low Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else  Item_Fat_Content
end 
;

SELECT DISTINCT Item_Fat_Content
FROM blinkit_data;

select * from blinkit_data
;

USE blinkitdb;

SELECT
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data;

USE blinkitdb;

SELECT
    Outlet_Type,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales_Millions DESC;


USE blinkitdb;
SELECT
    Outlet_Location_Type,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales_Millions DESC;

USE blinkitdb;

SELECT
    Item_Type,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating,
    COUNT(*) AS Number_of_Items,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Average_Rating DESC;

USE blinkitdb;

SELECT
    Outlet_Type,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating,
    COUNT(*) AS Number_of_Items,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Average_Rating DESC;

USE blinkitdb;

SELECT
    Item_Type,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales_Millions DESC;

USE blinkitdb;

SELECT
    Item_Type,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(
        SUM(Total_Sales) /
        (SELECT SUM(Total_Sales) FROM blinkit_data) * 100
        AS DECIMAL(10,2)
    ) AS Sales_Contribution_Percent
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Sales_Contribution_Percent DESC;

USE blinkitdb;
SELECT
    Outlet_Size,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales_Millions DESC;

USE blinkitdb;
SELECT
    Outlet_Type,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales_Millions DESC;

USE blinkitdb;
SELECT
    Outlet_Establishment_Year,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

USE blinkitdb;

SELECT
    Item_Fat_Content,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_Millions DESC;

USE blinkitdb;

SELECT
    Outlet_Type,
    Item_Fat_Content,
    CAST(SUM(Total_Sales) / 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions,
    CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Average_Sales,
    COUNT(*) AS Number_of_Items,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS Average_Rating
FROM blinkit_data
GROUP BY
    Outlet_Type,
    Item_Fat_Content
ORDER BY
    Outlet_Type,
    Total_Sales_Millions DESC;
