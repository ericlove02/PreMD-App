//
//  SchoolInfoViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

class SchoolInfoViewController: UIViewController{
    @IBOutlet weak var schoolName: UILabel!
    @IBOutlet weak var tuitionL: UILabel!
    @IBOutlet weak var locationL: UILabel!
    @IBOutlet weak var classSizeL: UILabel!
    @IBOutlet weak var acceptRateL: UILabel!
    @IBOutlet weak var GPAL: UILabel!
    @IBOutlet weak var MCATL: UILabel!
    @IBOutlet weak var missionL: UILabel!
    @IBOutlet weak var imageImg: UIImageView!
    override func viewDidLoad(){
        super.viewDidLoad()
        schoolName.text = school[schoolIndex]
        tuitionL.text = tuition[schoolIndex]
        locationL.text = location[schoolIndex]
        classSizeL.text = classSize[schoolIndex]
        acceptRateL.text = acceptRate[schoolIndex]
        GPAL.text = GPA[schoolIndex]
        MCATL.text = MCAT[schoolIndex]
        missionL.text = mission[schoolIndex]
        imageImg.image = UIImage(named: imageNames[schoolIndex])
    }
}
