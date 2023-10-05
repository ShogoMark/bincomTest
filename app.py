#!/usr/bin/python3

from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)

# MySQL database configuration
DATABASE = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'bin_test'
}

# Helper function to connect to the MySQL database
def get_db():
    conn = mysql.connector.connect(
        host=DATABASE['host'],
        user=DATABASE['user'],
        password=DATABASE['password'],
        database=DATABASE['database']
    )
    return conn

# Route to display the webpage
@app.route('/')
def index():
    return render_template('index.html')

# API endpoint to fetch election results for a polling unit
@app.route('/api/polling_unit_results', methods=['GET'])
def get_polling_unit_results():
    polling_unit_id = request.args.get('polling_unit_id')
    
    # Query the database for election results of the specified polling unit
    conn = get_db()
    cursor = conn.cursor(dictionary=True)  # Return results as dictionaries
    cursor.execute(
        "SELECT announced_pu_results.party_abbreviation, announced_pu_results.party_score "
        "FROM announced_pu_results "
        "JOIN polling_unit ON announced_pu_results.polling_unit_uniqueid = polling_unit.uniqueid "
        "WHERE polling_unit.polling_unit_id = %s", (polling_unit_id,))
 

    results = cursor.fetchall()# Return the results as JSON

    processed_results = []
    for row in results:
        party_abbreviation = row['party_abbreviation']
        party_score = row['party_score']
        processed_results.append({'party_abbreviation': party_abbreviation, 'party_score': party_score})
    
    return jsonify(processed_results)
    
    cursor.close()
    conn.close()


@app.route('/api/announced_pu_results', methods=['GET'])
def get_local_government_total():
    local_government = request.args.get('local_government')

    # Query the database to calculate the total result for the specified lg
    conn = get_db()
    cursor = conn.cursor()
    cursor.execute("SELECT apr.party_abbreviation, SUM(apr.party_score) AS total_score "
				   "FROM announced_pu_results apr "
				   "JOIN lga l ON apr.polling_unit_uniqueid = l.uniqueid "
				   "WHERE l.lga_name = %s "
				   "GROUP BY apr.party_abbreviation", (local_government,))


if __name__ == '__main__':
    app.run(debug=True)
