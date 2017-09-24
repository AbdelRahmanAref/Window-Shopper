//
//  Wage.swift
//  Window Shopper
//
//  Created by AbdelRahman Aref on 9/23/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import Foundation

class Wage{
    //every class object will use, or you can access it from anywhere
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage))
    }
}
