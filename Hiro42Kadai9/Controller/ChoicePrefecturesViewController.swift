//
//  ChoicePrefecturesViewController.swift
//  Hiro42Kadai9
//
//  Created by 白石裕幸 on 2021/09/30.
//

import UIKit

class ChoicePrefecturesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet private weak var tableView: UITableView!
    private let prefectures = Prefectures.prefectures()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = prefectures[indexPath.row]
        cell.textLabel?.textAlignment = .center
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let inputVC = storyboard?.instantiateViewController(identifier: "HomeVc")
                as? InputViewController else { return }
        inputVC.prefecture = prefectures[indexPath.row]
        inputVC.modalPresentationStyle = .fullScreen
        present(inputVC, animated: true, completion: nil)
    }

    @IBAction private func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
