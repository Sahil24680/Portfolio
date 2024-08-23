# Use an official Python runtime as a parent image
FROM python:3

# Set environment variable to ensure Python output is not buffered
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 8000 to the outside world
EXPOSE 8000

# Run the Django development server when the container launches
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
