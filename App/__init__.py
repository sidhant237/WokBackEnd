from flask import Flask
from flask_mysqldb import MySQL
from flask_cors import CORS

#initializing app
app = Flask(__name__)

#importing configurations
app.config.from_pyfile('config.py')

#initializing db
mysql = MySQL(app)

#initializing CORS
cors = CORS(app)

#importing views
from App import ClosingStock, BillEntry, Transfer, HazraOrder, TollyOrder, Payment, Others

def get_app():
	return app