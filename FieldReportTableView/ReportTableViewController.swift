//
//  ReportTableViewController.swift
//  FieldReportTableView
//
//  Created by chlotte crim on 3/20/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ReportTableViewController: UITableViewController {
    
    let formatter = DateFormatter()
    let testReportArray: [FieldReport] = [FieldReport(title: "frog",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000) ,image: UIImage(named: "amphibian")),
                                          FieldReport(title: "cat",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000),image: UIImage(named: "bird")),
                                          FieldReport(title: "rpeort",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000) ,image: UIImage(named: "fish")),
                                          FieldReport(title: "stff",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000) ,image: UIImage(named: "insect")),
                                          FieldReport(title: "dummy datta",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000),image: UIImage(named: "mammal")),
                                          FieldReport(title: "dslfkj;dsl",description: "lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah lorem ipsum dolor est blah blah blah",date: Date.init(timeIntervalSince1970: 1000009900000) ,image: UIImage(named: "mammal"))]

    
    
        override func viewDidLoad() {
            super.viewDidLoad()

            formatter.dateStyle = .medium
            formatter.timeStyle = .none
            

            
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return testReportArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reportCell", for: indexPath) as! ReportTableViewCell

        // Configure the cell...
        
        cell.reportImageView.image = testReportArray[indexPath.row].image
        cell.titleLabel.text = testReportArray[indexPath.row].title
        cell.dateLabel.text = formatter.string(from: testReportArray[indexPath.row].date)

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let destination = segue.destination as! DetailViewController
        let selectedRow = tableView.indexPathForSelectedRow
        // Pass the selected object to the new view controller.
        
        destination.date = formatter.string(from: testReportArray[(selectedRow?.row)!].date)
        destination.image = testReportArray[(selectedRow?.row)!].image
        destination.titleText = testReportArray[(selectedRow?.row)!].title
        destination.descriptionText = testReportArray[(selectedRow?.row)!].description
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "reportDetail", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
 

}
