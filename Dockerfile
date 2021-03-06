FROM node:boron-wheezy
ADD . /code
WORKDIR /code
RUN npm install
ENTRYPOINT ["bash", "entrypoint.sh"]
CMD ["node", "cluster", "--numWorkers=1"]
