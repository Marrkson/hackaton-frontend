## Flask Frontend, with a file upload field, a text field for the question, and a submit button.
from flask import Flask, render_template


app = Flask(__name__, template_folder='.', static_folder='.', static_url_path='')

app.config['SECRET_KEY'] = 'yeetxd'

@app.route('/', methods=["GET", "POST"])
def root():
    return render_template("getinputpage.html")

if __name__ == '__main__':
    app.run(debug=True)