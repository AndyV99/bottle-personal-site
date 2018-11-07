from bottle import Bottle, template, static_file
import sass

app = Bottle()

def compile_scss():
	file = open("styles/app.scss", 'r')
	scss = file.read()
	out_file = open("styles/app.css", 'w')
	out_file.write(sass.compile(string=scss))

@app.route('/static/<filepath:path>')
def server_static(filepath):
	compile_scss()
	return static_file(filepath, root='')

@app.route('/')
def hello():
	return template('pages/index')

@app.route('/projects')
def show_projects():
	return template('pages/projects')

@app.route('/work')
def show_work():
	return template('pages/work')

@app.route('/blog')
def show_blog():
	return template('pages/blog')

app.run(host='localhost', reloader=True)