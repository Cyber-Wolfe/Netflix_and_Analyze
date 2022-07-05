from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy.sql import text
 
app = Flask(__name__)

#Call homepage
@app.route("/")
def home_view():
        return render_template('index.html')

#Call Database
db_name = 'Entertainment_Ratings.db'

app.config['SQLALCHEMY_DATABASE_URI'] = "mssql://admin:Project123!@rutgersgroupproject.czymx7wg8j7o.us-east-1.rds.amazonaws.com,1433/Entertainment_Ratings"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
db = SQLAlchemy(app)

@app.route('/')
def testdb():
    try:
        db.session.query(text('1')).from_statement(text('SELECT 1')).all()
        return '<h1>It works.</h1>'
    except Exception as e:
        # e holds description of the error
        error_text = "<p>The error:<br>" + str(e) + "</p>"
        hed = '<h1>Something is broken.</h1>'
        return hed + error_text

if __name__ == '__main__':
    app.run(debug=True)
