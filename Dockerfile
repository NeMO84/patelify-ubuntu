# Docker details
FROM ubuntu:14.04.5
MAINTAINER Nirmit Patel

# Initialize bootstrap script
RUN mkdir /bootstrap
ADD bootstrap.sh /tmp/
RUN /tmp/bootstrap.sh
RUN rm -f /tmp/bootstrap.sh

# Initialize ruby script
ADD ruby.sh /tmp/
RUN /tmp/ruby.sh
RUN rm -f /tmp/ruby.sh

CMD ["/bin/bash"]
