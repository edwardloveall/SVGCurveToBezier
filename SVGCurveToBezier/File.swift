import Foundation

class File {
  class func open(path: String) -> String {
    let url = URL(fileURLWithPath: path)
    let expandedPath = url.standardized
    let encoding = String.Encoding.utf8.rawValue

    do {
      return try NSString(contentsOf: expandedPath, encoding: encoding) as String
    } catch {
      print(error)
    }
    exit(1)
  }
}
