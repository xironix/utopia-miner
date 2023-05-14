# syntax=docker/dockerfile:1
   
FROM debian:bullseye-slim
RUN apt update
RUN apt install libglib2.0-0 wget -y
RUN wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
RUN dpkg -i uam-latest_amd64.deb
# CMD [ "/opt/uam", "--pk", "D612BEDB6873B708E215CBAE49788761D206694D8791EFFA9E54B9AD4671243D"]