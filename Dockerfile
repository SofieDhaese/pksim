FROM centos:centos7.5.1804
RUN yum -y install gcc-gfortran epel-release
RUN mkdir /root/pksim
RUN mkdir /root/pksim/Rlibraries
WORKDIR /root/pksim
RUN yum -y install R
COPY test.r test.r
COPY install.r install.r
# RUN Rscript test.r