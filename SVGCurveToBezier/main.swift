import Foundation

let string = File.open(path: "SVGCurve.txt")
let splitter = SVGCurveSplitter(curveText: string)
let svgInstructions = splitter.split()
for svgInstruction in svgInstructions {
  if let command = SVGCommandParser.parse(from: svgInstruction) {
    let instruction = command.toBezierPathInstruction()
    print(instruction)
  }
}
