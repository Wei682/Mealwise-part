//
//  RecipeViewController.swift
//  MealWise
//
//  Created by Wei Xia on 4/24/22.
//

import UIKit

class RecipeViewController: UIViewController {
    let foods = ["Asparagus", "Bagel", "Burgers", "Chip Cookies", "Crispy Baked Chicken Legs", "Fried Chicken", "Mojito", "Ramen", "Pasta with Mostaccioli and Meatballs", "Pizza", "Potato Salad", "Shrimp Sacmpi with Pasta", "Waffles"]
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func beginButton(_ sender: Any) {
        let randNum = Int.random(in: 0..<foods.count)
        resultLabel.text = foods[randNum]
    }
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
}
