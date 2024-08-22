

-- Assuming the table name is 'bands' and the relevant columns are 'name', 'formed', 'split', and 'style'

SELECT 
    name AS band_name,
    IFNULL(YEAR(CURDATE()) - formed, 0) - IFNULL(YEAR(CURDATE()) - split, 0) AS lifespan
FROM 
    bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC;
