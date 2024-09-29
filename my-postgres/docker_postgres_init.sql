CREATE TABLE message (
  id SERIAL PRIMARY KEY,
  text TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE user_auth (
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL,
  email TEXT NOT NULL,
  password TEXT NOT NULL,
  role SMALLINT NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Path: my-postgres/docker_postgres_init.sql

insert into message(text) values('{"message":"first seed"}');
insert into message(text) values('{"message":"second seed"}');
insert into message(text) values('{"message":"third seed"}');
insert into message(text) values('{"message":"fourth seed"}');
