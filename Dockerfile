FROM node:10.13.0-slim
# FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends xvfb x11vnc libfontconfig wkhtmltopdf xauth && \
    apt-get clean

WORKDIR /app

ADD ./html2image.sh ./
ADD ./html2pdf.sh ./

RUN chmod +x ./html2image.sh
RUN chmod +x ./html2pdf.sh
RUN mkdir -p public

CMD ["./run.sh", "/app/public/index.html", "/app/public/output.jpg", "5"]
