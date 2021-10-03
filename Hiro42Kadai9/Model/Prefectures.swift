//
//  Prefectures.swift
//  Hiro42Kadai9
//
//  Created by 白石裕幸 on 2021/09/30.
//

import Foundation

protocol PrefecturesDataProtocol: AnyObject {
    func prefectureData(data: String)
}

class Prefectures {
    static func prefectures() -> [String] {
        return  [ "東京都", "神奈川県", "埼玉県", "千葉県" ]
    }
}
