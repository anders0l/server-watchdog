docker build --platform linux/amd64 --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t andersol/server-watchdog:latest .
docker push andersol/server-watchdog
