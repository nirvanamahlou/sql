SELECT
  Track_name,
  Single_release_date,
  US_Billboard_Hot_100_peak
FROM Track
WHERE Single_release_date = '2022-03-24'
ORDER BY Single_release_date DESC;

SELECT
  Track_name,
  Single_release_date,
  US_Billboard_Hot_100_peak
FROM Track
WHERE Single_release_date < '2000-01-01'
ORDER BY Single_release_date DESC;

SELECT
  Track_name,
  Single_release_date,
  US_Billboard_Hot_100_peak
FROM Track
WHERE Single_release_date BETWEEN '1970-01-01' AND '1979-12-31'
  AND US_Billboard_Hot_100_peak = 1
ORDER BY Single_release_date ASC;

SELECT
  t.Track_name,
  a.Artist,
  t.Single_release_date,
  t.US_Billboard_Hot_100_peak
FROM Track AS t
JOIN Album AS al 
  ON t.Album_ID = al.Album_ID
JOIN Artist AS a 
  ON al.Artist_ID = a.Artist_ID
WHERE t.Single_release_date BETWEEN '1970-01-01' AND '1979-12-31'
  AND t.US_Billboard_Hot_100_peak = 1
ORDER BY t.Single_release_date ASC;
