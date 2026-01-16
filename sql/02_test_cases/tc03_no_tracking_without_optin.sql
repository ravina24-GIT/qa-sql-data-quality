-- TC03: Users should not generate app_events unless they are opt_in
-- PASS if this query returns 0 rows

SELECT e.*
FROM app_events e
LEFT JOIN (
  SELECT user_id, MAX(consent_time) AS latest_consent_time
  FROM consent_events
  GROUP BY user_id
) lc ON e.user_id = lc.user_id
LEFT JOIN consent_events c
  ON c.user_id = lc.user_id AND c.consent_time = lc.latest_consent_time
WHERE c.consent_status IS NULL OR c.consent_status != 'opt_in';
