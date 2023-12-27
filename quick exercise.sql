--using the table below, figure out what error in the statement below
CREATE TABLE SALE(
order_id int,
product_name varchar(29),
sale_date DATE,
quantity int,
revenue int
);

INSERT INTO sale
VALUES(1, 'PRODUCT_A', '2023-01-01', 100,500),
		(2, 'PRODUCT_B', '2023-01-01', 150,750),
		(3, 'PRODUCT_A', '2023-01-02', 50,250),
		(4, 'PRODUCT_C', '2023-01-03', 200,1000);
		
SELECT product_name, EXTRACT(DAY FROM sale_date),
SUM(revenue) OVER(PARTITION BY EXTRACT(DAY FROM sale_date)) AS total_sale
FROM SALE;

SELECT EXTRACT(DAY FROM sale_date) FROM SALE