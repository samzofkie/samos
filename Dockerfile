FROM archlinux:latest
RUN pacman-key --init
RUN pacman -Syu

RUN pacman -Syu --noconfirm base-devel
RUN pacman -Syu --noconfirm gmp libmpc mpfr

WORKDIR /root
ENV PATH="/root/opt/cross/bin:$PATH"
