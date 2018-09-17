//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit App Extension
//
//  Created by Chris Clark on 9/17/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var label: WKInterfaceLabel!
    
    override func willActivate() {
        super.willActivate()
        
        label.setText("Hello, Apple Watch!")
    }
    
}
