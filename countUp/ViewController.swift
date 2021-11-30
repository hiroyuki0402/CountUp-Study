//
//  ViewController.swift
//  countUp
//
//  Created by 白石裕幸 on 2021/02/09.
//  Copyright © 2020 hiroyuki shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private var count = 0
    
    @IBOutlet private var UIImageviewA: UIImageView!
    @IBOutlet private weak var countLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = "0"
    }
    @IBAction private func plus(_ sender: Any) {
        count += 1
        countLabel.text = String(count)
    }
    @IBAction private func minus(_ sender: Any) {
        count -= 1
        countLabel.text = String(count)
    }
    @IBAction private func reset(_ sender: Any) {
        countLabel.text = "0"
    }
    
}
