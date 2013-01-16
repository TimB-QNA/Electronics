Raspberry PI Analogue & Digital IO

This circuit provides 12 analogue inputs, 12 digital outputs and 4 digital inputs in an easy-to-use layout.
The board is set up so it is easy to add potential dividers to the ADC inputs. The inputs and outputs are
not buffered and the voltage must not exceed 3.3 Volts on any line. This board can be stacked by using a
different i2c bus for each board (selected by the solder-jumpers P5 & P6 and using the i2c multiplier board).
This enables up to 9 boards to be used on a single Raspberry PI. A temperature sensor is also included to
measure ambient temperature.

This board uses:

  *  One Wire Bus
  *  i2c Bus

Software will be added once the board is built. Once this project has been tested and revised to remove bugs,
it will not be developed any further. This board is purely a proof of concept design.