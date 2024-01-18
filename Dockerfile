FROM scratch
MAINTAINER William Douglas <william.douglas@intel.com>
ADD base.tar.xz /
RUN cd /etc && \
    grep root /usr/share/defaults/etc/passwd > /etc/passwd && \
    grep root /usr/share/defaults/etc/group > /etc/group && \
    echo 'root:!:::::::' > /etc/shadow
CMD ["/bin/bash"]
