SELECT
    Show_date,
    Tickets_available,
    Tickets_sold,
    [Revenue_$],
    (Tickets_available - Tickets_sold) AS Unsold_tickets,
    (CAST([Revenue_$] AS DECIMAL(10,2)) / NULLIF(Tickets_sold, 0)) AS Avg_ticket_price
FROM [Show]
WHERE (Tickets_available - Tickets_sold) >= 10000
ORDER BY Unsold_tickets DESC;

SELECT Title, COUNT(*) 
FROM Album 
GROUP BY Title 
HAVING COUNT(*) > 1;

SELECT * FROM Show WHERE Tickets_sold IS NULL;

SELECT
    Show_date,
    Tickets_available,
    Tickets_sold,
    [Revenue_$],
    -- Column 1: Unsold tickets
    (Tickets_available - Tickets_sold) AS Unsold_tickets,
    -- Column 2: Average price (using NULLIF to prevent divide-by-zero)
    ([Revenue_$] / NULLIF(Tickets_sold, 0)) AS Avg_ticket_price,
    -- Column 3: Potential lost revenue
    ((Tickets_available - Tickets_sold) * ([Revenue_$] / NULLIF(Tickets_sold, 0))) AS Potential_lost_revenue
FROM [Show]
WHERE (Tickets_available - Tickets_sold) >= 10000
ORDER BY Unsold_tickets DESC;


