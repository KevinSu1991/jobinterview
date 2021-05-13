//
//  FanxingViewController.swift
//  job
//
//  Created by KevinSu on 5/13/21.
//

import UIKit

class FanxingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showDragons(dragons: [123, 456, 789])
        showDragons(dragons: ["A", "B", "C"])
    }

    func showDragons<T>(dragons: [T]) {
        for dragon in dragons {
            debugPrint("\(dragon)")
        }
    }
}
