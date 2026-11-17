-- DML
USE insurance_db;

-- All clients and all columns
SELECT * FROM CLIENT;

-- Chris update
UPDATE CLIENT 
SET client_name = 'Chris Pearson'
WHERE clientID = 5;

-- Home policies
SELECT * FROM POLICY
WHERE policyType = 'Home';

-- Sort by age
SELECT client_name, client_address, client_age FROM CLIENT
ORDER BY client_age DESC;

-- Average age
SELECT AVG(client_age) FROM CLIENT;

-- 22 > age > 40
SELECT client_name, client_age FROM CLIENT
WHERE client_age BETWEEN 22 AND 40;

-- Home policies <= 250k
SELECT * FROM POLICY
WHERE policyLimits <= '$250000' AND policyType = 'Home';
