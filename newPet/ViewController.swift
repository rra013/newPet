//
//  ViewController.swift
//  newPet
//
//  Created by Rishi Anand on 7/4/18.
//  Copyright © 2018 Rishi Anand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var happinessBar: UIProgressView!
    
    @IBOutlet weak var hungerBar: UIProgressView!
    
    var mainPet = yourPet()
    
    func killPet(){
        var deathMessage = ""
        if(mainPet.reasonForDeath == "doubleDeath"){
            deathMessage = "Your pet died of starvation AND unhappiness!!!"
        }
        else if(mainPet.reasonForDeath == "hungerLow"){
            deathMessage = "Your pet died of starvation."
        }
        else if(mainPet.reasonForDeath == "hungerHigh"){
            deathMessage = "Your pet died of starvation."
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
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func feedPressed(_ sender: Any) {
        mainPet.feed()
        if(!mainPet.checkDeath()){
            //if not died
            happinessBar.setProgress(Float(mainPet.happinessFloat), animated: true)
            hungerBar.setProgress(Float(mainPet.hungerFloat), animated: true)
        }
        else if(mainPet.checkDeath()){
            killPet()
        }
    }
    
    @IBAction func playPressed(_ sender: Any) {
        mainPet.play()
        if(!mainPet.checkDeath()){
            //if not died
            happinessBar.setProgress(Float(mainPet.happinessFloat), animated: true)
            hungerBar.setProgress(Float(mainPet.hungerFloat), animated: true)
        }
        else if(mainPet.checkDeath()){
            killPet()
        }
    }
    
    @IBAction func goOutPressed(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

