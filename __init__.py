from flask import abort, Flask, jsonify, make_response, redirect, render_template

debug = False
app = Flask(__name__,static_url_path='')
app.config.update(debug = debug)
app.secret_key = "asdfleecbaker.com"

@app.route("/")
def index():
	return render_template('index.tpl')

@app.route("/resume")
def resume():
	return render_template('resume.tpl')

@app.route("/contact")
def contact():
	return render_template('contact.tpl')

@app.errorhandler(404)
def page_not_found(exception):
	return render_template('error_404.tpl'), 404

@app.errorhandler(500)
def internal_server_error(exception):
	return render_template('error_500.tpl'), 500

if __name__ == "__main__":
	app.run(debug=debug, port=5002, host='0.0.0.0')
