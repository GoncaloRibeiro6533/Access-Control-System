import isel.leic.utils.Time
import kotlin.system.exitProcess

object App {
    private const val UIN_LEN = 3
    private const val PIN_LEN = 4
    private const val TIMEOUT :Long = 5000
    private const val DOOR_VELOCITY = 0x08

    fun init() {
        TUI.init()
        DoorMechanism.init()
        Users.init()
        Log.init()
    }


    private fun getUIN() = TUI.readIntNdigits(UIN_LEN, TIMEOUT)
    private fun getPIN() = TUI.readIntNdigits(PIN_LEN, TIMEOUT)


   private fun doorControl() {
        TUI.clearScreen()
        DoorMechanism.open(DOOR_VELOCITY)
        while (!DoorMechanism.finished()){
            TUI.writeCentered("Opening door")
        }
        TUI.clearScreen()
        TUI.writeCentered("Door opened")
        Thread.sleep(5000)
        TUI.clearScreen()
        TUI.writeCentered("Closing door")
        DoorMechanism.close(DOOR_VELOCITY)
        while (!DoorMechanism.finished()){}
       TUI.clearScreen()
       TUI.writeCentered("Door closed")
       Time.sleep(500)
    }

    fun loginErrorUIN() {
        TUI.clearLine(1)
        TUI.writeOn(1, 0, "USER NOT FOUND")
        Thread.sleep(2000)
    }

    fun loginErrorPIN() {
        TUI.clearLine(1)
        TUI.writeOn(1, 0, "WRONG PIN")
        Thread.sleep(2000)
    }

    fun initialScreen() {
        TUI.clearScreen()
        TUI.showDateTime()
        TUI.newLine()
        TUI.write("UIN:???")
        TUI.cursor(1, 4)
    }

    fun pinScreen() {
        TUI.clearLine(1)
        TUI.writeOn(1, 0, "PIN:????")
        TUI.cursor(1, 4)
    }

    fun welcomeMessage(user: String) {
        TUI.clearScreen()
        TUI.writeOn(0,(LCD.COLS - "Welcome".length) / 2,"Welcome")
        TUI.writeOn(1, (LCD.COLS - user.length) / 2,user)
        Thread.sleep(1500)
        TUI.clearScreen()

    }

    fun showMessage(message: String) {
        TUI.clearScreen()
        TUI.writeLeft("Message: $message")
        Thread.sleep(2000)
    }


    fun changePin(user: User) {
        TUI.clearScreen()
        TUI.writeLeft("Insert new PIN")
        val newPin = TUI.readIntNdigits(PIN_LEN, TIMEOUT)
        TUI.clearScreen()
        TUI.writeLeft("Confirm new PIN")
        val confirmPin = TUI.readIntNdigits(PIN_LEN, TIMEOUT)
        if (newPin != confirmPin) {
            TUI.clearScreen()
            TUI.writeLeft("PINs do not match")
            Thread.sleep(2000)
            return
        }
        TUI.clearScreen()
        TUI.writeLeft("Changing PIN")
        user.changePin(newPin)
        TUI.clearScreen()
        Thread.sleep(2000)
        TUI.writeLeft("PIN changed")
        Thread.sleep(500)
    }



    fun autentichate(): Boolean {
        val uin = getUIN()
        if (uin == -1) return false
        println(uin)
        Time.sleep(1000)
        val user = Users.findUser(uin)
        println(user)
        if (user == null) {
            loginErrorUIN()
            return false
        }
        pinScreen()
        val pin = getPIN()
        if (pin == -1) return false
        if (!user.checkPin(pin)) {
            loginErrorPIN()
            return false
        }
        Log.writeLog(uin.toString())
        logged(user)
        return false
        }

    fun isToChangePin() = TUI.waitKey(TIMEOUT) == '#'

    fun isToDeleteMessage() = TUI.waitKey(TIMEOUT) == '*'
    fun logged(user: User) {
        while (true){
             user.name?.let { welcomeMessage(it) }
            if (isToChangePin()){
                changePin(user)
                break
            }
            else break
        }
        Time.sleep(1000)
        val message  = user.message
        println(message)
        if (!message.isNullOrEmpty()) {
            showMessage(message)
            if (isToDeleteMessage()) {
                user.deleteMessage()
                TUI.clearScreen()
                TUI.writeCentered("Message deleted")
            }
                TUI.clearScreen()
                Time.sleep(2000)
        }
        doorControl()
    }

    fun saveUsers() =  Users.writeUsers()

    fun outOfService() {
        TUI.clearScreen()
        TUI.writeCentered("Out of service")
    }

    fun isManteinanceMode() = M.isManteinanceMode()
    fun shutdown() {
        TUI.clearScreen()
        TUI.writeCentered("Shutdown")
    }


}



fun main() {
    App.init()
    var auth = false
    var active = true
    while(active) {
        App.initialScreen()
        while (true) {
            auth = App.autentichate()
            App.saveUsers()
            while (App.isManteinanceMode()) {
                App.outOfService()
                active = !M.action()
                App.saveUsers()
                println("End of manteinance mode")
                break
            }
            if (!auth) break
        }
    }
    App.shutdown()
    App.saveUsers()
    println("Shutdown")
    exitProcess(0)
}