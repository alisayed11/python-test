FROM devilbox/python-flask

COPY ./test.py /opt/
RUN apt-get update -y
RUN apt-get install -y build-essential
RUN pip install --upgrade pip
COPY ./test_api.sh /opt/test_api.sh
RUN chmod -x /opt/test_api.sh
CMD ["/opt/test_api.sh"]
