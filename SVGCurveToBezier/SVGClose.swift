class SVGClose: SVGCommand {
  init(commandString: String) {}

  func toBezierPathInstruction() -> String {
    return "\(pathVariableName).close()"
  }
}
