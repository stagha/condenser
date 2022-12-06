FROM python:3

WORKDIR ./

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN apt-get -y update
RUN apt-get -y install postgresql

CMD [ "python", "./direct_subset.py" ]
