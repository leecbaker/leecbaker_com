from flask import abort, Flask, jsonify, make_response, redirect, render_template

debug = False
app = Flask(__name__,static_url_path='')
app.config.update(debug = debug)
app.secret_key = "asdfleecbaker.com"

@app.route("/")
def index():
	return render_template('index.html')

@app.route("/resume")
def resume():
	return render_template('resume.html')

@app.route("/contact")
def contact():
	return render_template('contact.html')

@app.route("/vpn")
def vpn():
	return render_template('vpn.html')

@app.errorhandler(404)
def page_not_found(exception):
	return render_template('error_404.html'), 404

@app.errorhandler(500)
def internal_server_error(exception):
	return render_template('error_500.html'), 500

if __name__ == "__main__":
	app.run(debug=debug, port=5002, host='0.0.0.0')
