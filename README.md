# about

This repo contains a dockerized openmuc j60870.

See https://www.openmuc.org/iec-60870-5-104/ for more information.

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
> docker run -it -e srv_addr=172.17.0.2 iec104central:0.1
running openmuc IEC 60870-5-104 console client connecting to 172.17.0.2
successfully connected

------------------------------------------------------
 i - interrogation C_IC_NA_1
 c - synchronize clocks C_CS_NA_1
 h - print help message
 q - quit the application
------------------------------------------------------

** Enter action key:
i
** Sending general interrogation command.

Received ASDU:
Type ID: 100, C_IC_NA_1, Interrogation command
Cause of transmission: ACTIVATION_CON, test: false, negative con: false
Originator address: 0, Common address: 1
IOA: 0
Qualifier of interrogation: 20
...
```

