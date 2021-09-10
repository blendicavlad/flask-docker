from flask import Flask

app = Flask(__name__)


@app.route('/')
def call_service():
    return 'Data cleaning service is now running!'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
