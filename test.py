import os
from flask import Flask

app = Flask(__name__)

@app.route('/')

def output():
    return 'Hello there!'

if __name__ == "__main__":
    app.run(debug = true, host = '0.0.0.0', port  = 8080)