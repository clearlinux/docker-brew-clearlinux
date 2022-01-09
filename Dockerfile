FROM scratch
MAINTAINER William Douglas <william.douglas@intel.com>
ADD base.tar.xz /
RUN cd /etc && \
    ln -s ../usr/share/defaults/etc/passwd /etc/ && \
    ln -s ../usr/share/defaults/etc/group /etc/ && \
    ln -s ../usr/share/defaults/etc/shadow /etc/
CMD ["/bin/bash"]
