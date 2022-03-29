FROM telegraf:latest

# Install those:
RUN apk add --no-cache \
		nano \
    ipmitool \

# Replace telegraf sample config with our own config file
COPY telegraf.conf /etc/telegraf/telegraf.conf

# Config Parameters
ENV TGR_CFG_DB_IP="127.0.0.1"
ENV TGR_CFG_DB_BUCKET="InfluxDB2Bucket"
ENV TGR_CFG_DB_APIKEY="InfluxDB2ApiKeyForBucket"
ENV TGR_CFG_IPMI_IP="127.0.0.1"
ENV TGR_CFG_IPMI_USER="admin"
ENV TGR_CFG_IPMI_PASSWORD="admin"
