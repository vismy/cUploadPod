//
//  TestViewController.swift
//  cUploadPod
//
//  Created by ChildFolio on 2018/6/7.
//  Copyright © 2018年 ChildFolio. All rights reserved.
//

import Foundation
import UIKit

class TestViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    
    
    //    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: "TestViewController", bundle: nibBundleOrNil)
//    }
    
//    init() {
//        super.init(nibName: "TestViewController", bundle: nil)
//    }
    @IBAction func click(_ sender: Any) {
        print("test xib")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
