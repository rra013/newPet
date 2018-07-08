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
        play.happEffectRandomizer(lowerBound: 25, upperBound: 75, negative: false)
        play.hungEffectRandomizer(lowerBound: 10, upperBound: 50, negative: true)
        placesAccessible[0].actionsAvailable.append(play)
        let dig = Action()
        dig.name = "Dig"
        dig.caption = "\(pet.petName) dug a hole."
        dig.happEffectRandomizer(lowerBound: 10, upperBound: 30, negative: false)
        dig.hungEffectRandomizer(lowerBound: 20, upperBound: 60, negative: true)
        placesAccessible[0].actionsAvailable.append(dig)
        let bark = Action()
        bark.name = "Bark at Other Dogs"
        bark.caption = "\(pet.petName) barked at other dogs."
        bark.happEffectRandomizer(lowerBound: 55, upperBound: 75, negative: false)
        bark.hungEffectRandomizer(lowerBound: 0, upperBound: 0, negative: false)
        placesAccessible[0].actionsAvailable.append(bark)
        let treat = Action()
        treat.name = "Give Dog A Treat"
        treat.caption = "You gave \(pet.petName) a treat."
        treat.happEffectRandomizer(lowerBound: 15, upperBound: 25, negative: false)
        treat.hungEffectRandomizer(lowerBound: 15, upperBound: 25, negative: false)
        placesAccessible[0].actionsAvailable.append(treat)
        
        let foodShoppe = Place()
        foodShoppe.name = "Food Shoppe"
        placesAccessible.append(foodShoppe)
        let eatFood = Action()
        eatFood.name = "Eat"
        eatFood.caption = "You ate food with \(pet.petName)."
        eatFood.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: false)
        eatFood.hungEffectRandomizer(lowerBound: 10, upperBound: 40, negative: false)
        placesAccessible[1].actionsAvailable.append(eatFood)
        let giveVitamins = Action()
        giveVitamins.name = "Give Vitamins"
        giveVitamins.caption = "You gave \(pet.petName) some vitamins."
        giveVitamins.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: true)
        giveVitamins.hungEffectRandomizer(lowerBound: 10, upperBound: 15, negative: false)
        placesAccessible[1].actionsAvailable.append(giveVitamins)
        let windowShop = Action()
        windowShop.name = "Look at Treats"
        windowShop.caption = "You and \(pet.petName) looked at some treats."
        windowShop.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: false)
        windowShop.hungEffectRandomizer(lowerBound: 10, upperBound: 40, negative: true)
        placesAccessible[1].actionsAvailable.append(windowShop)
        let giveJuice = Action()
        giveJuice.name = "Give Juice"
        giveJuice.caption = "You gave \(pet.petName) some juice."
        giveJuice.happEffectRandomizer(lowerBound: 0, upperBound: 10, negative: false)
        giveJuice.hungEffectRandomizer(lowerBound: 0, upperBound: 0, negative: false)
        placesAccessible[1].actionsAvailable.append(giveJuice)
        
        
        //TODO: Make this shit original
        let dogParkA = Place()
        dogParkA.name = "Dog Park"
        placesAccessible.append(dogParkA)
        let playA = Action()
        playA.name = "Play"
        playA.caption = "You played with \(pet.petName) for some time."
        playA.happEffectRandomizer(lowerBound: 25, upperBound: 75, negative: false)
        playA.hungEffectRandomizer(lowerBound: 10, upperBound: 50, negative: true)
        placesAccessible[2].actionsAvailable.append(playA)
        let digA = Action()
        digA.name = "Dig"
        digA.caption = "\(pet.petName) dug a hole."
        digA.happEffectRandomizer(lowerBound: 10, upperBound: 30, negative: false)
        digA.hungEffectRandomizer(lowerBound: 20, upperBound: 60, negative: true)
        placesAccessible[2].actionsAvailable.append(digA)
        let barkA = Action()
        barkA.name = "Bark at Other Dogs"
        barkA.caption = "\(pet.petName) barked at other dogs."
        barkA.happEffectRandomizer(lowerBound: 55, upperBound: 75, negative: false)
        barkA.hungEffectRandomizer(lowerBound: 0, upperBound: 0, negative: false)
        placesAccessible[2].actionsAvailable.append(barkA)
        let treatA = Action()
        treatA.name = "Give Dog A Treat"
        treatA.caption = "You gave \(pet.petName) a treat."
        treatA.happEffectRandomizer(lowerBound: 15, upperBound: 25, negative: false)
        treatA.hungEffectRandomizer(lowerBound: 15, upperBound: 25, negative: false)
        placesAccessible[2].actionsAvailable.append(treatA)
        
        let foodShoppeA = Place()
        foodShoppeA.name = "Food Shoppe"
        placesAccessible.append(foodShoppeA)
        let eatFoodA = Action()
        eatFoodA.name = "Eat"
        eatFoodA.caption = "You ate food with \(pet.petName)."
        eatFoodA.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: false)
        eatFoodA.hungEffectRandomizer(lowerBound: 10, upperBound: 40, negative: false)
        placesAccessible[3].actionsAvailable.append(eatFoodA)
        let giveVitaminsA = Action()
        giveVitaminsA.name = "Give Vitamins"
        giveVitaminsA.caption = "You gave \(pet.petName) some vitamins."
        giveVitaminsA.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: true)
        giveVitaminsA.hungEffectRandomizer(lowerBound: 10, upperBound: 15, negative: false)
        placesAccessible[3].actionsAvailable.append(giveVitamins)
        let windowShopA = Action()
        windowShopA.name = "Look at Treats"
        windowShopA.caption = "You and \(pet.petName) looked at some treats."
        windowShopA.happEffectRandomizer(lowerBound: 0, upperBound: 25, negative: false)
        windowShopA.hungEffectRandomizer(lowerBound: 10, upperBound: 40, negative: true)
        placesAccessible[3].actionsAvailable.append(windowShop)
        let giveJuiceA = Action()
        giveJuiceA.name = "Give Juice"
        giveJuiceA.caption = "You gave \(pet.petName) some juice."
        giveJuiceA.happEffectRandomizer(lowerBound: 0, upperBound: 10, negative: false)
        giveJuiceA.hungEffectRandomizer(lowerBound: 0, upperBound: 0, negative: false)
        placesAccessible[3].actionsAvailable.append(giveJuice)
    }
}
