//
//  ToDoItem.swift
//  iOSDecalProj1
//
//  Created by Neil Ambar Gupta on 10/18/16.
//  Copyright © 2016 Neil Ambar Gupta. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    
    var toDoTitle : String = ""
    var toDoDetail : String = ""
    
    init?(title: String, detail: String) {
        toDoTitle = title
        toDoDetail = detail
    }

}
