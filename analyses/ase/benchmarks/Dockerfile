FROM haskell:9.6.6-slim-bullseye

# Other dependencies

RUN apt-get update && \
    apt-get install -y python3 wget && \
    apt-get autoremove --yes

RUN rm -rf /var/lib/{apt,dpkg,cache,log}/

# Z3

WORKDIR /z3

RUN git clone https://github.com/Z3Prover/z3 /z3 && \
    git checkout 3c47fd96cf5645d0c42b2c819d9e9a84380aa721

RUN python3 scripts/mk_make.py && \
    cd build && \
    make -j$(nproc) && \
    make install

RUN rm -rf /z3
    
# Build the project

RUN cabal update

ADD . /app
WORKDIR /app/analyses/ase/

RUN cabal build

VOLUME /output
