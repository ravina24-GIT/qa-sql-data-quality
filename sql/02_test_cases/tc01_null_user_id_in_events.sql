-- TC01: app_events must have a user_id
-- PASS if this query returns 0 rows

SELECT *
FROM app_events
WHERE user_id IS NULL OR TRIM(user_id) = '';
