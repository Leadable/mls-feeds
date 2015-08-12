FROM ubuntu:14.04

RUN apt-get install -y --no-install-recommends wget \
  && rm -rf /var/lib/apt/lists/*

RUN echo deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main >> /etc/apt/sources.list.d/pgdg.list
RUN wget --no-check-certificate --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

RUN apt-get update \
  && apt-get install -y --no-install-recommends aptitude \
  && aptitude safe-upgrade -y \
  && apt-get install -y --no-install-recommends postgresql-client-9.4 postgresql-9.4 postgresql-contrib-9.4 postgresql-9.4-postgis-2.1 build-essential libboost-all-dev libcurl4-openssl-dev autoconf antlr swig libmojolicious-perl libpq-dev libclass-dbi-pg-perl libnet-amazon-s3-perl cpanminus screen strace \
  && rm -rf /var/lib/apt/lists/*
RUN cpanm Geo::StreetAddress::US Text::LevenshteinXS Net::Azure::StorageClient DBI DBD::Pg

RUN wget https://github.com/NationalAssociationOfRealtors/libRETS/archive/1.6.1.tar.gz
RUN tar xzf 1.6.1.tar.gz
RUN cd libRETS-1.6.1/; ./autogen.sh; ./configure --disable-ruby --disable-java --disable-dotnet --disable-php --enable-shared_dependencies --disable-python; make
RUN cd libRETS-1.6.1/build/swig/perl; make install

# Run the rest of the commands as the ``postgres`` user created by the ``postgres-9.4`` package when it was ``apt-get installed``
USER postgres

# Create a PostgreSQL role named ``docker`` with ``docker`` as the password and
# then create a database `docker` owned by the ``docker`` role.
# Note: here we use ``&&\`` to run commands one after the other - the ``\``
#       allows the RUN command to span multiple lines.
RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER mls-db-owner WITH SUPERUSER PASSWORD 'zmWWhBDcusTvtq4Bbx5tQW9GAUSMhR3RuyAnghgV';" &&\
    createdb -O mls-db-owner mls

# Adjust PostgreSQL configuration so that remote connections to the
# database are possible. 
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.4/main/pg_hba.conf

# And add ``listen_addresses`` to ``/etc/postgresql/9.4/main/postgresql.conf``
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf

EXPOSE 5432

USER root
