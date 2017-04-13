//
//  OrderManager.swift
//  LetsGoOrder
//
//  Created by Kim on 2017. 3. 23..
//  Copyright © 2017년 Kim. All rights reserved.
//

import Foundation

class OrderManager{
    
    func multiplyOrder(_ menu:Menu)-> Int{
        return menu.price * menu.volume
    }
    
    func sumOrder(_ sum:[Int])->Int{
        var total = 0
        
        for price in sum{
             total += price;
        }
        return total
    }
}
