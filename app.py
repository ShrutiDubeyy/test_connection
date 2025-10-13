# 1. Import the Flask class from the flask library
from flask import Flask

# 2. Create an instance of the Flask class
# __name__ is a special variable that gets the name of the current Python module
app = Flask(__name__)

# 3. Define a route for the home page URL ("/")
# The @app.route() decorator tells Flask what URL should trigger our function
@app.route('/')
def hello_world():
    # 4. This function runs when the home page is requested
    # It returns the text to be displayed in the browser
    return 'Hello, World!'

# 5. Check if the script is being run directly (not imported)
if __name__ == '__main__':
    # 6. Run the app on host '0.0.0.0' to make it accessible
    # from outside the Docker container.
    # The port is set to 5002 to match your setup.
    app.run(host='0.0.0.0', port=5002)
