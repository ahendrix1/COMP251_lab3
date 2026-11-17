-- DDL
DROP TABLE POLICY_LIST;


DROP TABLE CLIENT;
DROP TABLE POLICY;

CREATE TABLE CLIENT  (
	clientID	INT NOT NULL AUTO_INCREMENT,
	client_name VARCHAR(55) NOT NULL,
	client_address VARCHAR(55) NOT NULL,
	client_age INT NOT NULL,
 	
	PRIMARY KEY (clientID)
);

CREATE TABLE POLICY (
	policyID INT NOT NULL AUTO_INCREMENT,
	policyType VARCHAR(55) NOT NULL,
	policyTerm VARCHAR(45) NOT NULL,
	policyLimits VARCHAR(100) NOT NULL,
	
	PRIMARY KEY (policyID)
);

CREATE TABLE POLICY_LIST (
	CLIENT_clientID INT NOT NULL,
	POLICY_policyID INT NOT NULL,

	CONSTRAINT fk_client FOREIGN KEY (CLIENT_clientID) REFERENCES CLIENT(clientID) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_policy FOREIGN KEY (POLICY_policyID) REFERENCES POLICY(policyID) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (CLIENT_clientID, POLICY_policyID)
);
	
-- Insert statements. Imported using the DBeaver data import function, then exported as SQL

INSERT INTO insurance_db.CLIENT (client_name,client_address,client_age) VALUES
	 ('James Clark','1001 Plymouth Ave',38),
	 ('Leah Nicole','2401 Chicago Ave. #212',36),
	 ('Silas Alexander','5012 Humboldt Lane',22),
	 ('Noah Charles','501 College Ave.',25),
	 ('Chris Isaac','228 e, 149th st.',37),
	 ('Noah Charles','501 College Ave.',25),
	 ('Brittney Owens','321 Thursday Ave.',42),
	 ('Kurt Douglas','123 Mt. Glenwood',58),
	 ('Areta Farries','789 Touy Ave.',62),
	 ('Jessica Daniel','698 Featherstone',47);
INSERT INTO insurance_db.CLIENT (client_name,client_address,client_age) VALUES
	 ('Gary Moore','698 Featherstone',48),
	 ('Elnora Daniel','698 Featherstone',61),
	 ('Daniel Moore','698 Featherstone',22),
	 ('Cheryl Pearson','228 e, 149th st.',67);
INSERT INTO insurance_db.POLICY (policyType,policyTerm,policyLimits) VALUES
	 ('Home','yearly','$100,000 '),
	 ('Home','yearly','$250,000 '),
	 ('Home','yearly','$500,000 '),
	 ('Home','yearly','$1,000,000 '),
	 ('Home','6-month','$100,000 '),
	 ('Home','6-month','$250,000 '),
	 ('Home','6-month','$500,000 '),
	 ('Home','6-month','$1,000,000 '),
	 ('Car','yearly','$60,000 '),
	 ('Car','yearly','$120,000 ');
INSERT INTO insurance_db.POLICY (policyType,policyTerm,policyLimits) VALUES
	 ('Car','6-month','$60,000 '),
	 ('Car','6-month','$120,000 ');
INSERT INTO insurance_db.POLICY_LIST (CLIENT_clientID,POLICY_policyID) VALUES
	 (2,1),
	 (9,1),
	 (13,1),
	 (2,4),
	 (5,4),
	 (8,5),
	 (14,6),
	 (11,7),
	 (1,8),
	 (3,8);
INSERT INTO insurance_db.POLICY_LIST (CLIENT_clientID,POLICY_policyID) VALUES
	 (7,9),
	 (1,10),
	 (3,10),
	 (7,10),
	 (10,10),
	 (6,11),
	 (4,12);
