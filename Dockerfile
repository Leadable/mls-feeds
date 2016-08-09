FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y --no-install-recommends wget \
  && rm -rf /var/lib/apt/lists/*

RUN echo deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main >> /etc/apt/sources.list.d/pgdg.list
RUN wget --no-check-certificate --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

RUN apt-get update \
  && apt-get install -y --no-install-recommends aptitude \
  && aptitude safe-upgrade -y \
  && apt-get install -y --no-install-recommends postgresql-client-9.4 build-essential libboost-all-dev libcurl4-openssl-dev autoconf antlr swig libmojolicious-perl libpq-dev libclass-dbi-pg-perl libnet-amazon-s3-perl cpanminus screen strace \
  && rm -rf /var/lib/apt/lists/*
RUN cpanm Geo::StreetAddress::US Text::LevenshteinXS Net::Azure::StorageClient DBI DBD::Pg CHI

RUN wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.1.tar.gz
RUN tar xzf 1.6.1.tar.gz
RUN cd libRETS-1.6.1/; ./autogen.sh; ./configure --disable-ruby --disable-java --disable-dotnet --disable-php --enable-shared_dependencies --disable-python; make
RUN cd libRETS-1.6.1/build/swig/perl; make install
