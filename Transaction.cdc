import HelloWorld from 0x01

// Transaction to send a message taking parameters
transaction(id: UInt64, _from: String, _to: String, greeting: String) {

  prepare(acct: AuthAccount) {}

  execute {
    // Execute the sendMessage function with the parameters passed
    HelloWorld.sendMessage(id: id, _from: _from, _to: _to, greeting: greeting)
    log("Message Sent")
  }
}
