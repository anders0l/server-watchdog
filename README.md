# server-watchdog
Docker image to ping 8.8.8.8, and reboot server using ssh password

Example: ```docker run -it -e USER='admin' -e HOST='192.168.1.1' -e PASSWORD='someDUMMYpassword' andersol/server-watchdog```
