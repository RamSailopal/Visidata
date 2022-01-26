#!/bin/bash
/opt/yottadb/current/ydb << 'H'
S ^CARS(1)="Make,Model,Colour"
S ^CARS(2)="BMW,320,Black"
S ^CARS(3)="Audi,A4,Red"
S ^CARS(4)="Honda,Civic,Silver"
S ^CARS(5)="Nissan,Quashqai,Black"
H
chmod +x /tmp/run.sh
/tmp/run.sh
