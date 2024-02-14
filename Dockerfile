FROM python:3.8 

WORKDIR /code 

COPY ./requirements.txt /code/requirements.txt

RUN pip install -r /code/requirements.txt

COPY ./main.py /code/main.py 

EXPOSE 8000 

CMD ["python3", "main.py"]