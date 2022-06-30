from flask import Flask, request

app = Flask(__name__)


@app.route("/transformer", methods=["POST"])
def transform():
    data = request.json
    transformed_data = data
    return transformed_data

if __name__ == '__main__':
    app.run()