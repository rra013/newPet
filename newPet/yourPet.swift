//
//  yourPet.swift
//  newPet
//
//  Created by Rishi Anand on 7/5/18.
//  Copyright © 2018 Rishi Anand. All rights reserved.
//

import Foundation
import Darwin

class yourPet{
    var petName = "your pet"
    var happinessFloat = 0.5
    var hungerFloat = 0.5
    var reasonForDeath: String = ""
    var blissAttained = false
    init() {
        petName = "your pet"
        happinessFloat = 0.5
        hungerFloat = 0.5
        reasonForDeath = ""
        blissAttained = false
    }

    func checkDeath() -> Bool{
        if(hungerFloat > 1.0 && happinessFloat > 1.0){
            if(blissAttained){
                //TODO: give player a reward for double bliss
                var rewardTBDLater = "Something"
                return false
            }
            else{
                blissAttained = true
            }
        }
        else if(hungerFloat > 1.0){
            if(blissAttained){
                hungerFloat = 0.5
                blissAttained = false
                return false
            }
            else{
                reasonForDeath = "hungerHigh"
                return true
            }
            
        }
        else if(happinessFloat > 1.0){
            if(blissAttained){
                happinessFloat = 0.5
                blissAttained = false
                return false
            }
            else{
                reasonForDeath = "happinessHigh"
                return true
            }
            
        }
        if(happinessFloat < 0.0 && hungerFloat < 0.0){
            reasonForDeath = "doubleDeath"
            return true
        }
        else if(hungerFloat < 0.0){
            if(blissAttained){
                hungerFloat = 0.5
                blissAttained = false
                return false
            }
            else{
                reasonForDeath = "hungerLow"
                return true

            }
        }
        else if(happinessFloat < 0.0){
            if(blissAttained){
                happinessFloat = 0.5
                blissAttained = false
                return false
            }
            else{
                reasonForDeath = "happinessLow"
                return true
                
            }
        }
        return false
    }
    //end checkDeath()
    func feed(){
        let addedFood = Double(UInt32(arc4random_uniform(26)))/100.0
        var changeInHappy = Double(UInt32(arc4random_uniform(11)))/100.0
        if(Int(UInt32(arc4random_uniform(11))) % 2 == 1){
            changeInHappy *= -1
        }
        happinessFloat += changeInHappy
        hungerFloat += addedFood
    }
    func play(){
        let addedHappiness = Double(UInt32(arc4random_uniform(26)))/100.0
        var changeInHunger = Double(UInt32(arc4random_uniform(11)))/100.0
        changeInHunger *= -1
        happinessFloat += addedHappiness
        hungerFloat += changeInHunger
    }
}

