# build & run

```
> make build
...
> docker run -it iec104substation:0.1

running IEC60870-5-104 sample server on address...
1: lo    inet 127.0.0.1/8 scope host lo\       valid_lft forever preferred_lft forever
20: eth0    inet 172.17.0.2/16 scope global eth0\       valid_lft forever preferred_lft forever
```

Note the IP address used by the server/substation (here 172.17.0.2) and open another terminal
to run the central instance:

```
docker run -it -e srv_addr=172.17.0.2 iec104central:0.1
```
