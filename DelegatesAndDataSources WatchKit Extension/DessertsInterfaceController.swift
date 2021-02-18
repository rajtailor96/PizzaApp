//
//  DessertsInterfaceController.swift
//  DelegatesAndDataSources
//
//  Created by Raj Tailor on 2/17/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import WatchKit
import Foundation


class DessertsInterfaceController: WKInterfaceController {
    
    var orderItem = OrderItem()
    
    @IBOutlet var selectedLabel: WKInterfaceLabel!
    @IBAction func mangoKeyLimeButton() {
        buttonPressed(title: "Mango Key Lime Pie")
    }
    
    @IBAction func dukePieButton() {
        buttonPressed(title: "Duke Pie")
    }
    @IBAction func hulaHotFudgeButton() {
        buttonPressed(title: "Hula Hot Fudge")
    }
    @IBAction func chocolateSurfing() {
        buttonPressed(title: "Chocolate Surfing")
    }
    
    func buttonPressed(title:String){
        orderItem.itemName = title
        selectedLabel.setText(title)
        pop()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        // Configure interface objects here.
    }

}








