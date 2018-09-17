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
    // MARK: - Outlets
    
    @IBOutlet weak var button: WKInterfaceButton!
    
    // MARK: - Model
    
    let emoji = EmojiData()
    
    // MARK: - Lifecycle
    
    override func willActivate() {
        super.willActivate()
        
        showFortune()
    }
    
    // MARK: - Actions
    
    @IBAction func newFortune() {
        showFortune()
    }
    
    // MARK: - Helpers
    
    fileprivate func showFortune() {
        // 1
        let people = emoji.people.randomElement()
        let nature = emoji.nature.randomElement()
        let objects = emoji.objects.randomElement()
        let places = emoji.places.randomElement()
        let symbols = emoji.symbols.randomElement()
        // 2
        if let people = people,
            let nature = nature,
            let objects = objects,
            let places = places,
            let symbols = symbols {
            button.setTitle(people + nature + objects + places + symbols)
        }
    }
}
