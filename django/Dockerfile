# Start with a Python image.
FROM python:latest

# Some stuff that everyone has been copy-pasting
# since the dawn of time.
ENV PYTHONUNBUFFERED 1

# Install some necessary things.
RUN apt-get update && \
    apt-get install -y openssl


RUN mkdir /static /code /code/static /config /log

# Install our requirements and copy files.
ADD ./requirements.pip /code/requirements.pip
WORKDIR /code
RUN pip install -U pip
RUN pip install -Ur requirements.pip
COPY . /code/


## Collect our static media.
#RUN /code/manage.py collectstatic --noinput
#
## Migrate database.
#RUN /code/manage.py migrate

EXPOSE 8000

# Specify the command to run when the image is run.
CMD ["/code/run.sh"]