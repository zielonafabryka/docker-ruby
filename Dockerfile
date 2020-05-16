FROM ruby
MAINTAINER felixd@wp.pl
RUN apt-get update && apt-get install wget build-essential libc6-dev -y \
 && wget http://www.freetds.org/files/stable/freetds-1.1.36.tar.gz \
 && tar -xzf freetds-1.1.36.tar.gz \ 
 && cd freetds-1.1.36 \
 && ./configure --prefix=/usr/local --with-tdsver=7.4 \
 && make && make install \
 && gem install tiny_tds