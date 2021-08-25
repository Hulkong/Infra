FROM mongo:4.0.0

WORKDIR /usr/src
RUN mkdir configs
WORKDIR /usr/src/configs

COPY init/connect-repl.sh .
COPY init/replicaSet.js .
COPY init/setUsers.js .

RUN chmod +x ./connect-repl.sh

CMD ["./connect-repl.sh"]