

-- Assuming the table name is 'bands' and the relevant columns are 'name', 'formed', 'split', and 'style'

SELECT 
    name AS band_name,
    CASE
        WHEN split IS NOT NULL THEN YEAR(split) - YEAR(formed)
        ELSE YEAR(CURDATE()) - YEAR(formed)
    END AS lifespan
FROM 
    bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC;
