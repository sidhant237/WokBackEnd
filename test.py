from flask import Flask, render_template, request
from flask_mysqldb import MySQL
import json
from flask_cors import CORS


app = Flask(__name__)

app.config['MYSQL_Host'] = "localhost"
app.config['MYSQL_USER'] = "root"
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = "wokdb"

mysql = MySQL(app)

CORS_HEADERS = 'Content-Type'
cors = CORS(app)

@app.route('/test',methods=['GET','POST'])

def test():
    cur = mysql.connection.cursor()

    cur.execute(f'''Select test1 from test1  ''')
    rv = cur.fetchall()
    a = []
    for num in rv:
        a.append(num[0])
    b = []
    for num in a:
        b.append(int(num[1:]))
    c = max(b) + 1
    d = 'H' + str(c)
    return json.dumps(d)
    
    #max(test.test)


if __name__ == "__main__":
    app.run(debug=True)