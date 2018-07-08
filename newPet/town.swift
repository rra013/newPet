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
    init(pet: yourPet) {
        let dogPark = Place()
        dogPark.name = "Dog Park"
        placesAccessible.append(dogPark)
        let play = Action()
        play.name = "Play"
        play.caption = "You played with \(pet.petName) for some time."
        play.happEffectRandomizer(lowerBound: 25, upperBound: 75)
        play.hungEffectRandomizer(lowerBound: -50, upperBound: -10)
        placesAccessible[0].actionsAvailable.append(play)
        let dig = Action()
        dig.name = "Dig"
        dig.caption = "\(pet.petName) dug a hole."
        dig.happEffectRandomizer(lowerBound: 10, upperBound: 30)
        dig.hungEffectRandomizer(lowerBound: -60, upperBound: -20)
        placesAccessible[0].actionsAvailable.append(dig)
        let bark = Action()
        bark.name = "Bark at Other Dogs"
        bark.caption = "\(pet.petName) barked at other dogs."
        bark.happEffectRandomizer(lowerBound: 55, upperBound: 75)
        bark.hungEffectRandomizer(lowerBound: 0, upperBound: 0)
        placesAccessible[0].actionsAvailable.append(bark)
        let treat = Action()
        treat.name = "Give Dog A Treat"
        play.caption = "You gave \(pet.petName) a treat."
        play.happEffectRandomizer(lowerBound: 15, upperBound: 25)
        play.hungEffectRandomizer(lowerBound: 15, upperBound: 25)
        placesAccessible[0].actionsAvailable.append(treat)
        let foodShoppe = Place()
        foodShoppe.name = "Food Shoppe"
        placesAccessible.append(foodShoppe)
        let eatFood = Action()
        eatFood.name = "Eat"
        eatFood.caption = "You ate food with \(pet.petName)."
        eatFood.happEffectRandomizer(lowerBound: 0, upperBound: 25)
        eatFood.hungEffectRandomizer(lowerBound: 10, upperBound: 40)
        placesAccessible[1].actionsAvailable.append(eatFood)
        let giveVitamins = Action()
        giveVitamins.name = "Give Vitamins"
        giveVitamins.caption = "You gave \(pet.petName) some vitamins."
        giveVitamins.happEffectRandomizer(lowerBound: -25, upperBound: 0)
        giveVitamins.hungEffectRandomizer(lowerBound: 10, upperBound: 15)
        placesAccessible[1].actionsAvailable.append(giveVitamins)
    }
}
