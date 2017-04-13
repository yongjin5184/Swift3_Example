//
//  Menu.swift
//  LetsGoOrder
//
//  Created by Kim on 2017. 3. 23..
//  Copyright © 2017년 Kim. All rights reserved.
//

import Foundation

class Menu{
    
    var menuName = ""
    var price = 0;
    var volume = 0;
    
//    var menuName: String {
//        get {
//            return menuName
//        }
//        set(menuName) {
//            self.menuName = menuName
//        }
//    }
//    
//    var price: Int {
//        get {
//            return price
//        }
//        set(price) {
//            self.price = price
//        }
//    }
//    
//    var volume: Int {
//        get {
//            return volume
//        } 
//        set(volume) {
//            self.volume = volume
//        }
//    }
    
    func _init(_ price:Int, _ volume:Int){
        self.price = price
        self.volume = volume
    }
}
