#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
DEPENDENCY_PACKAGES="libxslt1-dev libcurl4-openssl-dev libffi-dev zlib1g-dev libssl-dev libreadline-dev libyaml-dev libmysqlclient-dev libxml2-dev nodejs libsqlite3-dev sqlite3"
apt-get -y install $DEPENDENCY_PACKAGES

wget http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz -P /tmp/
tar -xzvf /tmp/ruby-2.3.1.tar.gz -C /tmp/
cd /tmp/ruby-2.3.1/ ; ./configure && make && make install
ruby -v

# Install .gemrc to home directory
RUN curl -o ~/.gemrc https://gist.githubusercontent.com/NeMO84/b0ebbda7503d90f768b4/raw/fadaca6438d7cca9ff29bdc18248af364791dee5/.gemrc

gem update --system
gem install bundler
