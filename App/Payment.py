from flask import Flask, render_template, request
import json
from flask_cors import CORS
from App import app, mysql


@app.route('/payment',methods=['GET','POST'])
def payment():
    cur = mysql.connection.cursor()
    cur.execute(f'''Select Supplier_ID,Supplier_Name from Suppliers''')
    rv = cur.fetchall()
    headers = ['SupplierID','SupplierName']
    json_data = []
    for row in rv:
        json_data.append(dict(zip(headers,row)))

    cur.execute('''select Paymethod_ID, Paymethod_Name from PayMethod''')
    rv = cur.fetchall()
    headers = ['PayMethodID','PayMethodName']
    json_data1 = []
    for row in rv:
        json_data1.append(dict(zip(headers,row)))

    if request.method == "POST":
        json_data = request.get_json()
        date = json_data['data']
        supplier = json_data['supplier']
        amount = json_data['amount']
        paymethod = json_data['payMethod']

        if paymethod == '2':
            query = f''' INSERT INTO Payments (Date,Supplier_ID,Amount,PayMethod_ID) VALUES ('{date}',{supplier},{amount},{paymethod}) '''
            cur.execute(query)
            mysql.connection.commit()   
            print(query)

            query = f''' INSERT INTO CashRegister (Date,Amt) VALUES ('{date}',{-abs(amount)}) '''
            cur.execute(query)
            mysql.connection.commit()   
            print(query)
            return ({'message': 'success'}), 200

        else:
            query = f''' INSERT INTO Payments (Date,Supplier_ID,Amount,PayMethod_ID) VALUES ('{date}',{supplier},{amount},{paymethod}) '''
            cur.execute(query)
            mysql.connection.commit()   
            print(query)
            return ({'message': 'success'}), 200


    jsonreturn = {}
    jsonreturn['Supplier'] = json_data
    jsonreturn['Paymethod'] = json_data1
    return json.dumps(jsonreturn)