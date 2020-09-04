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
    
    if request.method == "POST":
        json_data = request.get_json()
        outlet = json_data['outlet']
        supplier = json_data['supplier']
        payterms = json_data['payment']
        items = json_data['items']
        total = json_data['total']

        print(supplier)
        print(payterms)
        print(total)
        print(type(supplier))
        print(type(payterms))
        print(type(total))

        value = []
        for item in items:
            value.append(list(item.values()))
            
        if outlet == '1':
        
            for row in value:
                query = f'''INSERT INTO PurchaseTolly (Pitem_ID,Qnty,Amount,EMPID,Date,Supplier_ID,PayTerms_ID,Bill_No) VALUES ({int(row[0])},{int(row[1])},{int(row[2])},'{str(row[3])}','{str(row[4])}','{str(row[5])}','{str(row[6])}','{str(row[7])}' )'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

        if outlet == '2':
        
            for row in value:
                query = f'''INSERT INTO PurchaseHazra (Pitem_ID,Qnty,Amount,EMPID,Date,Supplier_ID,PayTerms_ID,Bill_No) VALUES ({int(row[0])},{int(row[1])},{int(row[2])},'{str(row[3])}','{str(row[4])}','{str(row[5])}','{str(row[6])}','{str(row[7])}' )'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

        if payterms == '1':
            query = f'''INSERT INTO Payments (Date,Supplier_ID,Amount,Paymethod_ID) VALUES ("2020-08-01",'{supplier}','{total}','{payterms}')'''
            #query = f'''INSERT INTO Payments (Date,Supplier_ID,Amount,Paymethod_ID) VALUES ('1','2','3','4')'''
            cur.execute(query)
            mysql.connection.commit() 
            print(query)
        
    return json.dumps(json_return)
    return ({'message': 'success'}), 200
    
    


if __name__ == "__main__":
    app.run(debug=True)