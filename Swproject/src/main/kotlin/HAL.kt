//import isel.leic.UsbPort
import isel.leic.UsbPort
object HAL {
  private var written = 0b0000_0000
  private var ACTIVE = false
    fun init() { // Inicia a classe
        if(!ACTIVE) {
            UsbPort.write(written)
            ACTIVE=true
        }
    }

// Retorna true se o bit tiver o valor lógico ‘1’

 fun isBit(mask: Int): Boolean = (mask and UsbPort.read()) != 0

 // Retorna os valores dos bits representados por mask presentes no UsbPort
fun readBits(mask: Int): Int = mask and UsbPort.read()

// Escreve nos bits representados por mask o valor de value
/**
* value -> 0000_1001.
* mask -> 0000_1111.
* lastWritten -> 1111_0111.
* new lastWritten -> 1111_1001.
* 1º: (value and mask) -> 0000_1001 sets the bits in value to be written to the ones in the mask.
* 2º: (lastWritten and mask.inv()) -> 1111_0000 sets the bits in lastWritten that are not in the mask,this operation
*      sets to 0 all the bits in lastWritten that are not in the mask, preparing it to receive the updated value.
* 3º: (value and mask) or (lastWritten and mask.inv()) -> 0000_1001 or 1111_0000 -> 1111_1001 sets the bits in
*      lastWritten that are in the mask to the corresponding bits in value and keeps the bits that are not in the mask unchanged.
*/

fun writeBits(mask: Int, value: Int) {
       written = (value and mask) or (written and mask.inv())
         UsbPort.write(written)
}

// Coloca os bits representados por mask no valor lógico ‘1’
fun setBits(mask: Int) {
    written = (written or mask)
    UsbPort.write(written)
}

// Coloca os bits representados por mask no valor lógico ‘0’
fun clrBits(mask: Int) {
    written = written and mask.inv()
    UsbPort.write(written)
}

}



fun main(){
    println("Starting HAL test.")
    println("Writing to 0b1000_1010 to USB.")
    HAL.writeBits(0b1111_1111,0b1000_1010)
    println("Check the value of the written bits.")
    println("Please enter a value on the USB output. Reading in 7s.")
    Thread.sleep(7000)
    val sevenToFour = HAL.readBits(0b1111_0000)
    val threeToZero = HAL.readBits(0b0000_1111)
    println("7 to 4 bits are: [${(sevenToFour shr 4).toString(2)}] and 3 to 0 are [${threeToZero.toString(2)}].")
    Thread.sleep(5000)
    println("Clearing bits 5 to 2.")
    HAL.clrBits(0b0011_1100)
    Thread.sleep(5000)
    println("Setting bits 5 to 2.")
    HAL.setBits(0b0011_1100)
    println("Set bit 1 to desired state. Will check if isBit in 5s.")
    Thread.sleep(5000)
    println("Bit 1 is ${HAL.isBit(0b0000_0010)}.")
    println("Test complete.")
}





