FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y aptitude
RUN aptitude safe-upgrade -y
RUN apt-get install -y build-essential libboost-all-dev libcurl4-gnutls-dev autoconf antlr swig wget libmojolicious-perl libpq-dev libclass-dbi-pg-perl libnet-amazon-s3-perl cpanminus
RUN cpanm install Geo::StreetAddress::US

RUN wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.1.tar.gz
RUN tar xzf 1.6.1.tar.gz
RUN cd libRETS-1.6.1/; ./autogen.sh; ./configure --disable-ruby --disable-java --disable-dotnet --disable-php --enable-shared_dependencies --disable-python; make
RUN cd libRETS-1.6.1/build/swig/perl; make install

