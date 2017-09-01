FROM centos:7
MAINTAINER Serhio <syrus.sergey@gmail.com>

RUN yum -y update \
	&& yum --nogpgcheck -y install cronie \
	&& yum clean all

ADD start.sh /start.sh
ADD cron_command.sh /cron_command.sh

CMD ["/start.sh"]
