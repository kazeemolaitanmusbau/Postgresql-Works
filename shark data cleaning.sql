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
      

*/



-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Deal Valuation` = 0
WHERE `Deal Valuation` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Deal Valuation`  INT;




-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Number of sharks in deal` = 0
WHERE `Number of sharks in deal` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Number of sharks in deal`  INT;




-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Investment Amount Per Shark` = 0
WHERE `Investment Amount Per Shark` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Investment Amount Per Shark`  INT;




-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Equity Per Shark` = 0
WHERE `Equity Per Shark` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Equity Per Shark`  INT;


/*
    

  
 
 Daymond John Investment Equity
Kevin O Leary Investment Amount  Kevin O Leary Investment Equity

*/

-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Barbara Corcoran Investment Amount` = 0
WHERE `Barbara Corcoran Investment Amount` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Barbara Corcoran Investment Amount`  INT;


-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Barbara Corcoran Investment Equity` = 0
WHERE `Barbara Corcoran Investment Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Barbara Corcoran Investment Equity`  INT;



-- UPDATE the Total Deal Equity to 0 where they are empty
UPDATE data
SET `Mark Cuban Investment Amount` = 0
WHERE `Mark Cuban Investment Amount` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Mark Cuban Investment Amount`  INT;-- UPDATE the Total Deal Equity to 0 where they are empty


UPDATE data
SET `Mark Cuban Investment Equity` = 0
WHERE `Mark Cuban Investment Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Mark Cuban Investment Equity`  INT;




UPDATE data
SET `Lori Greiner Investment Amount` = 0
WHERE `Lori Greiner Investment Amount` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Lori Greiner Investment Amount`  INT;


UPDATE data
SET `Lori Greiner Investment Equity` = 0
WHERE `Lori Greiner Investment Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Lori Greiner Investment Equity`  INT;


UPDATE data
SET `Robert Herjavec Investment Amount` = 0
WHERE `Robert Herjavec Investment Amount` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Robert Herjavec Investment Amount`  INT;



UPDATE data
SET `Robert Herjavec Investment Equity` = 0
WHERE `Robert Herjavec Investment Equity` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Robert Herjavec Investment Equity`  INT;


UPDATE data
SET `Daymond John Investment Amount` = 0
WHERE `Daymond John Investment Amount` = "";
-- change the datatype of the Total Deal Equityfrom text to int
ALTER TABLE data
MODIFY `Daymond John Investment Amount`  INT;