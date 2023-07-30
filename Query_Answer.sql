-- Berapa rata-rata umur customer jika dilihat dari marital statusnya ?
SELECT marital_status , AVG(age) AS ratarata_umur
FROM newtable 
GROUP BY marital_status;

-- Berapa rata-rata umur customer jika dilihat dari gender nya ?
SELECT gender , AVG(age) AS ratarata_umur
FROM newtable 
GROUP BY gender;

-- Tentukan nama store dengan total quantity terbanyak!
SELECT newtable_2.storename, newtable_3.storeid, SUM(newtable_3.qty) AS total_qty
FROM newtable_3
INNER JOIN newtable_2 ON newtable_3.storeid = newtable_2.storeid
GROUP BY newtable_3.storeid, newtable_2.storename
ORDER BY total_qty desc
LIMIT 1;

-- Tentukan nama produk terlaris dengan total amount terbanyak!
SELECT newtable_1."Product Name", SUM(newtable_3.totalamount) as total_amount
FROM newtable_1
INNER JOIN newtable_3 ON newtable_1.productid = newtable_3.productid 
GROUP BY newtable_1."Product Name"
ORDER BY total_amount DESC;
LIMIT 1;