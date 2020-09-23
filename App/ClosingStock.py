from flask import Flask, render_template, request
import json
from flask_cors import CORS
from App import app, mysql

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