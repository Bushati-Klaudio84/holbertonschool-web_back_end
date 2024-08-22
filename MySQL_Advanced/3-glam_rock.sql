-- Select the relevant bands and compute their lifespan
SELECT 
    name AS band_name,
    IF(split IS NULL, YEAR(CURDATE()) - formed, split - formed) AS lifespan
FROM 
    holberton.bands
WHERE 
    style = 'Glam rock'
ORDER BY 
    lifespan DESC, band_name ASC;
