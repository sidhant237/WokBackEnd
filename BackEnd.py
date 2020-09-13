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

    ######post request
    if request.method == "POST":
        json_data = request.get_json()
        outlet = json_data['outlet']
        items = json_data['items']
        key = items[0].keys()
        value = []
        for item in items:
            value.append(list(item.values()))

        if outlet == '1':
        
            for row in value:
                query = f'''INSERT INTO CStockTolly (Date,Pitem_ID,Qnty) VALUES ('{str(row[3])}',{int(row[0])},{int(row[1])})'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)
        if outlet == '2':
        
            for row in value:
                print (row)
                query = f'''INSERT INTO CStockHazra (Date,Pitem_ID,Qnty) VALUES ('{str(row[3])}',{int(row[0])},{int(row[1])})'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)
            return ({'message': 'success'}), 200
        
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
    
    if request.method == "POST":
        json_data = request.get_json()
        outlet = json_data['outlet']
        supplier = json_data['supplier']
        payterms = json_data['payment']
        items = json_data['items']
        total = json_data['total']


        value = []
        for item in items:
            value.append(list(item.values()))
        
        if outlet == '1':
            for row in value:
                query = f'''INSERT INTO PurchaseTolly (Pitem_ID,Qnty,Amount,EMPID,Date,Supplier_ID,PayTerms_ID,Bill_No) VALUES ({int(row[0])},{int(row[1])},{int(row[2])},'{str(row[3])}','{str(row[4])}','{str(row[5])}','{str(row[6])}','{str(row[7])}' )'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

            if payterms == '1':
            
                query = f'''INSERT INTO Payments (Date,Supplier_ID,Amount,Paymethod_ID) VALUES ("2020-08-01",'{supplier}','{total}','{payterms}')'''
                #query = f'''INSERT INTO Payments (Date,Supplier_ID,Amount,Paymethod_ID) VALUES ('1','2','3','4')'''
                cur.execute(query)
                mysql.connection.commit() 
                print(query)
            
            return ({'message': 'success'}), 200

        elif outlet == '2':
        
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
            
            return ({'message': 'success'}), 200
        
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
    

    if request.method == "POST":
        json_data = request.get_json()
        fromoutlet = json_data['from_outlet']
        tooutlet = json_data['to_outlet']
        items = json_data['items']
        key = items[0].keys()
        value = []
        for item in items:
            value.append(list(item.values()))

        if fromoutlet == '1':
            for row in value:
                query = f'''INSERT INTO TransferTolly (Date,Pitem_ID,Qnty,EMPID) VALUES ('{str(row[3])}',{int(row[0])},{int(-abs(row[1]))},'{str(row[2])}')'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

            for row in value:
                query = f'''INSERT INTO TransferHazra (Date,Pitem_ID,Qnty,EMPID) VALUES ('{str(row[3])}',{int(row[0])},{int(row[1])},'{str(row[2])}')'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

        elif fromoutlet == '2':
            for row in value:
                query = f'''INSERT INTO TransferHazra (Date,Pitem_ID,Qnty,EMPID) VALUES ('{str(row[3])}',{int(row[0])},{int(-abs(row[1]))},'{str(row[2])}')'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)

            for row in value:
                query = f'''INSERT INTO TransferTolly (Date,Pitem_ID,Qnty,EMPID) VALUES ('{str(row[3])}',{int(row[0])},{int(row[1])},'{str(row[2])}')'''
                cur.execute(query)
                mysql.connection.commit()   
                print(query)
            
        return ({'message': 'success'}), 200
        
    return json.dumps(json_return)
    

