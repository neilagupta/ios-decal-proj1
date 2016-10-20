//
//  ToDoListTableViewController.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/18/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    @IBOutlet weak var ToDoListItemContentView: UIView!
    
    var cellList = [ToDoItem(title: "To Do 1", detail: "To Do First")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return cellList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        self.tableView.register(ToDoListItemTableViewCell.self, forCellReuseIdentifier: "ToDoListItemTableViewCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoListItemTableViewCell", for: indexPath) as! ToDoListItemTableViewCell
        
        checkIfSelectedRowExpired()

        // Configure the cell...
        
        //Displays for each ToDoItem that exists in the cellList
        let toDoItem : ToDoItem = cellList[indexPath.row]!
        
        cell.textLabel!.text = toDoItem.toDoTitle
        //cell.detailTextLabel!.text = toDoItem.toDoDetail
    
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            cellList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Tells it is selected
        cellList[indexPath.row]!.selected = true
        cellList[indexPath.row]!.startTimer()
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //Tells it is deselected
        cellList[indexPath.row]!.selected = false
        cellList[indexPath.row]?.selectedDate = nil
    }
    
    //For all selected rows that are 24 hrs selected they delete themselves
    func checkIfSelectedRowExpired() {
        //Times out after 24 hours for selected cells
        
        let newCellList = cellList.filter({
            if ($0?.selected == true) {
                return Date().timeIntervalSince($0!.selectedDate!).isLessThanOrEqualTo(2)
            }
            return true
            
            }
        )
        
        cellList = newCellList
    }
    
    //Selects all
    @IBAction func doSelectAll(sender: UIBarButtonItem) {
        let totalRows = tableView.numberOfRows(inSection: 0)
        for row in 0..<totalRows {
//            tableView.selectRow(at: NSIndexPath(row:row), animated: false, scrollPosition: UITableViewScrollPosition.none)
        }
    }
 

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
