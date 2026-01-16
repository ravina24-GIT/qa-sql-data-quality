INSERT INTO users (user_id, country, created_at) VALUES
('u1','US','2026-01-01T10:00:00Z'),
('u2','IN','2026-01-02T11:00:00Z'),
('u3','US','2026-01-03T12:00:00Z');

SELECT * FROM users;

INSERT INTO consent_events (user_id, consent_status, consent_time, source) VALUES
('u1','opt_in','2026-01-01T10:01:00Z','signup'),
('u2','opt_out','2026-01-02T11:01:00Z','settings'),
('u3','opt_in','2026-01-03T12:01:00Z','signup');

SELECT * FROM consent_events;

INSERT INTO app_events (event_id, user_id, event_name, event_time, app_version, session_id) VALUES
('e1','u1','app_open','2026-01-01T10:02:00Z','5.1.0','s1'),
('e2','u1','print_click','2026-01-01T10:03:00Z','5.1.0','s1'),
('e3','u2','app_open','2026-01-02T11:02:00Z','5.1.0','s2'),
('e4','u3','app_open','2026-01-03T12:02:00Z','5.2.0','s3');

SELECT * FROM app_events;