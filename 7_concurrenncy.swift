func fetchUserID(from server: String) async -> Int {
  if server == "primary" {
    return 97
  }
  return 501
}

func fetchUsername(from server: String) async -> String {
  let userID = await fetchUserID(from: server)
  if userID == 501 {
    return "John appleseed"
  }
  return "Guest"
}

func connecUser(to server: String) async {
  async let userID = fetchUserID(from: server)
  async let username = fetchUsername(from: server)
  let greeting = await "Hello \(username), user ID \(userID)"
  print(greeting)
}
await connecUser(to: "async test")

Task {
  await connecUser(to: "primary")
}