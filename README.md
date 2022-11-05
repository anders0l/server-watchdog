# server-watchdog
Docker image to ping 8.8.8.8, and reboot server using ssh password

Docker HUB: https://hub.docker.com/r/andersol/server-watchdog

Example: ```docker run -e USER='admin' -e HOST='192.168.1.1' -e PASSWORD='someDUMMYpassword' --rm andersol/server-watchdog```
