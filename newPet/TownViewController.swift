//
//  TownViewController.swift
//  newPet
//
//  Created by Rishi Anand on 7/8/18.
//  Copyright © 2018 Rishi Anand. All rights reserved.
//

import UIKit

class TownViewController: UIViewController {
    var mainPet = yourPet()
    var location = 1 //currentLayer
    var currLoc: Int = 0
    
    @IBOutlet weak var locLabel: UILabel!
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    @IBOutlet weak var backToTownBtn: UIButton!
    
    @IBOutlet weak var happinessBar: UIProgressView!
    @IBOutlet weak var hungerBar: UIProgressView!
    
    
    var buttonArray = [UIButton]()
    
    func btnClick(number: Int){
        let town = Town(pet: mainPet)
        if(location == 1){
            for i in 0..<(buttonArray.count){
                buttonArray[i].setTitle(town.placesAccessible[number].actionsAvailable[i].name, for: .normal)
            }
            backToTownBtn.setTitle("Back to Town", for: .normal)
            location = 2
            currLoc = number
            locLabel.text = town.placesAccessible[number].name
        }
        else if(location == 2){
            print(mainPet.happinessFloat)
            print(mainPet.hungerFloat)
            mainPet.happinessFloat += Double(town.placesAccessible[currLoc].actionsAvailable[number].happEffect)/100.0
            mainPet.hungerFloat += Double(town.placesAccessible[currLoc].actionsAvailable[number].hungEffect)/100.0
            happinessBar.setProgress(Float(mainPet.happinessFloat), animated: true)
            hungerBar.setProgress(Float(mainPet.hungerFloat), animated: true)
            print(mainPet.happinessFloat)
            print(mainPet.hungerFloat)
            let alert = UIAlertController(title: town.placesAccessible[currLoc].actionsAvailable[number].name, message: town.placesAccessible[currLoc].actionsAvailable[number].caption, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default){(action) in
                if(self.mainPet.checkDeath()){
                    self.killPet()
                    self.mainPet = yourPet()
                    self.happinessBar.setProgress(Float(self.mainPet.happinessFloat), animated: true)
                    self.hungerBar.setProgress(Float(self.mainPet.hungerFloat), animated: true)
                    self.namePet()
                }
            }
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func namePet(){
        print("namePet ran")
        let alert = UIAlertController(title: "Name your new pet!", message: nil, preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.placeholder = "Fido"
        }
        let okAction = UIAlertAction(title: "Go!", style: .default) { (action) in
            self.mainPet.petName = alert.textFields![0].text!
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        print(mainPet.petName)
    }
    
    func killPet(){
        var deathMessage = ""
        if(mainPet.reasonForDeath == "doubleDeath"){
            deathMessage = "Your pet died of starvation AND unhappiness!!!"
        }
        else if(mainPet.reasonForDeath == "hungerLow"){
            deathMessage = "Your pet died of starvation."
        }
        else if(mainPet.reasonForDeath == "hungerHigh"){
            deathMessage = "Your pet died of overfeeding."
        }
        else if(mainPet.reasonForDeath == "happinessLow"){
            deathMessage = "Your pet died of sadness."
        }
        else if(mainPet.reasonForDeath == "happinessHigh"){
            deathMessage = "Your pet died of overexcitement."
        }
        let alert = UIAlertController(title: "Oops!", message: deathMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            self.mainPet = yourPet()
            self.happinessBar.setProgress(Float(self.mainPet.happinessFloat), animated: true)
            self.hungerBar.setProgress(Float(self.mainPet.hungerFloat), animated: true)
            self.namePet()
        }
        
        
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let town = Town(pet: mainPet)
        buttonArray = [buttonA!, buttonB!, buttonC!, buttonD!]
        for i in 0..<(buttonArray.count){
            buttonArray[i].setTitle(town.placesAccessible[i].name, for: .normal)
        }
        hungerBar.setProgress(Float(mainPet.hungerFloat), animated: true)
        happinessBar.setProgress(Float(mainPet.happinessFloat), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            vc?.mainPet = self.mainPet
        }
    }
    

    @IBAction func buttonAClicked(_ sender: Any) {
        btnClick(number: 0)
    }
    
    @IBAction func buttonBClicked(_ sender: Any) {
        btnClick(number: 1)
    }
    
    @IBAction func buttonCClicked(_ sender: Any) {
        btnClick(number: 2)
    }

    @IBAction func buttonDClicked(_ sender: Any) {
        btnClick(number: 3)
    }
    
    @IBAction func backToTon(_ sender: Any) {
        if(location == 2){
            let town = Town(pet: mainPet)
            for i in 0..<(buttonArray.count){
                buttonArray[i].setTitle(town.placesAccessible[i].name, for: .normal)
            }
            location = 1
            backToTownBtn.setTitle("", for: .normal)
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
