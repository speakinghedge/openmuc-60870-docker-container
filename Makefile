
openmuc-j60870:
	docker build -f Dockerfile.openmuc-j60870 -t openmuc-j60870:0.1 .

iec104substation:
	docker build -f Dockerfile.substation -t iec104substation:0.1 .

iec104central:
	docker build -f Dockerfile.central -t iec104central:0.1 .

build: openmuc-j60870 iec104substation iec104central
