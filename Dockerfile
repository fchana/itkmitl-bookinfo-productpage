FROM python:3.7-slim

WORKDIR /home/src/app/

COPY /src/requirements.txt ./
RUN pip install -r requirements.txt

COPY /src/. /home/src/app/
EXPOSE 9080

CMD ["python","/home/src/app/productpage.py","9080"]