CREATE DATABASE `Shark Tank`;
USE  `Shark Tank`;

SELECT * FROM data
WHERE `Total Deal Amount` = "";

DESCRIBE data;



-- modify the format the of the original air date
UPDATE data
SET  `Original Air Date` = str_to_date(`Original Air Date`, "%Y-%M-%d");


-- chang the datatype of origibnal air date from text to date
ALTER TABLE data
MODIFY `Original Air Date` date;

-- UPDATE the total deal amount to 0 where they are empty
UPDATE data
SET `Total Deal Amount` = 0
WHERE `Total Deal Amount` = "";
-- change the datatype of the total deal amount from text to int
ALTER TABLE data
MODIFY `Total Deal Amount`  INT;


-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Total Deal Equity` = 0
WHERE `Total Deal Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Total Deal Equity`  INT;






-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Total Deal Equity` = 0
WHERE `Total Deal Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Total Deal Equity`  INT;


/*
Deal Valuation  Number of sharks in deal  Investment Amount Per Shark  Equity Per Shark

*/



-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Total Deal Equity` = 0
WHERE `Total Deal Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Total Deal Equity`  INT;




-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Total Deal Equity` = 0
WHERE `Total Deal Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Total Deal Equity`  INT;




-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Total Deal Equity` = 0
WHERE `Total Deal Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Total Deal Equity`  INT;


