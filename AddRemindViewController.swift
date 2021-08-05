//
//  AddRemindViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

class AddRemindViewController: UIViewController{
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var addRemind: UIButton!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view1: UIView!
    @IBAction func addRemind(_ sender: AnyObject) {
        if(input.text != ""){
            list.append(input.text!)
            input.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRemind.layer.cornerRadius = 7
        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 10
        
    }
}
