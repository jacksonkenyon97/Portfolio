from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Flask is running in your conda environment!'

@app.route('/about')
def about():
    return 'This is a test Flask application'

if __name__ == '__main__':
    app.run(debug=True)