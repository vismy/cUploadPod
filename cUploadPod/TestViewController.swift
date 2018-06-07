//
//  TestViewController.swift
//  cUploadPod
//
//  Created by ChildFolio on 2018/6/7.
//  Copyright © 2018年 ChildFolio. All rights reserved.
//

import Foundation
import UIKit

public class TestViewController: UIViewController {
     weak var label: UILabel!
    
    public override func viewDidLoad() {
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.addTarget(self, action: #selector(self.click(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }
    
    
    //    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: "TestViewController", bundle: nibBundleOrNil)
//    }
    
//    init() {
//        super.init(nibName: "TestViewController", bundle: nil)
//    }
    @objc func click(_ sender: Any) {
        print("test xib")
    }
    

}
