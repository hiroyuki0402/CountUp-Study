//
//  ViewController.swift
//  countUp
//
//  Created by Hiroyuki on 2021/11/09.


import UIKit

class ViewController: UIViewController {
    /// カウント用のプロパティ
    private  var count = 0
    ///   ラベル
    @IBOutlet private weak var countLabel: UILabel! {
        didSet {
            countLabel.text = "0"
        }
    }
    /// ボタンタップ時
    /// - Parameter sender: ボタン押下時
    ///  - tag1: プラス
    ///  - tag2: マイナス
    ///  - tagその他: リセット
    @IBAction private func didtapButton(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            count += 1
            confugar(count: count)
        case 2:
            count -= 1
            confugar(count: count)
        default:
            confugar(count: 0)
        }
    }
    /// カウントをLabelに反映
    /// - Parameter count: カウントの値
    func confugar<T>(count: T) {
        countLabel.text = "\(count)"
    }
}
