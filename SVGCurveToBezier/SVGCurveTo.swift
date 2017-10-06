class SVGCurveTo: SVGCommand {
  let commandString: String

  init(commandString: String) {
    self.commandString = commandString
  }

  func toBezierPathInstruction() -> String {
    let possiblePoints = parsePoints(fromCommandString: commandString)
    if possiblePoints.count != 3 {
      fatalError("Did not parse 3 points from: \(commandString)")
    }
    let cp1 = possiblePoints[0]
    let cp2 = possiblePoints[1]
    let point = possiblePoints[2]

    let cp1Instruction = nsPoint(from: cp1)
    let cp2Instruction = nsPoint(from: cp2)
    let pointInstruction = nsPoint(from: point)

    return "\(pathVariableName).curve(" +
      "to: \(pointInstruction), " +
      "controlPoint1: \(cp1Instruction), " +
      "controlPoint2: \(cp2Instruction))"
  }
}
