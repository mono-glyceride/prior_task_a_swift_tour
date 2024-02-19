func fetchUseID(from server: String) async -> Int {
  if server == "primary" {
    return 97
  }
  return 501
}