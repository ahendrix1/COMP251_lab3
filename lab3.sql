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

-- yearly term
SELECT * FROM POLICY
WHERE policyTerm = 'yearly';

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
WHERE TRIM(REPLACE(REPLACE(policyLimits, '$', ''), ',', '')) <= 250000 AND policyType = 'Home';

-- Addresses containing featherstone
SELECT client_name, client_address FROM CLIENT
WHERE client_address LIKE '%Featherstone%'
ORDER BY client_age ASC;

-- clients > 35, address has 8

SELECT client_name, client_address, client_age FROM CLIENT
WHERE client_age >= 35 AND client_address LIKE '%8%';

-- # of policies
SELECT COUNT(*) FROM POLICY;

-- policies by type
SELECT policyType, COUNT(*) FROM POLICY
GROUP BY policyType;

-- min / max age
SELECT MIN(client_age), MAX(client_age) FROM CLIENT;

-- list all clients with home policy
SELECT *
FROM CLIENT
INNER JOIN POLICY_LIST ON clientID = CLIENT_clientID
INNER JOIN POLICY ON policyID = POLICY_policyID
WHERE policyType = 'Home';

-- all policy with client ID 2
SELECT *
FROM POLICY
INNER JOIN POLICY_LIST ON policyID = POLICY_policyID 
WHERE CLIENT_clientID = 2;

-- all clients, all policies
SELECT *
FROM CLIENT
INNER JOIN POLICY_LIST ON clientID = CLIENT_clientID
INNER JOIN POLICY ON policyID = POLICY_policyID;