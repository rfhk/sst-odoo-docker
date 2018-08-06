FROM rfhk/odoo:11.0
MAINTAINER Quartile Limited <info@quartile.co>

# Install Odoo Python dependencies (Custom)
ADD requirements.txt /opt/custom_requirements.txt
RUN pip3 install -r /opt/custom_requirements.txt
