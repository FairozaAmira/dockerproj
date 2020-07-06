FROM python:3.7.3-stretch

#working directory
WORKDIR /app

#copy source code to workimng directory
COPY . app.py /app/

#install packages from requirements.txt
#hadolint ignore=DL3013
RUN pip3 install --upgrade pip &&\
    pip3 install --trusted-host pypi.python.org -r requirements.txt