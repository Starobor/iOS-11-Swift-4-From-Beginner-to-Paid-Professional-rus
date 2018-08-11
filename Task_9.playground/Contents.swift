/*
 * Task #9
 * - Create 1-2 enum any types
 * -
 */

import UIKit

enum Level {
    case level1 (String)
    case level2 (String)
    case level3 (String)
}

enum human {
    case hends (count: Int)
    case name (firstName: String, lastName: String)
    case gender (Character)
    case age (Int)
}

enum Gender {
    case man
    case woman
}

var person = Gender.man

switch person {
case .man:
    print("man")
case .woman:
    print("woman")
}

enum colors {
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case violet
}


