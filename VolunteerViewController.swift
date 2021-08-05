//
//  VolunteerViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/3/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

class VolunteerViewController: UIViewController{
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 10
        view2.layer.cornerRadius = 35
        button.layer.cornerRadius = 7
    }
}
