//
//  action.swift
//  newPet
//
//  Created by Rishi Anand on 7/7/18.
//  Copyright © 2018 Rishi Anand. All rights reserved.
//

import Foundation

class Action{
    var name = ""
    var caption = ""
    var happEffect = 0
    var hungEffect = 0
    func hungEffectRandomizer(lowerBound: Int, upperBound: Int){
        hungEffect = Int(Double(UInt32(arc4random_uniform(UInt32(upperBound))))/100.0)
        if(hungEffect < lowerBound){
            hungEffect = lowerBound
        }
    }
    func happEffectRandomizer(lowerBound: Int, upperBound: Int){
        hungEffect = Int(Double(UInt32(arc4random_uniform(UInt32(upperBound))))/100.0)
        if(hungEffect < lowerBound){
            hungEffect = lowerBound
        }
    }
}
