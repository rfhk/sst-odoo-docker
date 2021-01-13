FROM rfhk/odoo:11.0
MAINTAINER Quartile Limited <info@quartile.co>

# Install specifc version of wkhtmltopdf
ADD https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb /opt/sources/wkhtmltox.deb
RUN dpkg -i /opt/sources/wkhtmltox.deb && rm -rf /opt/sources/wkhtmltox.deb

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip3 install -r /opt/custom_requirements.txt
