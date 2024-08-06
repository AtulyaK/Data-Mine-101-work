print(f"Hello world")
from flask import Flask

app = Flask(__name__)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
from flask import Flask
from flask import render_template

app = Flask(__name__)
@app.route('/')
def hello():
    return "Hello World!"
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
from flask import Flask
from flask import render_template

app = Flask(__name__)
@app.route('/')
def hello(name=None):
    return render_template('index.html', name=name)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)