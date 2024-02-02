import Users.findUser
import Users.getAvailableUIN

object M {
    private const val SWITCH = 0x40   //Usbport
    private var Off = false
    fun init () {
        HAL.init()
        LCD.init()
        KBD.init()
    }

    fun isManteinanceMode() = HAL.isBit(SWITCH)

   private fun menu() {
        println("1. Inserir utilizador")
        println("2. Remover utilizador")
        println("3. Inserir mensagem")
        println("4. Desligar")
        println("5. Sair")
    }

    private fun insertUser() {
        var name :String = ""
        do {
            println("Insira o nome do utilizador")
            name = readln()
            if (name.length > 16) println("Insira um nome com um máximo de 16 caracteres")
        } while (name.length > 16)
        println("Insira o pin do utilizador")
        val pin = readln().toInt()
        val uin= getAvailableUIN()
        if(Users.addUser(pin, name, "")){
            println("Utilizador $uin inserido")
        } else {
            println("Utilizador já existe")
        }
    }

   private  fun removeUser() {
        println("Insira o UIN do utilizador")
        val uin = readln().toInt()
        val user = Users.findUser(uin)
       if (user == null) {
           println("Utilizador não encontrado")
           return
       }
       println("Nome do utilizador: ${user.name}")
       println("Confirme a remoção (S/N)")
       val conf = readln().first().uppercaseChar()
       if (conf == 'S'){
        if(Users.removeUser(uin)) {
            println("Utilizador removido")
        } else {
            println("Utilizador não removido")
        }
       }
       else {
           println("Utilizador não removido")
       }
    }

   private fun insertMessage() {
        println("Insira o UIN do utilizador")
        val uin = readln().toInt()
        println("Insira a mensagem")
        val message = readln()
        val user = findUser(uin)
        if (user != null) {
            user.message = message //TODO()
        } else {
            println("Utilizador não encontrado")
        }
    }

    private fun shutdown() {
        println("Desligar")
        Off = true
    }

   private fun exit() {
        println("Exiting")
        Off = false
    }

    fun action(): Boolean {
        while (isManteinanceMode() && !Off) {
            println("Modo de manutenção")
            menu()

            while (true) {
                val a = readln()
                if (a.isBlank()) break
                when (a.first()) {
                    '1' -> insertUser()
                    '2' -> removeUser()
                    '3' -> insertMessage()
                    '4' -> shutdown()
                    '5' -> exit()
                    else -> println("Opção inválida")
                }
                Thread.sleep(100)
                break
            }
        }
        return Off
    }
}

fun main() {
    while (true) {
        M.init()
        if (M.isManteinanceMode()){
        M.action()
        println("Exit")
        }
    }
}