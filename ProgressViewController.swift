//
//  ProgressViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/3/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

var listProg = ["Volunteering", "Shadowing", "Research", "MCAT Studying", "Reference Letters"]
var progTableIndex = 0
var page = "goals"

class ProgressViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var sbSegment: UISegmentedControl!
    
    @IBOutlet var vcView: UIView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    @IBAction func segmentClicked(_ sender: AnyObject) {
        let progIndex = sbSegment.selectedSegmentIndex
        switch(progIndex){
        case 0:
            listProg = ["Volunteering", "Shadowing", "Research", "MCAT Studying", "Reference Letters"]
            tableView.reloadData()
            page = "goals"
        case 1:
            listProg = ["English", "Inorganic Chemistry", "Organic Chemistry", "Statistics", "Intro Biology", "Upper-Level Biology", "Physics", "Biochemistry"]
            tableView.reloadData()
            page = "classes"
        default:
            listProg = [""]
        }
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(listProg.count)
    }
    
    @IBOutlet weak var tableView: UITableView!
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = listProg[indexPath.row]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        progTableIndex = indexPath.row
        
        if(page == "goals" && progTableIndex == 0){
            performSegue(withIdentifier: "segue1", sender: self)
        }
        else if(page == "classes" && progTableIndex == 0){
            performSegue(withIdentifier: "segue2", sender: self)
        }
    }
    
}
