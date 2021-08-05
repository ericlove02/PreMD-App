//
//  InfoTableViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import UIKit

var infoRowIndex = 0
var infoSecIndex = 0
var infoLink = ""

class InfoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        infoSecIndex = indexPath.section
        infoRowIndex = indexPath.row
        if(infoSecIndex == 0 && infoRowIndex == 0){
            infoLink = "https://www.kaplan.com/mcat"
        }
        else if(infoSecIndex == 0 && infoRowIndex == 1){
            infoLink = "https://www.princetonreview.com/medical/mcat-test-prep"
        }
        else if(infoSecIndex == 0 && infoRowIndex == 2){
            infoLink =
            "https://nextsteptestprep.com/mcat-practice-tests/"
        }
        else if(infoSecIndex == 1 && infoRowIndex == 0){
            infoLink =
            "https://students-residents.aamc.org/applying-medical-school/article/finding-health-care-related-volunteer-opportunitie/"
        }
        else if(infoSecIndex == 1 && infoRowIndex == 1){
            infoLink =
            "https://students-residents.aamc.org/applying-medical-school/article/shadowing-doctor/"
        }
        else if(infoSecIndex == 1 && infoRowIndex == 2){
            infoLink =
            "https://students-residents.aamc.org/applying-medical-school/article/how-to-get-lab-experience"
        }
        performSegue(withIdentifier: "segue", sender: self)
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
