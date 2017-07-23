//
//  ObfuscatorTests.swift
//  SwiftObfuscator
//
//  Created by Abdullah Selek on 23/07/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

import XCTest

@testable import SwiftObfuscator;

class ObfuscatorTests: XCTestCase {
        
    func testHashSaltUsingSHA1() {
        let obfuscator = Obfuscator()
        let hash = obfuscator.hashSaltUsingSHA1(salt: "hello")
        XCTAssertEqual(hash, "aaf4c61ddc")
    }
    
}
