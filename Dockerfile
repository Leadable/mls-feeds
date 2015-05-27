FROM ubuntu:14.04

RUN apt-get update && apt-get install -y aptitude && aptitude safe-upgrade -y && apt-get install -y build-essential libboost-all-dev libcurl4-gnutls-dev autoconf antlr swig wget libmojolicious-perl libpq-dev libclass-dbi-pg-perl libnet-amazon-s3-perl cpanminus
RUN cpanm install Geo::StreetAddress::US Text::LevenshteinXS

RUN wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.1.tar.gz
RUN tar xzf 1.6.1.tar.gz
RUN cd libRETS-1.6.1/; ./autogen.sh; ./configure --disable-ruby --disable-java --disable-dotnet --disable-php --enable-shared_dependencies --disable-python; make
RUN cd libRETS-1.6.1/build/swig/perl; make install

RUN echo deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN apt-get install -y postgresql-9.4 postgresql-9.4-postgis-2.1
RUN service postgresql start
