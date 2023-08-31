// HelloWorld.cdc
//
// Welcome to Cadence! This is one of the simplest programs you can deploy on Flow.
//
// The HelloWorld contract contains a single string field and a public getter function.
//
// Follow the "Hello, World!" tutorial to learn more: https://docs.onflow.org/cadence/tutorial/02-hello-world/

access(all) contract HelloWorld {

     // Define the struct
    access(all) struct GreetingMessage {
        access(all) let id: UInt64
        access(all) let _from: String
        access(all) let _to: String
        // Declare a public field of type String.
        //
        // All fields must be initialized in the init() function.
        access(all) let greeting: String

        // The init() function is required if the struct contains any fields.
        init(id: UInt64, _from: String, _to: String, greeting: String) {
            self.id = id
            self._from = _from
            self._to = _to
            self.greeting = greeting
        }
    }

    // Declare a dictionary to hold GreetingMessages structs
    access(all) var messages: {UInt64: GreetingMessage}

    // The init() function is required if the contract contains any fields.
    init() {
        self.messages = {}
    }

    // Public function that saves our friendly greeting!
    access(all) fun sendMessage(id: UInt64, _from: String, _to: String, greeting: String) {
        let message = GreetingMessage(id: id, _from: _from, _to: _to, greeting: greeting)
        self.messages[id] = message
    }

    // Function to get a message by it's Id
    access(all) fun getMessage(id: UInt64): GreetingMessage? {
        return self.messages[id]
    }
}
