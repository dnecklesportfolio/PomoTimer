import Foundation
var numberFormatter = NumberFormatter()
numberFormatter.maximumIntegerDigits = 0
numberFormatter.minimumFractionDigits = 1 // default
numberFormatter.string(from: 123.456) // 123
  123.45600
