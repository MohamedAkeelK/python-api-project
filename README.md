# 🐍 python-api-project

This project is a CRUD REST API created with Python, flask, peewee, and Postgresql. Includes data for users and projects.

## Getting Started Locally

**Install Pipenv**
Install Pipenv with either Pip or Homebrew. Pip is recommended.

Pip: pip3 install pipenv
Homebrew: brew install pipenv

then...

```bash
pipenv install
pipenv shell
```

```bash
psql -d projects_fl < schema.sql
psql -d projects_fl < seed.sql
```

or from psql cli..

\i schema.sql
\i seed.sql

then..

python3 app.py

### Prerequisites

- must have python installed
- must have postgresql installed

## Deployment

- Railway
- link: ...coming soon.

## Built With

- Python
- flask
- peewee
- postgresql

packages...

flask = "_"
peewee = "_"
psycopg2-binary = "\*"

## Contributing

fork, clone, create a new feature, and submit a pull request!

## Authors ✏️

- **Mohamed Akeel Khan**

## API DOCUMENTATION (Postman) 📩

https://documenter.getpostman.com/view/23919886/2s8YmPsh8F

preview ... ⬇️

**endpoints**

- get /users
- get /users/:id
- post /users
- put /users/:id
- delete /users/:id

- get /project
- get /project/:id
- post /project
- put /project/:id
- delete /project/:id