@app.route('/hazraorder',methods=['GET','POST'])
def hazraorder():
    cur = mysql.connection.cursor()

    val = "MItem.Mitem_ID, MItem.MitemName,MItem.Price, MItemCat.MItemCatID, MItemCat.MCatName"
    tab = "MItem,MitemCat"
    joi = "MItem.MItemCatID=MItemCat.MItemCatID"
    cur.execute(f'''Select {val} from {tab} where {joi} ''')
    rv = cur.fetchall()
    json_data = []
    headers = ['itemid','itemname','price','catid','catname']
    for row in rv:
        json_data.append(dict(zip(headers,row)))
    

    #val = "Discount.DiscountID,Discount.DiscountName"
    #tab = 'Discount'
    cur.execute('''select * from discount''')
    rv = cur.fetchall()
    headers = ['discountid','discountname']
    json_data1 = []
    for row in rv:
        json_data1.append(dict(zip(headers,row)))

    cur.execute('''select * from outlet''')
    rv = cur.fetchall()
    headers = ["outletid","outletname"]
    json_data2 = []
    for row in rv:
        json_data2.append(dict(zip(headers,row)))

    #Bill No##############
    cur = mysql.connection.cursor()
    cur.execute(f'''Select OrderHazra.OrderNo from OrderHazra  ''')
    rv = cur.fetchall()
    a = []
    for num in rv:
        a.append(num[0])
    b = []
    for num in a:
        b.append(int(num[1:]))
    c = str(max(b) + 1)
    d = ['H' + c]

    
    header = ['1']
    json_data3 = []
    json_data3.append(dict(zip(header,d)))    


    ###insert
    if request.method == "POST":
        json_data = request.get_json()
        items = json_data['items']
        value = []
        for item in items:
            value.append(list(item.values()))
        for row in value:
            query = f'''INSERT INTO OrderHazra (Date,OrderNo,Mitem_ID,Qnty,Amt) VALUES ('{str(row[3])}','{str(row[4])}',{int(row[0])},{int(row[1])},{float(row[2])})'''
            cur.execute(query)
            mysql.connection.commit()   
        print(value)
        return ({'message': 'success'}), 200
    
    jsonreturn = {}
    jsonreturn['menu'] = json_data
    jsonreturn['discount'] = json_data1
    jsonreturn['outlet'] = json_data2
    jsonreturn['OrderNo'] = json_data3

    return json.dumps(jsonreturn)


#########ORDERTOLLY#########

@app.route('/tollyorder',methods=['GET','POST'])
def tollyorder():
    cur = mysql.connection.cursor()

    val = "MItem.Mitem_ID, MItem.MitemName,MItem.Price, MItemCat.MItemCatID, MItemCat.MCatName"
    tab = "MItem,MitemCat"
    joi = "MItem.MItemCatID=MItemCat.MItemCatID"
    cur.execute(f'''Select {val} from {tab} where {joi} ''')
    rv = cur.fetchall()
    json_data = []
    headers = ['itemid','itemname','price','catid','catname']
    for row in rv:
        json_data.append(dict(zip(headers,row)))
    

    #val = "Discount.DiscountID,Discount.DiscountName"
    #tab = 'Discount'
    cur.execute('''select * from discount''')
    rv = cur.fetchall()
    headers = ['discountid','discountname']
    json_data1 = []
    for row in rv:
        json_data1.append(dict(zip(headers,row)))

    cur.execute('''select * from outlet''')
    rv = cur.fetchall()
    headers = ["outletid","outletname"]
    json_data2 = []
    for row in rv:
        json_data2.append(dict(zip(headers,row)))

    #Order No##############
    cur = mysql.connection.cursor()
    cur.execute(f'''Select OrderTolly.OrderNo from OrderTolly  ''')
    rv = cur.fetchall()
    a = []
    for num in rv:
        a.append(num[0])
    b = []
    for num in a:
        b.append(int(num[1:]))
    c = str(max(b) + 1)
    d = ['T' + c]
    
    header = ['1']
    json_data3 = []
    json_data3.append(dict(zip(header,d)))    

    #####Discounts
    
    jsonreturn = {}
    jsonreturn['menu'] = json_data
    jsonreturn['discount'] = json_data1
    jsonreturn['outlet'] = json_data2
    jsonreturn['OrderNo'] = json_data3

    if request.method == "POST":
        json_data = request.get_json()
        items = json_data['items']
        value = []
        for item in items:
            value.append(list(item.values()))
        for row in value:
            query = f'''INSERT INTO OrderTolly (Date,OrderNo,Mitem_ID,Qnty,Amt) VALUES ('{str(row[3])}','{str(row[4])}',{int(row[0])},{int(row[1])},{float(row[2])})'''
            cur.execute(query)
            mysql.connection.commit()   
        print(value)
        return ({'message': 'success'}), 200

    return json.dumps(jsonreturn)




if __name__ == "__main__":
    app.run(debug=True)
