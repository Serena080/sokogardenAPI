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

          data = (username, email, phone ,password)

          #By use of the cursor, execute the sql,as you replace the placeholders with actual values
          cursor.execute(sql,data)


          # Commit the changes to the database

          connection.commit()

          return jsonify({"message" :"User registered successfully"})




# Below is the login/ sign in route
@app.route("/api/signin", methods = ["POST"])
def signin():
      if request.method=="POST":

          # Extract the two details entered on the form
          email =  request.form["email"]
          password = request.form["password"]

          # Print out the details entered
          # print(email,password)


          # establish connection with the database
          connection = pymysql.connect(host="localhost", user="root",password="",database="sokogardenonline")

          # create a cursor
          cursor = connection.cursor(pymysql.cursors.DictCursor)

          # Structure the sql query that will check whether the password and email entered are correct
          sql = "SELECT * FROM users WHERE email = %s AND password = %s"


          # put the data received from the form into a tuple
          data = (email,password)

          # by use of the cursor execute
          cursor.execute(sql, data)


          # Check hether there are rows returned and store in a variable

          count = cursor.rowcount


          # If there are records returned the password and email are correct otherwise they are wrong

          if count == 0:
               return jsonify({"message" :"Log in failed"})
          
          else:
               # There must be a user so we cretae a variable that will hold the details of the user fetched from the database 
               user = cursor.fetchone()
               # return the details to the frontend as well as the message
               return jsonify({"message" :"User logged in successfully", "user":user})

          

          



          




















         
           
          
     











# Run the application
app.run(debug=True)