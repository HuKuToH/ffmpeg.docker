FROM ubuntu:20.10

RUN apt-get -y update && \
    apt-get install -y git pkg-config gcc make libx264-dev wget


RUN wget https://ffmpeg.org/releases/ffmpeg-4.3.2.tar.gz && \
    tar -xzf ffmpeg-4.3.2.tar.gz && \
    rm ffmpeg-4.3.2.tar.gz && \
    cd ffmpeg-4.3.2/ && \
    ./configure --disable-x86asm --enable-libx264 --enable-gpl && \
    make -j5 && \
    make install && \
    cd .. && \
    rm -r ffmpeg-4.3.2

#ENTRYPOINT ["ffmpeg"]


    