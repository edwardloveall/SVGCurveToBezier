protocol SVGCommand {
  var pathVariableName: String { get }
  func toBezierPathInstruction() -> String
}

extension SVGCommand {
  var pathVariableName: String {
    get { return "path" }
  }

  func convertToPoint(coordinates: String) -> Point {
    let parts = coordinates.split(separator: ",")
    guard let x = Float(parts[0]) else {
      fatalError("Could not parse X component of: \(coordinates)")
    }
    guard let y = Float(parts[1]) else {
      fatalError("Could not parse Y component of: \(coordinates)")
    }
    return Point(x: x, y: y)
  }

  func parsePoints(fromCommandString commandString: String) -> [Point] {
    return commandString
      .trimmingCharacters(in: ["M", "C", "L", "Z", "H", "V"])
      .split(separator: " ")
      .map(String.init)
      .map(convertToPoint)
  }

  func nsPoint(from point: Point) -> String {
    return "NSPoint(x: \(point.x), y: \(point.y))"
  }
}
