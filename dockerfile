FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip
RUN apt install unzip -y
RUN unzip pullo.zip
RUN rm -rf pullo.zip
RUN mv pullo/* /usr/local/apache2/htdocs
CMD httpd-foreground
