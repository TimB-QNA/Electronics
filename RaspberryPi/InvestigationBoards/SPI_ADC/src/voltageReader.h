#ifndef VOLTAGEREADER_H
  #define VOLTAGEREADER_H

  #include <QtCore>

/*!
 * This class reads a voltage from an ADC attached to the Raspberry PI's
 * GPIO header. The class uses the QT framework to pass data back to the
 * main event loop using the "voltage" signal. It is possible to use a
 * QThread to run in this reader in a separate thread, thereby maintaining
 * responsiveness elsewhere. A preset calibration is currently applied to
 * channel 3. Clearly this should be changed (to a user-prescribed value)
 * prior to use in production code. The following chips are currently supported:
 * <table>
 * <tr><th>IC Name</th><th>Manufacturer</th>        <th>Interface</th><th>Channels</th><th>Bits</th></tr>
 * <tr><td>MAX146</td> <td>Maxim Semiconductors</td><td>SPI</td>      <td>8</td>       <th>12</td>  </tr>
 * </table>
 */
class voltageReader : public QObject {
  Q_OBJECT
  public:
    voltageReader(QObject *parent=0);
    
  signals:
    void voltage(int adc, int chan, double volts);    ///< Returns the channel voltage to the main event loop.
    
  private:
    QTimer *fetch;         ///< This timer controls the frequency at which the ADC is queried.
    
  private slots:
    void readVoltage();
    void readMAX146();
};

#endif