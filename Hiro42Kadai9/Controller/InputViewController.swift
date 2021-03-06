//
//  InputViewController.swift
//  Hiro42Kadai9
//
//  Created by 白石裕幸 on 2021/09/30.
//

import UIKit

class InputViewController: UIViewController, PrefecturesDataProtocol {
    @IBOutlet private weak var label: UILabel! {
        didSet {
            label.text = "未選択"
        }
    }
    func prefectureData(data: String) {
        label.text = data
    }
    @IBAction private func button(_ sender: Any) {
        guard let choiceVC = storyboard?.instantiateViewController(identifier: "HomeVc") as?
                ChoicePrefecturesViewController else { return }
        choiceVC.prefecturesDataDelegate = self
        choiceVC.modalPresentationStyle = .fullScreen
        present(choiceVC, animated: true)
    }
}
