#!/bin/sh

# install epel
yum install -y epel-release

# freshen things up a bit
yum update -y
yum upgrade -y
