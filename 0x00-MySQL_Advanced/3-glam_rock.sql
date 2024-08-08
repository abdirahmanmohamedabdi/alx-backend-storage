-- Lists all bands with Glam rock as their main styel, ranked by their lifespan.
-- SELECT band-name, (ifnull(split, 2022) - formed) AS lifespan
SELECT band_name, (IFNULL(split, 2022) -formed) AS lifespan
    FROM metal_bands
    WHERE style LIKE '%Glam Rock%'
    ORDER BY lifespan DESC;