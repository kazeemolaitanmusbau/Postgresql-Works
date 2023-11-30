SELECT * FROM `Sharks Tank`;

-- 1. What is the distribution of startups across different seasons of Shark Tank?
SELECT `Season Number`, count(`Startup Name`) `count of pitchers`
FROM `Sharks Tank`
GROUP BY `Season Number`
ORDER BY `count of pitchers` DESC;
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
-- 7. What was the total Average equity given up by startups in each indutries when got deals?


--  8. How much did Barbara Corcoran typically invest in startups, and what equity did she receive?
-- 9. How much did Mark Cuban typically invest in startups, and what equity did he receive?
-- 10. How much did Lori Greiner typically invest in startups, and what equity did she receive?
-- 11. How much did Robert Herjavec typically invest in startups, and what equity did he receive?
-- 12. How much did Daymond John typically invest in startups, and what equity did he receive?
-- 13. How much did Kevin O'Leary typically invest in startups, and what equity did he receive?

-- 14. Which entrepreneur has secured the largest investment deal in "Shark Tank" history

-- 15.  Which shark has invested the most money in businesses related to the food and beverage industry?

-- 16. Are there any trends in the industries or product categories that tend to receive higher valuation offers from the sharks?

-- 17. Did startups with a larger number of entrepreneurs tend to secure more favorable deals?


-- 18. Which industry or product category receives the highest average deal valuation from the sharks?
-- 19. How do the total investments made by male and female entrepreneurs compare?
-- 20. Are there any correlations between the amount of equity offered and the probability of securing a deal?