//
//  MainViewController.swift
//  DelegatesAndDataSources
//
//  Created by Raj Tailor on 2/17/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,BeverageViewControllerDelegate, PizzaViewControllerDelegate {
    
    
    @IBOutlet weak var orderView: UIView!
    var orderedItems = OrderList()
    var orderTableVC = OrderTableViewController()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        orderedItems.add(name: "Huli Chips", size: "Small")
        orderTableVC.updateTable(orderList: orderedItems)
    }

    //MARK: - Delegates and Data Sources
    
    
    
    func didChooseBeverage(beverage: OrderItem) {
        orderedItems.add(orderItem: beverage)
        orderTableVC.updateTable(orderList: orderedItems)
        
        
    }
    
    func didSelectPizza(pizza: OrderItem) {
        orderedItems.add(orderItem: pizza)
        orderTableVC.updateTable(orderList: orderedItems)
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "beverage"{
            let beverageViewController = segue.destination as! BeverageViewController
            beverageViewController.delegate = self
        }
        
        if segue.identifier == "order table"{ //embedded view -- keep controller around
            orderTableVC = segue.destination as! OrderTableViewController
        }
        
        if segue.identifier == "pizza"{
            let pizzaViewController = segue.destination as! PizzaViewController
            pizzaViewController.delegate = self
        }
        
        
    }
}























