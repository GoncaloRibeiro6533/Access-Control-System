
/**
 * Mapeamento das teclas do teclado matricial 4x4:
 *          Key  Column 1    Key Column 2   Key Column 3
 *Row 1     1    0x00        2   0x04       3   0x08
 *Row 2     4    0x01        5   0x05       6   0x09
 *Row 3     7    0x02        8   0x06       9   0x0A
 *Row 4     *    0x03        0   0x07       #   0x0B
 **/

//Read keys. Methods return '0'..' 9','#','*' or NONE.
object KBD {
    const val NONE = 0.toChar()
    const val DATA = 0x0F      //UsbPort.I0..3
    const val MASK_DVAL = 0x10 //UsbPort.I4
    const val MASK_ACK = 0x80 //UsbPort.O7
    private val KEYS : List<Char> = listOf('1', '4', '7', '*', '2', '5', '8', '0', '3', '6', '9', '#')
                                         // 0    1    2    3    4    5    6    7    8    9    10  11
    // Starts the class.
    fun init() {
        HAL.init()
    }
     // Returns the pressed or NONE key immediately if there is no key pressed.
    fun getKey(): Char {
        if (HAL.isBit(MASK_DVAL)) {
            val a = HAL.readBits(DATA)
            return if (a in 0..11) {
                HAL.setBits(MASK_ACK)
                HAL.clrBits(MASK_ACK)
                KEYS[a]

            } else NONE
        }
         return NONE
    }
    // Returns when the key is pressed or NONE after millisecond timeout has elapsed.
    fun waitKey(timeout: Long): Char {
        var time = timeout
        while (time > 0) {
            val serial = getKey()
            if (serial != NONE) return serial
            Thread.sleep(1)
            time--
        }
        return NONE
    }

}

fun main() {
    KBD.init()
    /*val a =0.toChar()
    println(a == '\u0000')
    println(a == KBD.NONE)*/
    while (true) {
       val key = KBD.waitKey(5000)
        println("Key pressed: $key")
        if (key == KBD.NONE) {
            println("TimeOut")

        }
    }
    println("Finished")
}




