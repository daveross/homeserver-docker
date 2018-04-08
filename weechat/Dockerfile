FROM alpine

RUN apk update
RUN apk add shadow weechat busybox-extras
RUN echo 'export TERM=xterm' > /run-weechat
RUN echo 'stty erase ^H' >> /run-weechat
RUN echo '/usr/bin/weechat' >> /run-weechat
RUN chmod a+x /run-weechat
RUN useradd --create-home --shell /run-weechat weechat
RUN echo 'weechat:weechat' | chpasswd
RUN echo 'export TERM=linux' > /home/weechat/.profile
CMD busybox-extras telnetd -K -p 6502 -F
