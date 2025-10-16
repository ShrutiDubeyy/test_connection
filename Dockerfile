 Use an official lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy your application code (app.py) into the container
COPY app.py .

# Expose the port the app runs on
EXPOSE 5002

# --- THIS IS THE FIX ---
# Command to run the Flask application on the correct port
CMD ["flask", "run", "--host=0.0.0.0", "--port=5002"]
```

### Step 2: Commit and Push
Save this change, commit it, and push it to your `main` branch. This will automatically trigger a new deployment.

### Step 3: Verify the Success
Wait for your dashboard to show **`SUCCESS`**.

Now, go to your server terminal and run the final test:

```bash
curl http://localhost:5002

