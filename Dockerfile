FROM ruby:2.5.0

RUN apt-get update
RUN apt-get -y install xfonts-75dpi xfonts-base

RUN wget -q -O /tmp/wkhtmltopdf.deb https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb
RUN dpkg -i /tmp/wkhtmltopdf.deb
