# telegraf-rancher
Automate the telegraf base docker image
This image is using InfluxDB_v2 as datastore.
Theres also the IPMI-Tool activated to gather data from servers with it.

## Dependencies
You need to have a working installation of InfluxDB with version 2.x

## Environment Variablen

### Link to InfluxDB
TGR_CFG_DB_WEBADDRESS="http://127.0.0.1:8086"

### Name of the Organization
TGR_CFG_DB_ORGANIZATION="Santis"

### Name of the InfluxDB Bucket
TGR_CFG_DB_BUCKET="InfluxDB2Bucket"

### API Key from InfluxDB for the Bucket
TGR_CFG_DB_APIKEY="InfluxDB2ApiKeyForBucket"

### Login String for the IPMI-Tool
TGR_CFG_IPMI_LOGINSTRING="ADMIN:ADMIN@lan(127.0.0.1)"
