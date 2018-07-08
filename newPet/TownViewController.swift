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
    
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    var buttonArray = [UIButton!]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var town = Town(pet: mainPet)
        buttonArray = [buttonA!, buttonB!, buttonC!, buttonD!]
        for i in 0..<(buttonArray.count){
            buttonArray[i].setTitle(town.placesAccessible[i].name, for: .normal)
        }
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
