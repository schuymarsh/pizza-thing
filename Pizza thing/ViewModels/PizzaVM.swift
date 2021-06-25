//
//  File.swift
//  Pizza thing
//
//  Created by Schuyler Marshall on 5/26/21.
//

import Foundation
import SwiftUI


class PizzaVM: ObservableObject{
    @Published private var pizzaModel = PizzaModel()
    
    var favorites: [PizzaModel.Pizza] {
        pizzaModel.favorites
    }
    
    init() {
        pizzaModel.favorites.append(PizzaModel.Pizza(name: "Cheese", toppings: ["Mozzerela", "Goat", "Feta"]))
        pizzaModel.favorites.append(PizzaModel.Pizza(name: "Meat", toppings: ["Pepperoni", "Cheese", "Sausage"]))
    }
    
    func addPineapple() {
        let favoritesCount = pizzaModel.favorites.count
        let indexRange = 0..<favoritesCount
        let randomIndex = indexRange.randomElement()!
        
    
        var randomPizza = pizzaModel.favorites[randomIndex]
        randomPizza.toppings.append("Pineapple")
        
        pizzaModel.favorites[randomIndex] = randomPizza
    }
}
