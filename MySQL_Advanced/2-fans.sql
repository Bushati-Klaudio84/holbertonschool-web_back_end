-- Create a table to store the results
CREATE TEMPORARY TABLE temp_band_fans AS
SELECT origin, SUM(nb_fans) AS total_fans
FROM bands
GROUP BY origin
ORDER BY total_fans DESC;

-- Select the results
SELECT origin, total_fans AS nb_fans
FROM temp_band_fans;

-- Cleanup: drop the temporary table
DROP TABLE IF EXISTS temp_band_fans;
