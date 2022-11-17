from flask import Flask, jsonify, request
from peewee import *
from playhouse.shortcuts import model_to_dict, dict_to_model
from playhouse.postgres_ext import ArrayField

db = PostgresqlDatabase('projects_fl', user='mohamedkhan', password='akeel', host='localhost', port=5432)

class BaseModel(Model):
  class Meta:
    database = db
  
class Project(BaseModel):
  project_name = CharField()
  project_description = CharField()
  username = CharField()
  user_id = IntegerField()
  tasks = ArrayField()

class Users(BaseModel):
  username = CharField()
  user_password = CharField()

db.connect()

app = Flask(__name__)

@app.route('/project/', methods=['GET', 'POST'])
@app.route('/project/<id>', methods=['GET', 'PUT', 'DELETE'])
def project_endpoint(id=None):
  if request.method == 'GET':
    if id:
        return jsonify(model_to_dict(Project.get(Project.id == id)))
    else:
        projectList = []
        for project in Project.select():
            projectList.append(model_to_dict(project))
        return jsonify(projectList)

  if request.method == 'PUT':
    return 'PUT request'

  if request.method == 'POST':
    new_project = dict_to_model(Project, request.get_json())
    new_project.save()
    return jsonify({"success": True})

  if request.method == 'DELETE':
    return 'DELETE request'

@app.route('/users', methods=['GET', 'POST'])
@app.route('/users/<id>', methods=['GET', 'PUT', 'DELETE'])
def user_endpoint(id=None):
  if request.method == 'GET':
    if id:
        return jsonify(model_to_dict(Users.get(Users.id == id)))
    else:
        usersList = []
        for user in Users.select():
            usersList.append(model_to_dict(user))
        return jsonify(usersList)

  if request.method == 'PUT':
    return 'PUT request'

  if request.method == 'POST':
    new_user = dict_to_model(Users, request.get_json())
    new_user.save()
    return jsonify({"success": True})

  if request.method == 'DELETE':
    return 'DELETE request'

app.run(debug=True, port=3000)
