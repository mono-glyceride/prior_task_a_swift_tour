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