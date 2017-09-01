FROM centos:7
MAINTAINER Serhio <syrus.sergey@gmail.com>

RUN yum -y update \
	&& yum clean all

RUN yum update -y -q \
	&& yum --nogpgcheck -y install cronie \
	&& yum clean all

ADD cronfile /etc/cron.d/cronjob

RUN touch /var/log/cron.log


CMD ["crond", "-n"]
