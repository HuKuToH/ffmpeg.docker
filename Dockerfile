FROM ubuntu:20.10

RUN apt-get -y update && \
    apt-get install -y git pkg-config gcc make libx264-dev wget


RUN git clone https://github.com/HuKuToH/FFmpeg  && \
    cd FFmpeg/ && \
    ./configure --disable-x86asm --enable-libx264 --enable-gpl && \
    make -j5 && \
    make install && \
    cd .. && \
    rm -r FFmpeg

ENTRYPOINT ["ffmpeg"]


    
