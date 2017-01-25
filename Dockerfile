FROM node:argon

RUN apt-get update && apt-get install -y lsb-release vim less

RUN mkdir /dockerThing  
COPY . /dockerThing

RUN cd dockerThing; npm install --production

# express applications listen on port 3000 by default
EXPOSE 3000

WORKDIR /dockerThing

CMD ["/usr/local/bin/node", "bin/www"]
