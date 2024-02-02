
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

object Log {
    private const val LOG_FILE ="Log File.txt"
    private const val FORMAT = "dd/MM/yyyy;HH:mm:ss"
    private val FileAccess = FileAccess(LOG_FILE)
    fun init() {

    }

    fun writeLog(uin: String) {
        val lines:List<String> = FileAccess.readFile(LOG_FILE)
        val line: String = "${LocalDateTime.now().format(DateTimeFormatter.ofPattern(FORMAT))};$uin"
        FileAccess.writeFile(LOG_FILE, lines.plus(line))
    }
}

fun main() {
    Log.init()
    Log.writeLog("0")
}