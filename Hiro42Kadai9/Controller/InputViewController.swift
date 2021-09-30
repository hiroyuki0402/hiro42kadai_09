//
//  InputViewController.swift
//  Hiro42Kadai9
//
//  Created by 白石裕幸 on 2021/09/30.
//

import UIKit

class InputViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    public var prefecture = "未選択"
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = prefecture
    }
}
