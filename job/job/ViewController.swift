//
//  ViewController.swift
//  job
//
//  Created by KevinSu on 5/13/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView(frame: .zero)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        cell?.selectionStyle = .none
        switch indexPath.row {
        case 0:
            cell?.textLabel?.text = "泛型"
            break
        default:
            break
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = FanxingViewController.init()
            vc.view.backgroundColor = .white
            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            break
        }
    }
}

