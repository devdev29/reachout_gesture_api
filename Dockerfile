FROM python:3.9
 
WORKDIR /code
 
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

EXPOSE 5000

USER 1000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5000"]
