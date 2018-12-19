FROM centos:centos7.5.1804
RUN yum -y install gcc-gfortran epel-release
RUN mkdir /root/pksim
RUN mkdir /root/pksim/Rlibraries
WORKDIR /root/pksim
RUN yum -y install R
COPY install.r install.r
COPY compile.r compile.r
COPY FortConfig.txt /root/.config/Pmetrics/FortConfig.txt
RUN Rscript install.r
RUN Rscript compile.r