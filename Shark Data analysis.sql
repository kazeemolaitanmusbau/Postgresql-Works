SELECT * FROM `Sharks Tank`;

-- 1. What is the distribution of startups across different seasons of Shark Tank?
WITH A AS (SELECT `Season Number`, count(`Startup Name`) `count of pitchers`
FROM `Sharks Tank`
GROUP BY `Season Number`
ORDER BY `count of pitchers` DESC) SELECT * FROM A;
-- 2. What industries were most commonly represented in the show?
SELECT Industry, count(industry) `count of industry`
FROM `Sharks Tank`
GROUP BY Industry
ORDER BY `count of industry` DESC;
-- 3. How was the gender distribution among the entrepreneurs who pitched their startups?
SELECT `Pitchers Gender`, count(`Pitchers Gender`)
FROM `sharks tank`
GROUP BY  `Pitchers Gender`;
-- 4. Which city and state were most entrepreneurs from?

SELECT `Pitchers State`, `Pitchers City`, count(`Pitchers City`)
FROM `sharks tank`
GROUP BY `Pitchers State` ,`Pitchers City`
ORDER BY `Pitchers State`;


SELECT `Pitchers State`, `Pitchers City`, count(`Pitchers City`)
FROM `sharks tank`
GROUP BY 1 ,2
ORDER BY 3;

-- 5. How many of the pitches actually got a deal with the sharks?

SELECT count(`Got Deal`) `count got deal` from `Sharks Tank`
WHERE `Got Deal`= 1;
-- 6. What was the total amount secured by startups in deals?
SELECT sum(`Investment Amount Per Shark`) `Total Amount`
FROM `sharks tank`
WHERE `Got Deal`= 1;
select * from `Sharks tank`;

SELECT sum(`Investment Amount Per Shark`) `Total Amount`
FROM `sharks tank`;
-- 7. What was the total Average equity given up by startups in each indutries when got deals?
SELECT Industry, ROUND(avg(`Total Deal Equity`), 2) `Average equity`
FROM `sharks tank`
WHERE `Got Deal`= 1
GROUP BY 1;

--  8. How much did Barbara Corcoran typically invest in startups, and what equity did she receive?
describe `sharks tank`;



-- 9. How much did Mark Cuban typically invest in startups, and what equity did he receive?

-- 10. How much did Lori Greiner typically invest in startups, and what equity did she receive?

-- 11. How much did Robert Herjavec typically invest in startups, and what equity did he receive?
;
-- 12. How much did Daymond John typically invest in startups, and what equity did he receive?
SELECT SUM(`Daymond John Investment Amount`)`Total Amount`,
 SUM(`Daymond John Investment Equity`) `Total Equity`
 FROM `sharks tank`;
 
-- 13. How much did Kevin O'Leary typically invest in startups, and what equity did he receive?
SELECT SUM(`Kevin O Leary Investment Amount`)`Total Amount`,
 SUM(`Kevin O Leary Investment Equity`) `Total Equity`
 FROM `sharks tank`;
-- 14. Which entrepreneur has secured the largest investment deal in "Shark Tank" history


SELECT 'Kevin O Leary' as name, SUM(`Kevin O Leary Investment Amount`)`Total Amount`,
 SUM(`Kevin O Leary Investment Equity`) `Total Equity`
 FROM `sharks tank`
 
UNION

SELECT "Robert Herjavec" as name, SUM(`Robert Herjavec Investment Amount`)`Total Amount`,
 SUM(`Robert Herjavec Investment Equity`) `Total Equity` 
 FROM `sharks tank`
 
 UNION
 
 SELECT "Daymond John" as name, SUM(`Daymond John Investment Amount`)`Total Amount`,
 SUM(`Daymond John Investment Equity`) `Total Equity`
 FROM `sharks tank`
 UNION
 SELECT "Lori Greiner" as name,  SUM(`Lori Greiner Investment Amount`)`Total Amount`,
 SUM(`Lori Greiner Investment Equity`) `Total Equity`
 FROM `sharks tank`
 
 UNION
 
 SELECT 
    "Barbara Corcoran" as name,
    SUM(`Barbara Corcoran Investment Amount`) `Total Amount`,
    SUM(`Barbara Corcoran Investment Equity`) `Total Equity`
FROM
    `sharks tank`
    
union
SELECT   "Mark Cuban" as name, SUM(`Mark Cuban Investment Amount`)`Total Amount`,
 SUM(`Mark Cuban Investment Equity`) `Total Equity`
 FROM `sharks tank`;

-- 15.  Which shark has invested the most money in businesses related to the food and beverage industry?

SELECT  "Barbara Corcoran" as name,  
max(`Barbara Corcoran Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Mark Cuban" as name,  
max(`Mark Cuban Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Lori Greiner" as name,  
max(`Lori Greiner Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Robert Herjavec" as name,  
max(`Robert Herjavec Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Daymond John" as name,  
max(`Daymond John Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION 

SELECT  "Kevin O Leary" as name,  
max(`Kevin O Leary Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage" ;


-- __________________________________________________________________
SELECT  "Barbara Corcoran" as name,  
sum(`Barbara Corcoran Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Mark Cuban" as name,  
sum(`Mark Cuban Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Lori Greiner" as name,  
sum(`Lori Greiner Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Robert Herjavec" as name,  
sum(`Robert Herjavec Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION

SELECT  "Daymond John" as name,  
sum(`Daymond John Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage"

UNION 

SELECT  "Kevin O Leary" as name,  
sum(`Kevin O Leary Investment Amount`) max
 FROM `Sharks Tank`
WHERE industry = "Food and Beverage" ;



-- 16. Are they any trends in the industries or product categories that tend to receive higher valuation offers from the sharks?
SELECT * FROM `Sharks Tank`;
SELECT `Multiple Entrepreneurs`, COUNT(`Multiple Entrepreneurs`)
FROM `Sharks Tank`
WHERE `GOT DEAL ` IS NOT NULL
group by `Multiple Entrepreneurs`;

WITH TEMPO AS (
SELECT `Multiple Entrepreneurs`,  `Original Ask Amount` - `Total Deal Amount` AS W
FROM `Sharks Tank`
WHERE `Deal Valuation` IS NOT NULL)
SELECT  `Multiple Entrepreneurs`, COUNT(w) AS `count of favourable deal`FROM TEMPO
WHERE W>=0
GROUP BY  `Multiple Entrepreneurs` ;

-- 17. Did startups with a larger number of entrepreneurs tend to secure more favorable deals?

SELECT industry,  `Valuation Requested`, `Deal Valuation`
FROM `Sharks Tank`
WHERE `Deal Valuation` IS NOT NULL;

-- 18. Which industry or product category receives the highest average deal valuation from the sharks?
 SELECT industry, avg(`Deal Valuation`) as e
 FROM `Sharks Tank`
 GROUP BY industry
 ORDER BY E DESC;
-- 19. How do the total investments made by male and female entrepreneurs compare?


-- 20. Are there any correlations between the amount of equity offered and the probability of securing a deal?
