FROM alpine

RUN ["apk", "update"]
RUN ["apk", "add", "weechat"]
RUN ["apk", "add", "shadow"]
RUN ["apk", "add", "busybox-extras"]
RUN ["useradd", "--create-home", "--shell", "/bin/sh", "weechat"]
RUN echo 'weechat:weechat' | chpasswd
RUN echo 'export TERM=linux' > /home/weechat/.profile
CMD ["busybox-extras", "telnetd", "-K", "-p", "6502", "-F"]
