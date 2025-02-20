FROM ubuntu
RUN apt-get update 
RUN apt-get install -y python2
RUN apt-get install -y pip 
RUN pip install flask 
RUN pip install flask.mysql
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
