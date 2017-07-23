//
//  Obfuscator.swift
//  SwiftObfuscator
//
//  Created by Abdullah Selek on 22/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

import Foundation
import CommonCrypto

class Obfuscator: NSObject {

    internal func hashSaltUsingSHA1(salt: String) -> String {
        guard let data = salt.data(using: .utf8) as NSData? else {
            return ""
        }
        var obfuscator = [UInt8]()
        CC_SHA1(data.bytes, CC_LONG(bitPattern: Int32(data.length)), &obfuscator)
        obfuscator.reserveCapacity(Int(CC_SHA1_DIGEST_LENGTH))
        let output = NSMutableString(capacity: Int(CC_SHA1_DIGEST_LENGTH * 2))
        for i in (0..<obfuscator.count) {
            output.appendFormat("%02x", obfuscator[i])
        }
        return output as String
    }

}
