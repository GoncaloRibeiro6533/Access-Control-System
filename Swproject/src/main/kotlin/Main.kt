import isel.leic.UsbPort


fun main(args: Array<String>) {
    HAL.init()
    HAL.readBits(0x0F)
    HAL.readBits(0x0C)
    HAL.isBit(0x01)
    HAL.setBits(0x80)
    HAL.setBits(0x0F)
    HAL.clrBits(0x03)
    HAL.writeBits(0x0F,0x09)

/*while(true){
        val value = UsbPort.read()

        UsbPort.write(value)
    }*/
}


