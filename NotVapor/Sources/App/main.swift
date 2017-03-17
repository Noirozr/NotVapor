import Vapor

let drop = Droplet()

drop.get("hello") { request in
    return "Hello, world!"
}

drop.get("users", Int.self) { request, userId in
    return "You requested User #\(userId)"
}

drop.run()
