FROM centos:6.9

# copy over installation script and package list
COPY install.sh packages.txt /tmp/
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh
