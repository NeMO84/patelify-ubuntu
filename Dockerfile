# Docker details
FROM ubuntu:14.04.5
MAINTAINER Nirmit Patel

# Install bootstrap scripts
RUN mkdir /bootstrap
ADD *.sh /tmp/
RUN /tmp/bootstrap.sh
RUN /tmp/ruby.sh

CMD ["/bin/bash"]
