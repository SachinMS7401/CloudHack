FROM mongo

RUN apt-get update && apt-get install -y python3-pip sudo

COPY app/ ./app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 5001

CMD [ "python3", "app.py" ]

# use the `mongo` image
# copy the app directory and any files needed for your implementation from your local to the container
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
# expose the port flask app will run on
