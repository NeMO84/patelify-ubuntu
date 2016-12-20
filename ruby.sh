#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
DEPENDENCY_PACKAGES="libxslt1-dev libcurl4-openssl-dev libffi-dev zlib1g-dev libssl-dev libreadline-dev libyaml-dev libmysqlclient-dev libxml2-dev nodejs libsqlite3-dev sqlite3"
apt-get -y install $DEPENDENCY_PACKAGES

wget http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz -P /tmp/
tar -xzvf /tmp/ruby-2.3.1.tar.gz -C /tmp/
cd /tmp/ruby-2.3.1/ ; ./configure && make && make install
ruby -v

gem install bundler
