//
//  IceCreamViewModel.swift
//  MVVMTemplate
//
//  Created by VTStudio on 3/7/19.
//  Copyright © 2019 VTStudio. All rights reserved.
//

import Foundation

class IceCreamViewModel {
    
    func readIceCreams(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            if Data.iceCreams.count == 0 {
                Data.iceCreams.append(IceCream(name: "Peanut Butter Cup", ingredients: ["VANILLA EXTRACT","CARRAGEENAN"]))
                Data.iceCreams.append(IceCream(name: "Americone Dream", ingredients: ["SOYBEAN OIL","SODIUM BICARBONATE"]))
                Data.iceCreams.append(IceCream(name: "The Tonight Dough", ingredients: ["TAPIOCA STARCH"]))
                Data.iceCreams.append(IceCream(name: "Chocolate Chip Cookie Dough", ingredients: ["CHOCOLATE","CHIP"]))
                Data.iceCreams.append(IceCream(name: "Half Baked", ingredients: ["CREAM","SKIM MILK","GUAR GUM"]))
            }
            
            DispatchQueue.main.async {
                completion()
            }
        }
    }
}
