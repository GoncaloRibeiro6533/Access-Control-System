

object Users {
    private const val FILE_NAME = "USERS.txt"
    private const val MAX_USERS = 1000
    private val users : MutableList<User> = mutableListOf()
    private val file = FileAccess(FILE_NAME)

    fun init() {
        val lines : List<String> = file.readFile(FILE_NAME)
        getUsersFromFile(lines)
        users.sortBy { it.uin }
        println("Users: $users")
    }

    private fun getAvailableUIN(): Int {
        var uin = 0
       for (u in users)
            if (u.uin == uin)
            {
                uin++
            } else  break
        return uin
    }

    private fun getUsersFromFile(lines : List<String>) =
        users.addAll(lines.map { User(it) })

    fun writeUsers() {
        users.sortBy { it.uin }
        file.clearFile(FILE_NAME)
        file.writeFile(FILE_NAME, users.map { it.toString() })
    }

    fun findUser(uin: Int): User? = users.firstOrNull { it.uin == uin }
    fun removeUser(uin: Int) = users.removeIf { it.uin == uin }



    fun addUser(pin: Int, name: String, message: String):Boolean {
        if (users.size >= MAX_USERS) throw Exception("Maximum number of users reached")
        val user = User(getAvailableUIN(), pin, name, message)
        users.add(user)
        users.sortBy { it.uin }
        return true
    }


    override fun toString(): String =
        users.joinToString("\n")
}

fun main() {
    Users.init()
    println("Users:")
    println(Users)
    println("Add user:")
    //println(Users.getm)
    Users.addUser(1234, "John", "Hello")
    println(Users)
    println("Remove user, enter UIN:")
    val uin = readln().toInt()
    Users.removeUser(uin)
    println(Users)
    println(Users.findUser(uin))
    println(Users.findUser(0))
    println("Save users:")
    Users.writeUsers()
    println("Users:")
    println(Users)
}


