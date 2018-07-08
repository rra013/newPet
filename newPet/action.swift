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
    func hungEffectRandomizer(lowerBound: Int, upperBound: Int, negative: Bool){
        hungEffect = Int(Double(UInt32(arc4random_uniform(UInt32(upperBound))))/100.0)
        if(hungEffect < lowerBound){
            hungEffect = lowerBound
        }
        if(negative){
            hungEffect *= -1
        }
    }
    func happEffectRandomizer(lowerBound: Int, upperBound: Int, negative: Bool){
        happEffect = Int(Double(UInt32(arc4random_uniform(UInt32(upperBound))))/100.0)
        if(negative){
            happEffect *= -1
        }
        if(happEffect < lowerBound){
            happEffect = lowerBound
        }
    }
}
