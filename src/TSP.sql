WITH RECURSIVE tours AS (
    SELECT
        ARRAY[point1] AS tour,
        point1,
        point2,
        cost,
        cost AS total_cost
    FROM nodes
    WHERE point1 = 'a'

    UNION

    SELECT
        t.tour || n.point1 AS tour,
        n.point1,
        n.point2,
        n.cost,
        t.total_cost + n.cost AS total_cost
    FROM nodes n
    JOIN tours t ON n.point1 = t.point2
    WHERE NOT n.point1 = ANY(t.tour)
)

SELECT total_cost, tour
FROM tours
WHERE array_length(tour, 1) = 4