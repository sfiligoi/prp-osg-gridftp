FROM opensciencegrid/software-base:fresh

RUN yum -y update

RUN yum -y install  \
                   osg-ca-certs \
                   cilogon-openid-ca-cert \
                   osg-gridftp \
                   redhat-lsb-core

RUN yum clean all

#ADD cron.d/fetch-crl.cron /etc/cron.d/fetch-crl.cron

#ADD supervisord.d/condor-ce.conf /etc/supervisord.d/condor-ce.conf

#ADD image-config.d/90_osg-configure.sh /etc/osg/image-config.d/90_osg-configure.sh 

# enables gratia
#RUN touch /var/lock/subsys/gratia-probes-cron

CMD ["/usr/bin/supervisord_startup.sh"]
