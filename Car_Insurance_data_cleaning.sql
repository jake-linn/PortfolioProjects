---Cleaning Data---

SELECT *
FROM insurance_claims;

---Deleting unneeded data---

---Deleting _c39 Column

ALTER TABLE insurance_claims
DROP COLUMN _c39;

--Deleting hobbies 
ALTER TABLE insurance_claims
DROP COLUMN insured_hobbies;

--Delete relationship
ALTER TABLE insurance_claims
DROP COLUMN insured_relationship;

--Unknown Property Damage
--DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
DELETE FROM insurance_claims
WHERE property_damage = '?';

--Unknown collision type
DELETE FROM insurance_claims
WHERE collision_type = '?';

---Merging/ Simplifiying the data---


--Combine Make and Model of car into single col 

--1) add auto_make to auto model with a space
UPDATE insurance_claims 
SET auto_make = CONCAT(auto_make,' ', auto_model)

--2) Removing auto model
ALTER TABLE insurance_claims
DROP COLUMN auto_model


