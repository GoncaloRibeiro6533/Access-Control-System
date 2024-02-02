
class User(var uin: Int = -1,  var pin: Int = -1, var name: String = "", var message: String = "") {


    constructor(line: String) : this() {
        val parts = line.split(";")
        uin = parts[0].toInt()
        pin = parts[1].toInt()
        name = parts[2]
        message = parts[3]
    }


    fun checkPin(pin: Int): Boolean {
        return this.pin == pin
    }

    fun changePin(pin: Int) {
        this.pin = pin
    }


    override fun toString(): String {
        return if (!message.isNullOrEmpty())"$uin;$pin;$name;$message;" else "$uin;$pin;$name;"
    }

    fun deleteMessage() {
        this.message = ""
    }


    /* fun init() {
         val file = File(FILE_NAME)
         if (file.exists()) {
             val lines = file.readLines()
             for (line in lines) {
                 val user = User(line)
                 users.add(user)
             }
         }
     }

     fun save() {
         val file = File(FILE_NAME)
         file.writeText("")
         for (user in users) {
             file.appendText(user.toString() + "\n")
         }
     }

     fun addUser(uin: Int, pin: Int, name: String, message: String) {
         val user = User(uin, pin, name, message)
         users.add(user)
     }

     fun findUser(uin: Int): User? {
         for (user in users) {
             if (user.uin == uin) return user
         }
         return null
     }

     fun checkPIN(uin: Int, pin: Int): Boolean {
         val user = findUser(uin)
         if (user != null) {
             return user.pin == pin
         }
         return false
     }

     fun checkUIN(uin: Int): Boolean {
         val user = findUser(uin)
         return user != null
     }

     fun getUser(uin: Int): User? {
         for (user in users) {
             if (user.uin == uin) return user
         }
         return null
     }

     fun getUser(index: Int): User? {
         if (index in 0 until users.size) {
             return users[index]
         }
         return null
     }

     fun size() = users.size

     fun removeUser(uin: Int) {
         val user = findUser(uin)
         if (user != null) {
             users.remove(user)
         }
     }

     fun removeUser(index: Int) {
         if (index in 0 until users.size) {
             users.removeAt(index)
         }
     }

     fun updateUser(uin: Int, pin: Int, name: String, message: String) {
         val user = findUser(uin)
         if (user != null) {
             user.pin = pin
             user.name = name
             user.message = message
         }
     }*/
}

fun main() {
    println("Adicione um utilizador: ")
    println("Nome: ")
    val name = readlnOrNull() ?: ""
    println("UIN: ")
    val uin = readlnOrNull()?.toInt() ?: -1
    println("PIN: ")
    val pin = readlnOrNull()?.toInt() ?: 0
    println("Mensagem: ")
    val message = readlnOrNull() ?: ""
    val user = User( uin,pin, name, message)
    println(user)
    println("Introduza o PIN correto: ")
    val pin1 = readlnOrNull()?.toInt() ?: 0
    println(user.checkPin(pin1))
    println("Introduza o PIN errado: ")
    val pin2 = readlnOrNull()?.toInt() ?: 0
    println(user.checkPin(pin2))
    println("Introduza o novo PIN: ")
    val pin3 = readlnOrNull()?.toInt() ?: 0
    user.changePin(pin3)
    println(user)
}