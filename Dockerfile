FROM centos:7
MAINTAINER jonathan.dupuich@gmail.com

# Install repository
RUN rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

# Install packages
RUN yum update -y && yum install -y \
	git \
	puppet