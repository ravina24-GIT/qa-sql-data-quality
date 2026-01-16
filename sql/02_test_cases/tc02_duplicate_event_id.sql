-- TC02: event_id must be unique
-- PASS if this query returns 0 rows

SELECT event_id, COUNT(*) AS cnt
FROM app_events
GROUP BY event_id
HAVING COUNT(*) > 1;
