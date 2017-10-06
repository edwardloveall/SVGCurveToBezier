class SVGLineTo: SVGCommand {
  let commandString: String

  init(commandString: String) {
    self.commandString = commandString
  }

  func toBezierPathInstruction() -> String {
    let possiblePoints = parsePoints(fromCommandString: commandString)
    guard let point = possiblePoints.first else {
      fatalError("No point was parsed!")
    }
    let pointInstruction = nsPoint(from: point)
    return "\(pathVariableName).line(to: \(pointInstruction))"
  }
}
