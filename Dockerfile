FROM daocloud.io/liuyuan960829/matlab_runtime

MAINTAINER yuan liu <2301794925.com>

WORKDIR /mcr-install

RUN ./install -mode silent -agreeToLicense yes

RUN cd /

RUN rm -Rf /mcr-install

#配置 matlab runtime 的环境

ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/runtime/glnxa64:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/bin/glnxa64:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/sys/os/glnxa64:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/sys/java/jre/glnxa64/jre/lib/amd64/native_threads:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/sys/java/jre/glnxa64/jre/lib/amd64/server:/home/iuyuan/local/MATLAB/MATLAB_Runtime/vq0/sys/java/jre/glnxa64/jre/lib/amd64

ENV XAPPLRESDIR=/usr/local/MATLAB/MATLAB_Runtime/vq0/X11/app-defaults

ENV MCR_CACHE_VERBOSE=true

ENV MCR_CACHE_ROOT=/tmp
