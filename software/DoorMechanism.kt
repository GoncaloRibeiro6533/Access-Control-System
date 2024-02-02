
/*
* Enviar pelo SerialEmmiter tal como no LCD
* Dados:     D4  D3  D2  D1 D0
*            V3  V2  V1  V0 OC
*
* OC -> 0 Fechar | 1 Abrir
* V3..0 -> Velocidade
* */


object DoorMechanism {    // Controla o estado do mecanismo de abertura da porta.

     // Inicia a classe, estabelecendoos valores iniciais.
    fun init() {
        SerialEmitter.init()
    }
    // Envia comando para abrir a porta, com o parâmetro de velocidade
    fun open(velocity: Int) {
        SerialEmitter.send(SerialEmitter.Destination.DOOR, (velocity shl 1) or 1)         //D4..1 -> Velocidade | D0 -> OC -> 1 Abrir
    }
    // Envia comando para fechar a porta, com o parâmetro de velocidade
    fun close(velocity: Int) {
        SerialEmitter.send(SerialEmitter.Destination.DOOR, (velocity shl 1 )or 0)         //D4..1 -> Velocidade | D0 -> OC -> 0 Fechar
    }
    // Verifica se o comando anterior está concluído
    fun finished(): Boolean = !SerialEmitter.isBusy()
}


fun main() {
    DoorMechanism.init()
    /*while (true) {
        DoorMechanism.open(0xF)
        while (!DoorMechanism.finished()) {
           //Thread.sleep(2000)
            DoorMechanism.close(0xF)
            Thread.sleep(2000)
        }
    }*/
    while (true){
        DoorMechanism.close(0x04)
        while (!DoorMechanism.finished()){}
        //Thread.sleep(2000)
        DoorMechanism.open(0x04)
        while (!DoorMechanism.finished()){}
      //  Thread.sleep(2000)
    }

}