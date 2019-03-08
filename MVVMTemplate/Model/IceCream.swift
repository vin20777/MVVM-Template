//
//  IceCream.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/7/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import Foundation

class IceCream {
    var name: String!
    var ingredients: [String]?
    
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
}
