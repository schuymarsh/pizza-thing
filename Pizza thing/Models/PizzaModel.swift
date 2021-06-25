//
//  Pizza.swift
//  Pizza thing
//
//  Created by Schuyler Marshall on 5/26/21.
//

import Foundation


struct PizzaModel {
    var favorites = [Pizza]()
    
    struct Pizza: Identifiable {
        var id = UUID()
        var name: String
        var toppings: [String]
    }
}

extension String: Identifiable {
    public var id: Int {
        self.hash
    }
}


