SELECT
  al.Title,
  al.US_Billboard_200_peak,
  al.US_Billboard_200_year_end,
  al.Release_date,
  a.Artist,
  al.[US_sales_(m)],
  a.Artist_ID,
  al.Artist_ID
FROM Album AS al
JOIN Artist AS a 
  ON al.Artist_ID = a.Artist_ID
WHERE 
  US_Billboard_200_year_end = 1

ORDER BY Title ASC;

SELECT
  Title,
  US_Billboard_200_peak,
  US_Billboard_200_year_end,
  [US_sales_(m)]
FROM Album
ORDER BY Title ASC;

SELECT
  Title,
  US_Billboard_200_peak,
  US_Billboard_200_year_end,
  [US_sales_(m)]
FROM Album
WHERE US_Billboard_200_peak <= 10
ORDER BY US_Billboard_200_peak ASC;

SELECT
  Title,
  US_Billboard_200_peak,
  US_Billboard_200_year_end,
  [US_sales_(m)]
FROM Album
WHERE [US_sales_(m)] >= 10
ORDER BY [US_sales_(m)] DESC;