//
//  town.swift
//  newPet
//
//  Created by Rishi Anand on 7/7/18.
//  Copyright © 2018 Rishi Anand. All rights reserved.
//

import Foundation

class Town{
    var name = ""
    var placesAccessible = [Place]()
    init() {
        let dogPark = Place()
        placesAccessible.append(dogPark)
        let play = Action()
        play.name = "Play"
        play.caption = "You played with your dog for some time."
        play.happEffectRandomizer(lowerBound: 25, upperBound: 75)
        play.hungEffectRandomizer(lowerBound: -50, upperBound: -10)
        placesAccessible[0].actionsAvailable.append(play)
        let foodShoppe = Place()
        placesAccessible.append(foodShoppe)
        let eatFood = Action()
        eatFood.name = "Eat"
        eatFood.caption = "You ate food with your dog for some time."
        eatFood.happEffectRandomizer(lowerBound: -25, upperBound: 25)
        eatFood.hungEffectRandomizer(lowerBound: 10, upperBound: 40)
        placesAccessible[1].actionsAvailable.append(eatFood)
    }
}
