# Visidata

# Installing and running

YottaDB is referenced in this ReadMe but Intersystems IRIS and Cache databases can also be used as well as GTm

With Visidata/mg_python already installed and YottaDB/mg-gateway already installed somewhere on the network:

    git clone https://github.com/RamSailopal/Visidata.git
    cd Visidata
    cp .visidatarc ~/.visidatarc
    
Then execute

    vd yottadb://host:port/global/delimiter
    
Where host is the host/IP address of the server running YottaDB, port is the port, global is the global to extract data from and delimiter is the filed delimiter for the subscript values.

It is assumed that the global in question is in a "flat" format with the first ordered subscript the headers and the rest the values i.e.

    ^CARS(1)="Make,Model,Colour"
    ^CARS(2)="BMW,320,Black"  
    ^CARS(3)="Audi,A4,Red"
    ^CARS(4)="Honda,Civic,Silver"
    ^CARS(5)="Nissan,Quashqai,Black"

To import this into Visidata and with yottadb running on the same server, we run:

     vd yottadb://localhost:7041/^CARS/,
     
 # Gitpod Demo
 
 [![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/Visidata)
 
1) Create a free/paid Gitpod account - https://www.gitpod.io/
2) Log into the account
3) Open a new browser tab and add **gitpod.io/#https://github.com/RamSailopal/Visidata** to the address - This will create a new Gitpod cloud instance and display the CARS global above in Visidata. Any subsequent changes to data in the CARS global will be reflected in Visidata once a reload (Ctrl+R) is actioned.


![Alt text](visidata.webp?raw=true "Gitpod View")

# References

Visidata - https://www.visidata.org/

YottaDB - https://yottadb.com/

mg_python - https://github.com/chrisemunt/mg_python
