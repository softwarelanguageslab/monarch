FROM haskell:9.6.6-slim-bullseye

RUN apt-get update && \
    apt-get install -y z3 python3 && \
    apt-get autoremove

RUN cabal update

ADD . /app
WORKDIR /app/analyses/ase/

RUN cabal build

VOLUME /output
