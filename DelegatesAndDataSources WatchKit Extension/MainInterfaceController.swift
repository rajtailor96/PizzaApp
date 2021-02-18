//
//  MainInterfaceController.swift
//  DelegatesAndDataSources
//
//  Created by Raj Tailor on 2/17/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import WatchKit
import Foundation


class MainInterfaceController: WKInterfaceController, DessertInterfaceControllerDelegate {
    
    var orderItem = OrderItem()
    @IBOutlet var dessertSelectionLabel: WKInterfaceLabel!
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        var context:[String:Any]! = nil
        
        if segueIdentifier == "dessert" {
            context = ["selection": "Desserts", "delegate":self]
            
        }
        return context
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    
    //MARK: - Delegate
    func didFinishSelectingDessert(item: OrderItem) {
        orderItem = item
        dessertSelectionLabel.setText(orderItem.itemString())
    }
}
