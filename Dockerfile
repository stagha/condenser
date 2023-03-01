FROM python:3

RUN mkdir /tmp/subset
WORKDIR /tmp/subset

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN apt-get -y update
RUN apt-get -y install postgresql
