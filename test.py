from gc import collect

from flask import Flask, request, jsonify
import mysql.connector as connection
import pymongo

app = Flask(__name__)


@app.route('/MySQL/getData', methods=['GET', 'POST'])
def getDataInMySql():
    try:
        if request.method == 'POST':
            host = request.json['host']
            database = request.json['database']
            user = request.json['user']
            password = request.json['password']
        mydb = connection.connect(host=host, database=database, user=user, passwd=password, use_pure=True)
        # check if the connection is established
        print(mydb.is_connected())
        query = "Select * from glassdata;"
        # create a cursor to execute queries
        cursor = mydb.cursor()
        cursor.execute(query)
        TotalRecords = []

        # get the cloumn name from the Database
        column_names = [i[0] for i in cursor.description]
        print(column_names)
        for result in cursor.fetchall():
            # Append the column name to the result
            TotalRecords.append(dict(zip(column_names, result)))
        print(TotalRecords)
        # close the connection
        mydb.close()
        return jsonify(TotalRecords)

    except Exception as e:
        mydb.close()
        print(str(e))


@app.route('/MONGODB/GetData', methods=['GET', 'POST'])
def getData():
    try:
        if request.method == 'POST':
            url = request.json['url']
            database = request.json['DatabaseName']
            collectionName = request.json['collectionName']
        collection_of_records = pymongo.MongoClient(url)[database][collectionName].find({"Chiral indice n": str(10)})
        total_records = []
        for id in enumerate(collection_of_records):
            total_records.append(id[1])
        return jsonify(total_records)
    except Exception as e:
        print(str(e))


if __name__ == '__main__':
    app.run(debug=True)
