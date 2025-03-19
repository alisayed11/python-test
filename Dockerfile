FROM devilbox/python-flask:3.8-dev

COPY ./test.py /opt/

COPY ./test_api.sh /opt/test_api.sh
RUN chmod 777 /opt/test_api.sh
CMD ["/opt/test_api.sh"]
