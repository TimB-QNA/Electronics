Raspberry PI i2c Bus Multiplexer

This board allows use of the PCA9548 i2c bus multiplexer IC with the other investigation boards. This chip 
adds a further 8 i2c busses to the Raspberry PI, allowing the connection of more non-addressable components
(notably the Max1239 ADCs). The busses all have pull-up resistors, and are output onto a stacking header.
A temperature sensor is also provided.

This board uses:

  *  One Wire Bus
  *  i2c Bus

All software for this board should be available in the Linux kernel. Once this project has been tested and
revised to remove bugs, it will not be developed any further. All I/O lines on this board are 3v3 ONLY.
Do not connect to 5 volt logic without suitable interfacing. This board is purely a proof of concept design.
