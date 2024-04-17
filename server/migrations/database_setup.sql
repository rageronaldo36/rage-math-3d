/*
brew update
brew install postgresql
initdb /usr/local/var/postgres
pg_ctl -D /usr/local/var/postgres start
psql -d postgres
CREATE DATABASE rage-math-3d;
CREATE USER rage-math-3d_user;
GRANT ALL PRIVILEGES ON DATABASE rage-math-3d TO rage-math-3d_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO rage-math-3d_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO rage-math-3d_user;
*/

CREATE TABLE graphs (
  id SERIAL PRIMARY KEY,
  url_key text NOT NULL UNIQUE,
  dehydrated JSONB NOT NULL,
  times_accessed INTEGER NOT NULL DEFAULT 1,
  last_accessed timestamp with time zone NOT NULL DEFAULT now()
);