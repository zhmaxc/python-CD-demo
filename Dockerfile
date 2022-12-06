FROM python:3
RUN mkdir app
ADD app.py /app/app.py
WORKDIR app
# Install pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN apt-get install python3-distutils
RUN python3 get-pip.py
#Install other libs
RUN pip3 install flask -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
EXPOSE 5050
CMD ["/bin/bash/set", "FLASK_APP=app.py"]
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=5050"]