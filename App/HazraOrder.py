from flask import Flask, render_template, request
import json
from flask_cors import CORS
from App import app, mysql


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

    ###Order Method ###

    cur.execute(f'''Select * from OrderMethod  ''')
    rv = cur.fetchall()
    json_data4 = []
    header = ['OrderMethodID','OrderMethodName']
    for row in rv:
        json_data4.append(dict(zip(header,row)))

    ###PaymentMethod#####
    cur.execute(f'''Select * from PayMethod  ''')
    rv = cur.fetchall()
    json_data5 = []
    header = ['PayMethodID','PayMethodName']
    for row in rv:
        json_data5.append(dict(zip(header,row)))

    ###insert
    if request.method == "POST":
        json_data = request.get_json()
        items = json_data['items']
        date = json_data['date']
        ordermethod = json_data['order_method']
        paymethod = json_data['paymethod_method']
        amount = json_data['amount']

        value = []
        for item in items:
            value.append(list(item.values()))
        for row in value:
            query = f'''INSERT INTO OrderHazra (Date,OrderNo,Mitem_ID,Qnty,Amt,OrderMethodID,PayMethodID) VALUES ('{str(row[3])}','{str(row[4])}',{int(row[0])},{int(row[1])},{float(row[2])},{int(row[6])},{int(row[5])})'''
            cur.execute(query)
            mysql.connection.commit()   
            print(query)

        if paymethod == '2':
            query = f'''INSERT INTO CashRegister (Date,Amt) VALUES ('{date}',{amount})'''
            cur.execute(query)
            mysql.connection.commit()
            print(query)

        return ({'message': 'success'}), 200 
    
    jsonreturn = {}
    jsonreturn['menu'] = json_data
    jsonreturn['discount'] = json_data1
    jsonreturn['outlet'] = json_data2
    jsonreturn['OrderNo'] = json_data3
    jsonreturn['OrderMethod']= json_data4
    jsonreturn['PayMethod']= json_data5

    return json.dumps(jsonreturn)