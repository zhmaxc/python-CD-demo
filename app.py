from flask import *
app = Flask(__name__,static_url_path='/s',static_folder='/static')
@app.route('/')
def index():
    return '<title>火山引擎</title> <img src="https://songhe.tos-cn-beijing.volces.com/index.jpg", width="2000" />'
if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5050)