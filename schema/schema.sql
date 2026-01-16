CREATE TABLE users (
  user_id TEXT PRIMARY KEY,
  country TEXT,
  created_at TEXT
);

CREATE TABLE consent_events (
  consent_id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id TEXT,
  consent_status TEXT,      -- 'opt_in' or 'opt_out'
  consent_time TEXT,
  source TEXT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE app_events (
  event_id TEXT PRIMARY KEY,
  user_id TEXT,
  event_name TEXT,
  event_time TEXT,
  app_version TEXT,
  session_id TEXT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
