# Import flask and its component
from flask import *


#Import the pymysql module- It helps to connect the python flask and mysql database 
import pymysql

#reate a flask application and give it name
app = Flask(__name__)

#Below is the sign up route
@app.route("/api/signup", methods = ["POST"])
def signup():
     if request.method=="POST":
          #Extract the different details entered on the form

          username = request.form["username"]
          email = request.form["email"]
          password = request.form["password"]
          phone = request.form["phone"]


          #By use of he print function print all the details for the upcoming request
          # print(username,email,password,phone)

          #Establish a connection between flask and mysql
          connection = pymysql.connect(host="localhost", user="root",password="",database="sokogardenonline")

          #Create a cursor to execute the  sql query

          cursor = connection.cursor()
          #structure an sql to insert the details received from the form
          sql = "INSERT INTO users(username,email,phone,password) VALUES(%s,%s,%s,%s)"
          # %s is a placeholder
          #A place holder stands in places of actual values i.e which are replaced later







          # Create a tuple that will hold all the data that will be gotten from the form

          data = (username,email,phone ,password)

          #By use of the cursor, execute the sql,as you replace the placeholders with actual values
          cursor.execute(sql,data)


          # Commit the changes to the database

          connection.commit()

          return jsonify({"message" :"User registered successfully"})
     











# Run the application
app.run(debug=True)