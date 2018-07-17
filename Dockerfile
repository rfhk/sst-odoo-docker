FROM rfhk/odoo:11.0
MAINTAINER Quartile Limited <info@quartile.co>

# Install Odoo Python dependencies.
RUN pip3 install -r odoorpc
