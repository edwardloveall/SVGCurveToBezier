class SVGCommandParser {
  static func parse(from commandString: String) -> SVGCommand? {
    guard let firstChar = commandString.characters.first else {
      return nil
    }

    switch firstChar {
    case "M":
      return SVGMoveTo(commandString: commandString)
    case "L":
      return SVGLineTo(commandString: commandString)
    case "C":
      return SVGCurveTo(commandString: commandString)
    case "Z":
      return SVGClose(commandString: commandString)
    default:
      return nil
    }
  }
}
