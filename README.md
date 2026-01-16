\# QA SQL Data Quality Project



This project demonstrates how a QA engineer can validate analytics and privacy-related data using SQL.



\## Why this project

In many consumer applications, analytics and telemetry data must be accurate and compliant with user consent.

This project simulates how QA validates event data, detects data quality issues, and ensures tracking happens only after opt-in consent.



\## What is included

\- SQLite database schema and seed data

\- SQL-based test cases that follow a PASS/FAIL approach

\- Consent vs telemetry validation checks

\- Bug reproduction queries with SQL evidence



\## Tools used

\- SQLite

\- DB Browser for SQLite

\- SQL

\- Git \& GitHub



\## How to run the project

1\. Open `qa\_telemetry.db` using DB Browser for SQLite

2\. Go to the \*\*Execute SQL\*\* tab

3\. Open any SQL file from `sql/02\_test\_cases`

4\. Run the query

5\. If the query returns \*\*0 rows\*\*, the test is considered \*\*PASS\*\*



\## Example test cases

\- Check for null or empty user IDs in events

\- Detect duplicate event IDs

\- Validate that tracking does not occur without opt-in consent



