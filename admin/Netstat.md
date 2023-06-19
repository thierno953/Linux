# Netstat Command

Netstat is a command-line network utility that displays:

* network connections for TCP, UDP
* routing tables,
* a number of network interface
* network protocol statistics.

* To identify no. of connection on a given port or IP.

```bash
netstat -putan | grep <PORT/IP>
netstat -putan | grep :22
```

**Netstat command**

(t-tcp, u-udp, n-numerical addr, l-listening port, p-PID programname)

```bash
netstat -a     #to see all the sockets
netstat -at    #list all the TCP ports
netstat -6at   #list all the TCP v6 ports
netstat -au    #list all the UDP ports
netstat -l     #list all listening ports
netstat -ln    #to view the numerical address
netstat -p     #to view the PID of the programme of connection
netstat -r     #to view the routing table
netstat -i     #to get the list of all the interface
netstat -ap | grep <process_name>  #which port a process is using
netstat -s     #how to see statistics by protocol?
```