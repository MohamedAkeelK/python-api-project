DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS project;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  user_password VARCHAR(255)
);

CREATE TABLE project (
  id SERIAL PRIMARY KEY,
  project_name VARCHAR(255),
  project_description VARCHAR(255),
  username VARCHAR(255),
  user_id INTEGER,
  tasks TEXT[]
);