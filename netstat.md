# Netstat

* Netstat is a very useful command line tool that can be used to troubleshoot network issues.

* How to check open port in linux.
* Network troubleshooting using Netstat command.
* Open port related issue using Netstat command.
* Network related issue fixing using Netstat Command TCP UDP Protocol No. of connection on a IP or a Port using Netstat command.

* To identify no. of connection on a given port or IP.
```bash
netstat -putan | grep <PORT/IP>
netstat -putan | grep :22
```
#### example 1:

```bash
netstat -putan | grep :22
```
#### Netstat command:

```bash
(t-tcp, u-udp, n-numerical addr, l-listening port, p-PID programname)
```
```bash
netstat -a => to see all the sockets
netstat -at => list all the TCP ports
netstat -6at => list all the TCP v6 ports
netstat -au => list all the UDP ports
netstat -l => list all listening ports
netstat -ln => to view the numerical address
netstat -p => to view the PID of the programme of connection
netstat -r => to view the routing table
netstat -i => to get the list of all the interface
netstat -ap | grep <process_name> => which port a process is using
netstat -s => how to see statistics by protocol?
```
#### example 2:

```bash
netstat -putan | grep :22
netstat
netstat | more
netstat -a | more
netstat -at | more
netstat -au | more
netstat -au6 | more
netstat -atl | more
netstat -atln | more
netstat -atlnp | more
netstat -r
netstat -i
netstat -s
```
