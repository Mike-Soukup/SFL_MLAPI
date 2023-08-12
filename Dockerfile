FROM mikesoukup/python-debian-plus:latest

WORKDIR /app

COPY requirements.txt requirements.txt
RUN python3 -m pip install --upgrade pip 
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]