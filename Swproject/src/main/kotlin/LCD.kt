
import isel.leic.utils.Time
/**
 * LCD 16*2
 * Display positions
 *
 * 1º line: 0x00 to 0x0F
 * 2º line: 0x40 to 0x4F
 *
 * DDRAM : Display data RAM
 * CGRAM : Character generator RAM
 * ACG   : CGRAM address
 * ADD   : DDRAM address (cursor address)
 * AC    : address counter used for DD and CGRAM addresses
 * DDRAM 0 0 1 ADD ADD ADD ADD ADD ADD
 *
 */
object LCD {
    // Escreve no LCD usando a interface a 4bits
    private const val LINES = 2
    const val COLS = 16  // Dimensão do display.
    private const val DISPLAY_ON = 0xF //Mascara para ligar o display,
    private const val DISPLAY_OFF = 0x8 //Mascara para desligar o display
    private const val DISPLAY_SET = 0x3 //Function set
    private const val MASK_ENTRYMODE = 0x6 //Mascara para entry mode
    private const val DISPLAY_SET_NIBBLE = 0x2 //set 4 bits
    private const val MASK_PARALLEL_RS = 0x10 //Mascara para o bit de RS
    private const val MASK_LOW_DATA = 0x0F //Mascara para os 4 bits menos significativos
    private const val MASK_HIGH_DATA = 0xF0 //Mascara para os 4 bits mais significativos
    private const val DISPLAY_CLEAR : Int = 0x1 //Mascara para instrução de limpar o display
    private const val DISPLAY_CONFIG : Int = 0x28 //Mascara para configurar as linhas e a fonte do LCD


    // Escreve um nibble de comando/dados no LCD em paralelo
    //data -> d3..d0, recebe os quatro bits de menor peso
    private fun writeNibbleParallel(rs: Boolean, data: Int){
        if (rs) {
            HAL.setBits(MASK_PARALLEL_RS) //RS = 1
        } else {
            HAL.clrBits(MASK_PARALLEL_RS)//RS = 0
        }
        HAL.writeBits(MASK_LOW_DATA, data) //d3..d0
    }


    // Escreve um nibble de comando/dados no LCD em série
    private fun writeNibbleSerial(rs: Boolean, data: Int) {
        var d = data
        if (rs) d = (data shl 1) or 0x01 else d = (d shl 1) or 0x00
        SerialEmitter.send(SerialEmitter.Destination.LCD, d)
        Time.sleep(2)
    }


    // Escreve um nibble de comando/dados no LCD
    private fun writeNibble(rs: Boolean, data: Int) {
        writeNibbleSerial(rs,data)
    }

    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int) {
        writeNibble(rs, (MASK_HIGH_DATA and data) shr 4)
        writeNibble(rs, MASK_LOW_DATA and data)
    }

    // Escreve um comando no LCD
    private fun writeCMD(data: Int) {
        writeByte(false, data)

    }
    // Escreve um dado no LCD
    private fun writeDATA(data: Int) {
        writeByte(true, data)

    }

    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init() {
        SerialEmitter.init()
        Time.sleep(15)
        writeNibble(false, DISPLAY_SET)
        Time.sleep(5)
        writeNibble(false, DISPLAY_SET)
        Time.sleep(1)
        writeNibble(false, DISPLAY_SET)
        writeNibble(false, DISPLAY_SET_NIBBLE)
        // Function Set, interface a 4 bits
        writeCMD(DISPLAY_CONFIG) // define N:1, F:0
        writeCMD(DISPLAY_OFF)  // display off
        writeCMD(DISPLAY_CLEAR)    // clear
        writeCMD(MASK_ENTRYMODE)  // define I/D:1, S:0
        writeCMD(DISPLAY_ON) // display on
    }

    // Escreve um caráter na posição corrente.
    fun write(c: Char) =
        writeDATA(c.code)

    // Escreve uma string na posição corrente.
    fun write(text: String)  {
        for (c in text) {
            write(c)
        }

    }

    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1) fun cursor(line: Int, column: Int) ...
    fun cursor(line: Int, column: Int): Unit {
         if (line >= LINES || line < 0 || column >= COLS || column < 0) return
        writeCMD((line * 0x40 + column) or 0x80)
    }


    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(DISPLAY_CLEAR)
        cursor(0,0)
    }

}

fun main() {
    LCD.init()
    LCD.clear()
    /*while (true) {
        LCD.write("1")
        LCD.write("2")
        LCD.write("3")
        LCD.write("4")*/
    while (true) {
    LCD.cursor(0, 0)
     LCD.write("08/05/2023 08:05")
          Thread.sleep(1000)
          LCD.cursor(1, 0)
          LCD.write("A")
          Thread.sleep(1000)
          LCD.clear()
    }
    while (true){}
}


