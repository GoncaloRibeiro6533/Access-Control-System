import SerialEmitter.send

/**
 * Mapeamento
 *    n         7   6   5   4   3   2   1   0
 * inputPort :BSY   0   0   0   0   0   0   0      //inputPort(n)
 * outPort   : 0   0   0   0  LCD DOOR SCLK SDX //outputPort(n)
 *                            SS   SS
 * D[0:4] :    -  -   - D(3) D(2) D(1) D(0) RS
 **/

object SerialEmitter {    // Envia tramas para os diferentes módulos Serial Receiver
    enum class Destination {LCD, DOOR}
    private const val MASK_BUSY = 0x80
    private const val MASK_NOT_SS_LCD = 0x08
    private const val MASK_NOT_SS_DOOR = 0x04
    private const val MASK_SCLK = 0x02
    private const val MASK_SDX = 0x01
    private const val DATA_SIZE = 5

    // Inicia a classe
    fun init() {
         HAL.init()
         HAL.setBits(MASK_NOT_SS_LCD)  // SS = 1
         HAL.setBits(MASK_NOT_SS_DOOR)  // SS = 1
         HAL.clrBits(MASK_SCLK)    // SCLK = 0
         HAL.clrBits(MASK_SDX)     // SDX = 0
    }

    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em‘data’.
    fun send(addr: Destination, value: Int) {
        var data = value
        //while (isBusy()) { }
        val address = if (addr == Destination.LCD) MASK_NOT_SS_LCD else MASK_NOT_SS_DOOR
        for (i in 0 until DATA_SIZE) {
            HAL.clrBits(MASK_SCLK)                             // SCLK = 0
            HAL.clrBits(address)                           // SS = 0
            HAL.writeBits(MASK_SDX, if(0x01 and data == 1) MASK_SDX else 0)    // SDX = data[0]
            // MASK_SDX = 0x10 0b0001_0000
            // data[0] = 1
            // 0b0000_0001 and 1
            //
            data = data shr 1                                  // data = data >> 1 to send bit a bit
            HAL.setBits(MASK_SCLK)                             // SCLK = 1
        }
        HAL.clrBits(0x01)                                // SDX = 0
        HAL.clrBits(MASK_SCLK)                                 // SCLK = 0
        HAL.setBits(address)                               // SS = 1

    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean = HAL.isBit(MASK_BUSY)

}

fun main() {
    HAL.init()
    SerialEmitter.init()
    //LCD.init()
    //var i = 0
    while(true) {
        /*send(SerialEmitter.Destination.LCD, 0x1f)
        send(SerialEmitter.Destination.LCD, 0x02)

        send(SerialEmitter.Destination.LCD, 0x04)

        send(SerialEmitter.Destination.LCD, 0x08)
        //Thread.sleep(1000)
        send(SerialEmitter.Destination.LCD, 0x10)
        //Thread.sleep(1000)
        send(SerialEmitter.Destination.LCD, 0x1F)*/
       // Thread.sleep(1000)
        send(SerialEmitter.Destination.DOOR, 0x0C)
        //Thread.sleep(1000)
        while (SerialEmitter.isBusy()){}
        send(SerialEmitter.Destination.DOOR, 0x18)
        while (SerialEmitter.isBusy()){}
       // Thread.sleep(1000)
        send(SerialEmitter.Destination.DOOR, 0x16)
        while (SerialEmitter.isBusy()){}
       // Thread.sleep(1000)
        send(SerialEmitter.Destination.DOOR, 0x04)
        while (SerialEmitter.isBusy()){}
       // Thread.sleep(1000)
        send(SerialEmitter.Destination.DOOR, 0x02)
        while (SerialEmitter.isBusy()){}
       // Thread.sleep(1000)
    }
}
