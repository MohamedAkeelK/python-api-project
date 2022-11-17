TRUNCATE TABLE PROJECT;
TRUNCATE TABLE USERS;

ALTER SEQUENCE project_id_seq RESTART WITH 1;
ALTER SEQUENCE users_id_seq RESTART WITH 1;

INSERT INTO users(username, user_password) VALUES ('Cao Xueqin', '1234');
INSERT INTO users(username, user_password) VALUES ('J.K. Rowling', '1234');
INSERT INTO users(username, user_password) VALUES ('Bob', '1234');
INSERT INTO users(username, user_password) VALUES ('Zen', '1234');
INSERT INTO users(username, user_password) VALUES ('Xios', '1234');
INSERT INTO users(username, user_password) VALUES ('Rob', '1234');
INSERT INTO users(username, user_password) VALUES ('Potter', '1234');
INSERT INTO users(username, user_password) VALUES ('Gary', '1234');


INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('cat app', 'an app about getting cats', 'Cao Xueqin', 1, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) 
VALUES ('lizard app', 'an app about getting lizards', 'Cao Xueqin', 1, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('dog app', 'an app for adopting dogs', 'J.K. Rowling', 2, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('ai app', 'an ai app','J.K. Rowling', 2,Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('note app', 'an app to take personal notes','Bob', 3, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('lists app', 'an app to make a list','Bob', 3, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('snake game', 'the classis snake game', 'Zen', 4, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('music app', 'listen to your favorite music!', 'Zen', 4, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('breakout', 'an app for the classis ball and bricks game', 'Xios', 5, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('breaking bad', 'an app for breaking bad', 'Xios', 5, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('react-game', 'a simple react game', 'Rob', 6, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('studio ghibli app', 'gets all studio ghibli characters', 'Rob',6, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('crud-app', 'a crud application', 'Potter', 7, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('classroom app', 'a classroom app', 'Potter', 7, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('python-app', 'a python web api', 'Gary', 8, Array['plan steps', 'make template', 'start coding!']);

INSERT INTO project(project_name, project_description, username, user_id, tasks) VALUES ('tenzies-app', 'a dice game', 'Gary', 8,Array['plan steps', 'make template', 'start coding!']);