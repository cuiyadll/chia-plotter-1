FROM python:3.7

RUN pip install --extra-index-url https://hosted.chia.net/simple/ chia-blockchain==1.1.5 miniupnpc==2.1
RUN chia init

WORKDIR /root
COPY *.sh *.txt /root/
CMD bash plotter.sh