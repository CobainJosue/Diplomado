import UIKit

extension Data {
    mutating func append(string: String) {
        if let data = string.data(using: .utf8) {
            append(data)
        }
    }
}

let boundary = NSUUID().uuidString

var data = Data()
