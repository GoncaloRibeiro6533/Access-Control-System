
import java.text.SimpleDateFormat
import java.util.*


object TUI {
    private var pos = 4
    fun init() {
        LCD.init()
        KBD.init()
        pos = 4
    }
    //KBD
    fun getKey() = KBD.getKey()

    fun waitKey(timeout: Long) = KBD.waitKey(timeout)

    fun readIntNdigits(digits : Int, timeout: Long): Int {
        var number = ""
        var i = 0
        while (i < digits) {
            val key = waitKey(timeout)
            if (key == '*') {
                if (i == 0) {
                    pos = 4
                    return -1
                }
                for (i in 0 until digits){
                    writeOn(1, i+4, "?")
                }
                cursor(1,4)
                pos = 4
                i = 0
                number = ""
            } else
            if (key == KBD.NONE) {
                pos = 4
                return -1 //to allow users with UIN = 0
            }
            else {
                if (digits == 3) writeWhileWritingUIN(key)
                number += key
                i++
            }
        }
        pos = 4
        return number.toInt()
    }

   private fun writeWhileWritingUIN(number : Char) {
        writeOn(1,pos, number.toString())
        pos++
    }
    fun readInt(timeout: Long): Int {
            val key = waitKey(timeout)
            if (key != KBD.NONE) return key.code - 48
            else return -1
    }
    //LCD
    fun newLine() = LCD.cursor(1,0)
    fun clearScreen() = LCD.clear()
    fun cursor(line: Int, column: Int) = LCD.cursor(line, column)
    fun write(text: String) =  LCD.write(text)
    fun writeOn(line: Int, column: Int, text: String) {
        LCD.cursor(line, column)
        LCD.write(text)
    }
    fun clearLine(line: Int) {
        if (line == 0) cursor(0,0) else cursor(1,0)
        LCD.write("                ")
        cursor(line,0)
    }

    fun writeCentered(text: String) {
        if (text.length > LCD.COLS) {
            writeOn(0,0,text.substring(0, LCD.COLS))
            val t2 = text.substring(LCD.COLS)
            writeOn(1,(LCD.COLS - t2.length) / 2, t2)
        }
        else {
            writeOn(0,(LCD.COLS - text.length) / 2, text)
        }
    }


    fun writeRight(text: String) {
        val spaces = (LCD.COLS - text.length)
        if (text.length > LCD.COLS) {
            writeOn(0,0,text.substring(0, LCD.COLS))
            val t2 = text.substring(LCD.COLS)
            writeOn(1, (LCD.COLS - t2.length), t2)
        }
        else {
            writeOn(0,spaces, text)
        }
    }

    fun writeLeft(text: String) {
        if (text.length > LCD.COLS) {
            writeOn(0,0, text.substring(0,LCD.COLS))
            writeOn(1,0, text.substring(LCD.COLS))
        }
        else {
            writeOn(0,0, text)
        }
    }

    //Apresenta a data e hora no LCD
    fun showDateTime() {
        val dateFormat = SimpleDateFormat("dd/MM/yyyy HH:mm")
        val date = dateFormat.format(Date())
        writeLeft(date)
    }





}


fun main() {
TUI.init()
    //KBD Test
   /* while (true) {
        val key = TUI.readIntNdigits(4, 5000)
        if (key == 0) {
            TUI.write("Timeout")
            Thread.sleep(2000)
            TUI.clearScreen()
        }
        else {
            TUI.write("Key: $key")
            Thread.sleep(2000)
            TUI.clearScreen()
            }
    }*/

    //LCD Test
     while (true) {
        TUI.clearScreen()
        TUI.showDateTime()
        TUI.newLine()
        TUI.write("UIN:???")
        TUI.cursor(1, 4)
        Thread.sleep(2000)
        TUI.cursor(1, 4)
        TUI.clearScreen()
        Thread.sleep(2000)
        TUI.writeCentered("LIC")
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeLeft("LIC")
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeRight("LIC")
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeCentered("Access Control System")
        Thread.sleep(2000)
        TUI.clearLine(0)
        Thread.sleep(2000)
        TUI.clearLine(1)
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeRight("Access Control System")
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeLeft("Access Control System")
        Thread.sleep(2000)
        TUI.clearScreen()
        TUI.writeCentered("G")
        Thread.sleep(2000)
        TUI.clearScreen()
        for (i in 0..LCD.COLS) {
            Thread.sleep(100)
            TUI.writeOn(0, i, "G")
        }
        Thread.sleep(2000)
    }
}
