FROM centos:6.9

# copy over installation script and package list
COPY install-epel.sh install.sh packages.txt /tmp/

# make our scripts executable
RUN chmod +x /tmp/install-epel.sh
RUN chmod +x /tmp/install.sh

# install epel and freshen things up a bit
RUN /tmp/install-epel.sh

# install our packages
RUN /tmp/install.sh

