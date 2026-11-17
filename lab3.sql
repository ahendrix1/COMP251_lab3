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
