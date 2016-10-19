//
//  ToDoItemViewController.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/18/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class ToDoItemViewController: UIViewController {

    @IBOutlet weak var toDoTitleTextField: UITextField!
    
    @IBOutlet weak var toDoDetailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let nav = segue.destination as! UINavigationController
        let toDoListTableViewController = nav.topViewController as! ToDoListTableViewController
        
        let toDoItemTitle : String = toDoTitleTextField.text!
        let toDoItemDetail : String = toDoDetailTextField.text!
        
        
        let toDoItem : ToDoItem = ToDoItem(title: toDoItemTitle, detail: toDoItemDetail)!
        
        
        toDoListTableViewController.cellList.append(toDoItem)
        
    }

}
