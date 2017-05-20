import numpy as np
from flask import Flask, jsonify, render_template, request, session

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!'

@app.route('/u/<user>')
def user_page(user):
    return "Hello, {0}".format(user)

@app.route('/square/<int:i>')
def int_page(i):
    return "{0}^2 = {1}".format(i, i**2)

@app.route('/page/<user>')
@app.route('/page')
def get_page(user=None):
    return render_template('greeting.html',
                           name=user,
                           navigation=session.get('navigation', []))
                           #navigation=[{'href': '/',
                           #             'caption': 'Home'}])

@app.route('/new_navitem')
def add_navitem():
    if 'href' in request.values and 'caption' in request.values:
        new_navitem = {'href': request.values['href'],
                       'caption': request.values['caption']}
        session['navigation'] = session.get('navigation', []) + [new_navitem]
    return jsonify(session['navigation'])


@app.route('/numbers.json')
def numbers():
    return jsonify(list(np.random.standard_normal(10)))

@app.route('/chart')
def chart():
    return app.send_static_file('dynamic_chart.html')

@app.route('/loadchart.js')
def get_js():
    return app.send_static_file('loadchart.js')

@app.route('/data.json')
def get_json():
    return jsonify({'columns': [{'name': 'X', 'type': 'number'},
                                {'name': 'Dogs', 'type': 'number'}],
                    'rows': [[0, 0],   [1, 10],  [2, 23],  [3, 17],  [4, 18],  [5, 9],
                             [6, 11],  [7, 27],  [8, 33],  [9, 40],  [10, 32], [11, 35],
                             [12, 30], [13, 40], [14, 42], [15, 47], [16, 44], [17, 48],
                             [18, 52], [19, 54], [20, 42], [21, 55], [22, 56], [23, 57],
                             [24, 60], [25, 50], [26, 52], [27, 51], [28, 49], [29, 53],
                             [30, 55], [31, 60], [32, 61], [33, 59], [34, 62], [35, 65],
                             [36, 62], [37, 58], [38, 55], [39, 61], [40, 64], [41, 65],
                             [42, 63], [43, 66], [44, 67], [45, 69], [46, 69], [47, 70],
                             [48, 72], [49, 68], [50, 66], [51, 65], [52, 67], [53, 70],
                             [54, 71], [55, 72], [56, 73], [57, 75], [58, 70], [59, 68],
                             [60, 64], [61, 60], [62, 65], [63, 67], [64, 68], [65, 69],
                             [66, 70], [67, 72], [68, 75], [69, 80]]})

app.secret_key = '_\x11cV\xfc\x96\x12C\x0e\xb0\xb5\xaf?\x9c\xc9o\xf1\x8cYw\xaf\x05\xe1Z'
