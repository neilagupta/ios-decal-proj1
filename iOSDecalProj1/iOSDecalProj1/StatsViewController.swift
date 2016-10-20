//
//  StatsViewController.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/19/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var selectedCountLabel: UILabel!
    var selectedCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let count = self.navigationController!.viewControllers.count;
        let cellTableList = (self.navigationController!.viewControllers[count - 2] as! ToDoListTableViewController).cellList;
        
        for item in cellTableList {
            if (item!.isSelected()) {
                selectedCount += 1
            }
        }
        
        selectedCountLabel.text = String(selectedCount)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
