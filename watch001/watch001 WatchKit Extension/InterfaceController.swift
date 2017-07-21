//
//  InterfaceController.swift
//  watch001 WatchKit Extension
//
//  Created by spacepalm on 2017. 7. 21..
//  Copyright © 2017년 spacepalm. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var b: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        if #available(watchOSApplicationExtension 4.0, *) {
            WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        } else {
            // Fallback on earlier versions
        }
        if #available(watchOSApplicationExtension 4.0, *) {
            let batt:Float = WKInterfaceDevice.current().batteryLevel
            
            b.setText(String(batt))
        } else {
            // Fallback on earlier versions
            print("error")
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
