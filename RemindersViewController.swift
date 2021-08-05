//
//  RemindersViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import Foundation
import UIKit

var list = ["Swipe Left To Delete Items"]

class RemindersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ReminderTable: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list.remove(at: indexPath.row)
            ReminderTable.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool){
        ReminderTable.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
}
