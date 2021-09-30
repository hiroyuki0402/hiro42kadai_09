//
//  Hiro42Kadai9Tests.swift
//  Hiro42Kadai9Tests
//
//  Created by 白石裕幸 on 2021/09/30.
//

import XCTest
@testable import Hiro42Kadai9

class Hiro42Kadai9Tests: XCTestCase {
    func testPrefectures() throws {
        let prefectures = Prefectures.prefectures()
        let prefeuture = prefectures[0]
        XCTAssertEqual(prefeuture, "東京都")
    }
}
