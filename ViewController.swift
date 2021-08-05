//
//  ViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        continueButton.layer.cornerRadius = 7
    }

    public override var prefersStatusBarHidden: Bool{
        return true
    }

}

