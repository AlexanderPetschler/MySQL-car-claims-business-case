-- petrol type amount of claims
-- this will calculate the amount of claims submitted per petrol type
SELECT petrol_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY petrol_type
ORDER BY claim_count DESC;

-- engine type amount of claims
-- this will calculate the amount of claims submitted per engine type
SELECT engine_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY engine_type
ORDER BY claim_count DESC;

-- gearbox type amount of claims
-- this will calculate the amount of claims submitted per gearbox type
SELECT gearbox_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY gearbox_type
ORDER BY claim_count DESC;

-- combination engine and petrol type
-- this will calculate the amount of claims submitted for various engine and petrol type combinations
SELECT petrol_type, engine_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY petrol_type, engine_type
ORDER BY claim_count DESC;

-- combination engine and gearbox type
-- this will calculate the amount of claims submitted for various engine and gearbox type combinations
SELECT gearbox_type, engine_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY gearbox_type, engine_type
ORDER BY claim_count DESC;

-- combination petrol and gearbox type
-- this will calculate the amount of claims submitted for various petrol and gearbox type combinations
SELECT petrol_type, gearbox_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY petrol_type, gearbox_type
ORDER BY claim_count DESC;

-- combination engine, petrol and gearbox type
-- this will calculate the amount of claims submitted for various combinations across all 3 key variables
SELECT petrol_type, engine_type, gearbox_type, COUNT(*) AS claim_count
FROM claims_analysis.claims_data
GROUP BY petrol_type, engine_type, gearbox_type
ORDER BY claim_count DESC;

-- most money paid out petrol type
-- this will show which petrol type paid out the highest amount in claims paid
SELECT petrol_type, SUM(amount_paid) AS total_paid
FROM claims_analysis.claims_data
GROUP BY petrol_type
ORDER BY total_paid DESC;

-- most money paid out engine type
-- this will show which engine type paid out the highest amount in claims paid
SELECT engine_type, SUM(amount_paid) AS total_paid
FROM claims_analysis.claims_data
GROUP BY engine_type
ORDER BY total_paid DESC;

-- most money paid out gearbox type
-- this will show which gearbox type paid out the highest amount in claims paid
SELECT gearbox_type, SUM(amount_paid) AS total_paid
FROM claims_analysis.claims_data
GROUP BY gearbox_type
ORDER BY total_paid DESC;

-- most money paid out combination petrol and engine type
-- this will caluclate the amount of money paid in claims for various petrol and engine type combinations 
SELECT petrol_type, engine_type, SUM(amount_paid) AS total_paid
FROM claims_analysis.claims_data
GROUP BY petrol_type,engine_type
ORDER BY total_paid DESC;

-- most money paid out combination petrol, engine and gearbox type
-- this will calculate the amount of money paid in claims for various combinations across the 3 key variables
SELECT petrol_type, engine_type, gearbox_type, SUM(amount_paid) AS total_paid
FROM claims_analysis.claims_data
GROUP BY petrol_type,engine_type, gearbox_type
ORDER BY total_paid DESC;

-- average claim value engine
-- this will calculate the average claim value for each engine type
SELECT engine_type, AVG(claim_value) AS avg_claim
FROM claims_analysis.claims_data
GROUP BY engine_type
ORDER BY avg_claim DESC;

-- average claim value petrol
-- this will calculate the average claim value for each petrol type
SELECT petrol_type, AVG(claim_value) AS avg_claim
FROM claims_analysis.claims_data
GROUP BY petrol_type
ORDER BY avg_claim DESC;

-- average claim value combination engine and petrol
-- this will calculate the average claim value for various combinations of engine and petrol types. Gearbox was excluded here as it gave a 48/52% ratio
SELECT petrol_type, engine_type, AVG(claim_value) AS avg_claim
FROM claims_analysis.claims_data
GROUP BY petrol_type, engine_type
ORDER BY avg_claim DESC;