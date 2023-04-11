
FROM python:3.9

#COPY  . /PYTHON-FEATURE-DEV

WORKDIR /PYTHON-FEATURE-DEV

COPY  requirements.txt .


#FROM python:3.9-slim-buster
#WORKDIR /PYTHON-FEATURE-DEV
#COPY ./requirements.txt /PYTHON-FEATURE-DEV

#RUN pip install --no-cache-dir -r requirements.txt
RUN pip3 install -r requirements.txt
RUN pip install structlog
RUN pip install SQLAlchemy

COPY . .




EXPOSE 5000

#CMD  "python" "repository/database.py"  "runserver"  "0.0.0.0:5000"

CMD [ "python", "./web/techstack_app.py" ]
#ENV FLASK_APP="/python-feature-dev/web/techstack_app.py"
#CMD ["flask", "run", "--host", "0.0.0.0"]
#"--host=0.0.0.0"  "web/techstack_app.py" "--host=0.0.0.0"