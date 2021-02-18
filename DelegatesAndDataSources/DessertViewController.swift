//
//  DessertViewController.swift
//  DelegatesAndDataSources
//
//  Created by Raj Tailor on 2/17/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import UIKit

protocol DessertViewControllerDelegate {
    func didChooseDessert(dessertItm: OrderItem)
}

class DessertViewController: UIViewController {
    var lastSelection = ""
    var dessert = OrderItem()
    var delegate: DessertViewControllerDelegate! = nil
    @IBOutlet weak var dessertSelection: UILabel!
    
    
    @IBAction func dessertSelectionButton(_ sender: UIButton) {
        dessert.itemName = (sender.titleLabel?.text)!
        dessertSelection.text = dessert.itemName
    }

    @IBAction func backbutton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
   
    
    @IBAction func doneButon(_ sender: UIButton) {
        delegate.didChooseDessert(dessertItm: dessert)
        navigationController?.popViewController(animated: true)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dessertSelection.text = lastSelection
    }

    
}
















