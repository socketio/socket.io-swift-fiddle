import Foundation
import SocketIO

let manager = SocketManager(socketURL: URL(string: "http://localhost:8080")!, config: [.compress, .forceWebsockets(true)])
let socket = manager.defaultSocket

socket.on(clientEvent: .connect) {_,_ in
    print("socket connected")
}

socket.on("ping") {_,ack in
    print("got ping, send pong")
    ack.with("pong")
}

socket.connect()

dispatchMain()
