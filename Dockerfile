FROM python:3.8.13-slim-bullseye
WORKDIR /application
COPY ./Requirements /application
RUN pip install --upgrade pip
RUN pip install -r /application/Requirements
ENTRYPOINT [ "python" ]
CMD ["main.py"]