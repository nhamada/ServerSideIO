import Foundation
import Vapor

let app = Application()

app.get("/") { request in
    return "Hello, world"
}

app.get("/json") { request in
    return try Json([
        "string": "hello, world"
    ])
}

print("Starting: port 8080")

app.start(port: 8080)
