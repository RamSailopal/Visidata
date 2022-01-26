# Visidata

# Installing and running

With Visidata already installed and YottaDB/mg-gateway already installed somewhere on the network:

    git clone https://github.com/RamSailopal/Visidata.git
    cd Visidata
    cp .visidatarc ~/.visidatarc
    
Then execute

    vd yottadb://host/global/delimiter
    
Where host is the host/IP address of the server running YottaDB, global is the global to extract data from and delimiter is the filed delimiter for the subscript values.

It is assumed that the global in question is in a "flat" format with the first ordered subscript the headers and the rest the values i.e.

    ^CARS(1)="Make,Model,Colour"
    ^CARS(2)="BMW,320,Black"  
    ^CARS(3)="Audi,A4,Red"
    ^CARS(4)="Honda,Civic,Silver"
    ^CARS(5)="Nissan,Quashqai,Black"

To import this into Visidata and with yottadb running on the same server, we run:

     vd yottadb://localhost/^CARS/,
