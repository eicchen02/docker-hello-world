FROM python:3

ENV APP_HOME /APP_HOMEWORKDIR $APP_HOME
COPY . ./

RUN pip install Flask gunicorn 

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app