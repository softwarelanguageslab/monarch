FROM haskell:9.6.6-slim

WORKDIR /artifact

RUN mkdir /artifact/maf2-analysis
RUN mkdir /artifact/maf2-domains
RUN mkdir /artifact/maf2-syntax
RUN mkdir /artifact/maf2-scv/

# Install vim and cleanup
RUN apt-get update && apt-get install -y vim \
    && rm -rf /var/lib/apt/lists/*

# Install ghcup to manage multiple GHC versions (necessary for the lambda example)
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

# Add ghcup and cabal to PATH
ENV PATH="/root/.ghcup/bin:/root/.cabal/bin:/root/.local/bin:${PATH}"

# Install GHC 9.4.8 using ghcup (necessary for the lambda example)
RUN ghcup install ghc 9.4.8

# Update Hackage index (for a specific date 
# for correct reproducability)
RUN cabal update --index-state=2024-10-01T00:00:00Z

# Only now copy the artifact since this will change 
# often and invalidates the cache.
COPY . /artifact

# Install the analysis package
RUN cabal install maf2-analysis

ENTRYPOINT ["maf-exe"]