from flask import Flask, render_template, request
from flask_mysqldb import MySQL
import json

app = Flask(__name__)

app.config['MYSQL_Host'] = "localhost"
app.config['MYSQL_USER'] = "root"
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = "wokdb"

mysql = MySQL(app)

@app.route('/closingstock',methods=['GET','POST'])

def closingstock():
    cur = mysql.connection.cursor()

    ##########Items#############
    val = "PItem.Pitem_ID, PItem.Pitem_Name, PitemUnit.Pitem_UnitName"
    tab = "PItem,PitemUnit"
    joi = "Pitem.Pitem_UnitID = PitemUnit.Pitem_UnitID"
    wer = "Pitem.Pitem_StockID = 1"
    cur.execute(f'''Select {val} from {tab} where {joi} and {wer} ''')
    rv = cur.fetchall()

    columnheaders = ["ID","Item","Unit"]
    json_data = []
    
    for row in rv:
        json_data.append(dict(zip(columnheaders,row)))


    ################ Outlets#######
    val = "Outlet.OutletID, Outlet.OutletName"
    tab = "Outlet"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Outlet"]
    json_data1 = []
    
    for row in rv:
        json_data1.append(dict(zip(columnheaders,row)))


    ################Employees#######
    val = "Employees.EMPID, Employees.EMPName"
    tab = "Employees"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Employee"]
    json_data2 = []
    
    for row in rv:
        json_data2.append(dict(zip(columnheaders,row)))

    json_return = {}
    json_return['Items'] = json_data
    json_return['Outlets'] = json_data1 
    json_return['Employees'] = json_data2

    return json.dumps(json_return)


@app.route('/billentry',methods=['GET','POST'])

def billentry():
    cur = mysql.connection.cursor()

    ##########Items#############
    val = "PItem.Pitem_ID, PItem.Pitem_Name, PitemUnit.Pitem_UnitName"
    tab = "PItem,PitemUnit"
    joi = "Pitem.Pitem_UnitID = PitemUnit.Pitem_UnitID"
    #wer = "Pitem.Pitem_StockID = 1"
    cur.execute(f'''Select {val} from {tab} where {joi} ''')
    rv = cur.fetchall()

    columnheaders = ["ID","Item","Unit"]
    json_data = []
    
    for row in rv:
        json_data.append(dict(zip(columnheaders,row)))

    #########Supplier#############
    val = "Suppliers.Supplier_ID, Suppliers.Supplier_Name"
    tab = "Suppliers"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Supplier"]
    json_data1 = []

    for row in rv:
        json_data1.append(dict(zip(columnheaders,row)))

    ########Outlet###########
    val = "Outlet.OutletID, Outlet.OutletName"
    tab = "Outlet"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Outlet"]
    json_data2 = []
    
    for row in rv:
        json_data2.append(dict(zip(columnheaders,row)))

    ################Employees#######
    val = "Employees.EMPID, Employees.EMPName"
    tab = "Employees"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Employee"]
    json_data3 = []
    
    for row in rv:
        json_data3.append(dict(zip(columnheaders,row)))


    #####Payment Terms#######
    val = "PayTerms.PayTerms_ID, PayTerms.PayTerms_Name"
    tab = "PayTerms"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","PayTerms"]
    json_data4 = []
    
    for row in rv:
        json_data4.append(dict(zip(columnheaders,row)))


    json_return = {}
    json_return['Items'] = json_data
    json_return['Suppliers'] = json_data1 
    json_return['Outlets'] = json_data2
    json_return['Employees'] = json_data3
    json_return['PayTerms'] = json_data4
    return json.dumps(json_return)

@app.route('/transfer',methods=['GET','POST'])
def transferstock():
    cur = mysql.connection.cursor()

    ##########Items#############
    val = "PItem.Pitem_ID, PItem.Pitem_Name, PitemUnit.Pitem_UnitName"
    tab = "PItem,PitemUnit"
    joi = "Pitem.Pitem_UnitID = PitemUnit.Pitem_UnitID"
    #wer = "Pitem.Pitem_StockID = 1"
    cur.execute(f'''Select {val} from {tab} where {joi} ''')
    rv = cur.fetchall()

    columnheaders = ["ID","Item","Unit"]
    json_data = []
    
    for row in rv:
        json_data.append(dict(zip(columnheaders,row)))

    ########Outlet###########
    val = "Outlet.OutletID, Outlet.OutletName"
    tab = "Outlet"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Outlet"]
    json_data1 = []
    
    for row in rv:
        json_data1.append(dict(zip(columnheaders,row)))

    ######Employees#######
    val = "Employees.EMPID, Employees.EMPName"
    tab = "Employees"
    cur.execute(f'''Select {val} from {tab}''')
    rv = cur.fetchall()

    columnheaders = ["ID","Employee"]
    json_data2 = []

    for row in rv:
        json_data2.append(dict(zip(columnheaders,row)))



    json_return = {}
    json_return['Items'] = json_data
    json_return['Outlets'] = json_data1
    json_return['Employees'] = json_data2
    return json.dumps(json_return)



if __name__ == "__main__":
    app.run(debug=True)
