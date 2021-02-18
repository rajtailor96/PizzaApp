//
//  OrderList.swift
//  DelegatesAndDataSources
//
//  Created by Raj Tailor on 2/17/2021.
//  Copyright © 2021 Raj Tailor. All rights reserved.
//

import WatchKit

class OrderItem{
    var itemName = ""
    var itemSize = ""
    private let spaceString = " "
    func itemString()-> String{
        return itemSize + spaceString + itemName
    }
}


class OrderList{
    var list:[OrderItem] = []
    var lastSelection = "None"
    func add(orderItem:OrderItem){
        list += [orderItem]
        lastSelection = orderItem.itemString()
    }
    func add(name:String, size:String){
        let item = OrderItem()
        item.itemName = name
        item.itemSize = size
        list += [item]
        lastSelection = item.itemString()
    }
    
}
