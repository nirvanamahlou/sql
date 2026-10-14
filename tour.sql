SELECT
    Title,
    Release_date,
    Wiki_URL
FROM Album
WHERE Title = 'Greatest Hits';

SELECT
    Title,
    Release_date,
    Wiki_URL
FROM Album
WHERE Title LIKE '%Greatest Hits%'
ORDER BY Title ASC;

SELECT 
  *
FROM Tour
WHERE Tour_name LIKE '%Tour';

SELECT 
  *
FROM Tour
WHERE Tour_name NOT LIKE '%Tour%';