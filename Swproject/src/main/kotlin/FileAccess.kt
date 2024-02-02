import java.io.*

class FileAccess(val file: String) {
    fun init() {
        // Nothing to do
    }


    private fun createFile(filename: String) {
        val file = File(filename)
        file.createNewFile()
    }

    fun clearFile(filename: String) {
        val file = File(filename)
        file.writeText("")
    }

    fun readFile(filename: String): List<String> {
        if (!File(filename).exists()) {
            throw FileNotFoundException("File $filename does not exist")
        }
        val buffer = BufferedReader(FileReader(filename))
        val lines = buildList<String> {
            buffer.forEachLine {
                if (it.isNotEmpty()) {
                    add(it)
                }
            }
        }
        buffer.close()
        return lines
    }

    fun writeFile(fileName: String, lines: List<String>) {
        if (!File(fileName).exists()) {
            createFile(fileName)
        }
        val buffer = BufferedWriter(FileWriter(fileName))
        lines.forEach {
            buffer.write(it)
            buffer.newLine()
        }
        buffer.close()
    }



}

fun main() {
    val fileAccess = FileAccess("USERS.txt")
    val lines = fileAccess.readFile("USERS.txt")
    lines.forEach {
        println(it)
    }
    fileAccess.writeFile("LOGS.txt", lines)
    val l :List<String> = listOf<String>("BANANAS", "MAÇÃS", "LARANJAS")
    val a :List<String> = listOf<String>("MANGAS", "MELÕES", "MELANCIAS")

    fileAccess.writeFile("FRUITS.txt", l)
    fileAccess.writeFile("FRUITaS.txt", a)
    fileAccess.clearFile("FRUITaS.txt")
}