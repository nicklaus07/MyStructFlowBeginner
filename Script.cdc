import HelloWorld from 0x01

// Script to get a particular message provided the id
pub fun main(id: UInt64): HelloWorld.GreetingMessage? {
  return HelloWorld.getMessage(id: id)!
}
