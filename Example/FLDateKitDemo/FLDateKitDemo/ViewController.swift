//
//  ViewController.swift
//  FLDateKitDemo
//
//  Created by Abhishek Thapliyal on 03/03/20.
//  Copyright © 2020 Abhishek Thapliyal. All rights reserved.
//

import UIKit
import FLDateKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Date().isDateYesterDay)
        print(Date().isDateToday)
        print(Date().isDateTomorrow)
        print(Date().yesterday)
        print(Date().tomorrow)
        print(Date().noon)
    }
    
    
}

