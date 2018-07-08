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
        treat.caption = "You gave \(pet.petName) a treat."
        treat.happEffectRandomizer(lowerBound: 15, upperBound: 25)
        treat.hungEffectRandomizer(lowerBound: 15, upperBound: 25)
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
        let windowShop = Action()
        windowShop.name = "Look at Treats"
        windowShop.caption = "You and \(pet.petName) looked at some treats."
        windowShop.happEffectRandomizer(lowerBound: 0, upperBound: 25)
        windowShop.hungEffectRandomizer(lowerBound: -40, upperBound: -10)
        placesAccessible[1].actionsAvailable.append(windowShop)
        let giveJuice = Action()
        giveJuice.name = "Give Juice"
        giveJuice.caption = "You gave \(pet.petName) some juice."
        giveJuice.happEffectRandomizer(lowerBound: 0, upperBound: 10)
        giveJuice.hungEffectRandomizer(lowerBound: 0, upperBound: 0)
        placesAccessible[1].actionsAvailable.append(giveJuice)
        
        
        //TODO: Make this shit original
        let dogParkA = Place()
        dogParkA.name = "Dog Park"
        placesAccessible.append(dogParkA)
        let playA = Action()
        playA.name = "Play"
        playA.caption = "You played with \(pet.petName) for some time."
        playA.happEffectRandomizer(lowerBound: 25, upperBound: 75)
        playA.hungEffectRandomizer(lowerBound: -50, upperBound: -10)
        placesAccessible[2].actionsAvailable.append(playA)
        let digA = Action()
        digA.name = "Dig"
        digA.caption = "\(pet.petName) dug a hole."
        digA.happEffectRandomizer(lowerBound: 10, upperBound: 30)
        digA.hungEffectRandomizer(lowerBound: -60, upperBound: -20)
        placesAccessible[2].actionsAvailable.append(digA)
        let barkA = Action()
        barkA.name = "Bark at Other Dogs"
        barkA.caption = "\(pet.petName) barked at other dogs."
        barkA.happEffectRandomizer(lowerBound: 55, upperBound: 75)
        barkA.hungEffectRandomizer(lowerBound: 0, upperBound: 0)
        placesAccessible[2].actionsAvailable.append(barkA)
        let treatA = Action()
        treatA.name = "Give Dog A Treat"
        treatA.caption = "You gave \(pet.petName) a treat."
        treatA.happEffectRandomizer(lowerBound: 15, upperBound: 25)
        treatA.hungEffectRandomizer(lowerBound: 15, upperBound: 25)
        placesAccessible[2].actionsAvailable.append(treatA)
        
        let foodShoppeA = Place()
        foodShoppeA.name = "Food Shoppe"
        placesAccessible.append(foodShoppeA)
        let eatFoodA = Action()
        eatFoodA.name = "Eat"
        eatFoodA.caption = "You ate food with \(pet.petName)."
        eatFoodA.happEffectRandomizer(lowerBound: 0, upperBound: 25)
        eatFoodA.hungEffectRandomizer(lowerBound: 10, upperBound: 40)
        placesAccessible[3].actionsAvailable.append(eatFoodA)
        let giveVitaminsA = Action()
        giveVitaminsA.name = "Give Vitamins"
        giveVitaminsA.caption = "You gave \(pet.petName) some vitamins."
        giveVitaminsA.happEffectRandomizer(lowerBound: -25, upperBound: 0)
        giveVitaminsA.hungEffectRandomizer(lowerBound: 10, upperBound: 15)
        placesAccessible[3].actionsAvailable.append(giveVitamins)
        let windowShopA = Action()
        windowShopA.name = "Look at Treats"
        windowShopA.caption = "You and \(pet.petName) looked at some treats."
        windowShopA.happEffectRandomizer(lowerBound: 0, upperBound: 25)
        windowShopA.hungEffectRandomizer(lowerBound: -40, upperBound: -10)
        placesAccessible[3].actionsAvailable.append(windowShop)
        let giveJuiceA = Action()
        giveJuiceA.name = "Give Juice"
        giveJuiceA.caption = "You gave \(pet.petName) some juice."
        giveJuiceA.happEffectRandomizer(lowerBound: 0, upperBound: 10)
        giveJuiceA.hungEffectRandomizer(lowerBound: 0, upperBound: 0)
        placesAccessible[3].actionsAvailable.append(giveJuice)
    }
}
