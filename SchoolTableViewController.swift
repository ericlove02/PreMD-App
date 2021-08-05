//
//  SchoolTableViewController.swift
//  PreMD
//
//  Created by Eric Love on 8/2/19.
//  Copyright © 2019 Eric Love. All rights reserved.
//

import UIKit

var school = ["Baylor College of Medicine", "Harvard Medical School", "David Geffen School of Medicine", "Perelman School of Medicine", "Columbia University Vagelos College", "Stanford Medical School", "NYU School of Medicine", "Geisel School of Medicine", "UCSF School of Medicine", "Howard University College of Medicine", "California University of Science and Medicine", "Mayo Clinic of Medicine", "University of Michigan Medical School"]



var tuition = ["$22,900", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var location = ["Houston, TX", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var classSize = ["186", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var acceptRate = ["3%", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var GPA = ["3.9", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var MCAT = ["518", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var mission = ["Baylor College of Medicine is a health sciences university that creates knowledge and applies science and discoveries to further education, healthcare and community service locally and globally.", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard", "California", "Mayo", "Michigan"]

var imageNames = ["baylor.jpg", "Harvard", "David Geffen", "Perelman", "Columbia", "Stanford", "NYU", "Geisel", "UCSF", "Howard"]

var schoolIndex = 0

class SchoolTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (school.count)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = school[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        schoolIndex = indexPath.row
        self.performSegue(withIdentifier: "seque", sender: self)
    }
    

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
