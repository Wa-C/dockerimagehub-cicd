#Use the official Python image from the Docker Hub
FROM python:3.9-slim


#Set the working direcktory
WORKDIR /app


#Copy the current directory contents into the container at /app
COPY . /app

#Intall any needed packages specified in reqeuirements.txt
RUN pip install flask

#Make port 5000 available to the world outside this container
EXPOSE 5000

#Run app.py when the container launches
CMD ["python", "app.py"]