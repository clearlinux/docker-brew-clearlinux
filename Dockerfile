FROM scratch
MAINTAINER William Douglas <william.douglas@intel.com>
ADD base.tar.xz /
RUN cd /etc && \
    cp ../usr/share/defaults/etc/passwd /etc/ && \
    cp ../usr/share/defaults/etc/group /etc/ && \
    cp ../usr/share/defaults/etc/shadow /etc/
CMD ["/bin/bash"]
