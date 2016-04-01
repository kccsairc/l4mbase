FROM ubuntu:14.04
MAINTAINER kueno

RUN apt-get update
RUN apt-get install -y git python-setuptools python-dev && \
    apt-get install -y libavcodec-dev libavformat-dev libswscale-dev && \
    apt-get install -y libjpeg62 libjpeg62-dev libfreetype6 libfreetype6-dev && \
    apt-get install -y apache2 libapache2-mod-wsgi mysql-server mysql-client && \
    apt-get install -y libmysqlclient-dev gfortran python-mysqldb python-pip

RUN pip install SQLAlchemy && \
    pip install wsgilog && \
    pip install Cython==0.20 && \
    pip install mysql-python && \
    pip install munkres && \
    pip install parsedatetime && \
    pip install argparse && \
    pip install numpy