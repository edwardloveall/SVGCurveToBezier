class SVGCurveSplitter {
  let text: String
  let instructionCharacters: Set<Character> = ["M", "C", "L", "Z", "H", "V"]

  init(curveText: String) {
    text = curveText.trimmingCharacters(in: ["\n"])
  }

  func split() -> [String] {
    var substrings: [String] = []
    var characters = text.characters.makeIterator()
    var instruction = ""
    if let firstChar = characters.next() {
      instruction.append(firstChar)
    }

    while let char = characters.next() {
      if instructionCharacters.contains(char) {
        substrings.append(instruction)
        instruction = ""
        instruction.append(char)
      } else {
        instruction.append(char)
      }
    }
    substrings.append(instruction)

    return substrings
  }
}
