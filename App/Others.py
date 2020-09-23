from flask import Flask, render_template, request
import json
from flask_cors import CORS
from App import app, mysql

@app.route('/cashtransfer',methods=['GET','POST'])
def cashtransfer():
    cur = mysql.connection.cursor()
    cur.execute(f'''Select EMPID,EMPName from Employees''')
    rv = cur.fetchall()    
    headers = ['EmpID','EmpName']
    json_data = []
    for row in rv:
        json_data.append(dict(zip(headers,row)))
    return json.dumps(json_data)



@app.route('/addmitem',methods=['GET','POST'])
def addmitem():
    cur = mysql.connection.cursor()
    cur.execute(f'''Select MItemCatID,MCatName from MItemCat''')
    rv = cur.fetchall() 
    headers = ['MCatID','MCatName']  
    json_data = []
    for row in rv:
        json_data.append(dict(zip(headers,row)))

    #InsertItem
    if request.method == "POST":
        json_data = request.get_json()
        itemname = json_data['name']
        category = json_data['category']
        price = json_data['price']
        value = [] 
        
        query = f'''INSERT INTO MItem (MitemName,MitemCatID,Price) VALUES ('{itemname}','{category}',{price})'''
        cur.execute(query)
        mysql.connection.commit()   
        print(query)

        return ({'message': 'success'}), 200
    return json.dumps(json_data)


