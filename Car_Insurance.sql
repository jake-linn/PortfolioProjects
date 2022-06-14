--what state cost the most to insure?
--SELECT policy_state, policy_annual_premium
--FROM insurance_claims
--GROUP BY policy_state 
--ORDER BY policy_annual_premium DESC

--are older drivers cheaper?

---top 5 most expensive ages ((24.44, 30,33,57))
--SELECT age, policy_annual_premium
--FROM insurance_claims
--GROUP BY age
--ORDER BY policy_annual_premium DESC
--LIMIT 5
--most expense auto make?

--education lvl vs deductiibe?
--SELECT insured_education_level , AVG(policy_deductable) AS average_ded
--FROM insurance_claims
--GROUP BY insured_education_level
--ORDER BY average_ded


--education vs premium 
--SELECT insured_education_level, AVG(policy_annual_premium) AS avg_premium
--FROM insurance_claims 
--GROUP BY insured_education_level
--ORDER BY avg_premium

--premiums by auto makes
--SELECT auto_make, AVG(policy_annual_premium) AS avg_premium
--FROM insurance_claims
--GROUP BY auto_make
--ORDER BY avg_premium

