FROM telegraf:latest

# Install those:
RUN apt-get update && apt-get install -y \
  ipmitool

# Replace telegraf sample config with our own config file
COPY telegraf.conf /etc/telegraf/telegraf.conf

# Config Parameters
ENV TGR_CFG_DB_WEBADDRESS="http://127.0.0.1:8086"
ENV TGR_CFG_DB_ORGANIZATION="Org"
ENV TGR_CFG_DB_BUCKET="InfluxDB2Bucket"
ENV TGR_CFG_DB_APIKEY="InfluxDB2ApiKeyForBucket"
ENV TGR_CFG_IPMI_LOGINSTRING="ADMIN:ADMIN@lan(127.0.0.1)"
