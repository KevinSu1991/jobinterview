//
//  FanxingViewController.swift
//  job
//
//  Created by KevinSu on 5/13/21.
//

import UIKit
import Foundation
/**
 泛型
 */
class FanxingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showDragons(dragons: [123, 456, 789])
        showDragons(dragons: ["A", "B", "C"])
        showDragons(dragons: [[]])
        
        //MARK: 泛型和Any AnyObject区别
        //class 类 struct 值类型
        var anyArr = [Any]()
        anyArr.append(1)
        anyArr.append("1")
        anyArr.append(1.0)
        anyArr.append(Car())
        anyArr.append(Plane())
        
        //AnyObject 代表 类
        var anyObject = [AnyObject]()
//        anyObject.append(1)       值类型 编译器报错
//        anyObject.append("1")     值类型 编译器报错
//        anyObject.append(1.0)     值类型 编译器报错
        anyObject.append(Car())
//        anyObject.append(Plane()) 值类型 编译器报错
        anyObject.append(NSString())
    }
    
    func showDragons<T>(dragons: [T]) {
        for dragon in dragons {
            debugPrint("\(dragon)")
        }
    }

    //泛型类型约束 T 类型为 Hashable， String\Int\Double\Bool 都是遵循Hashable协议
    func showDragons<T: Hashable>(dragons: [T]) {
        for dragon in dragons {
            debugPrint("\(dragon)")
        }
    }
}

class Car {
    
}

struct Plane {
    
}
