//
//  ContentView.swift
//  Pizza thing
//
//  Created by Schuyler Marshall on 5/26/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var pizzaVM = PizzaVM()
    
    var body: some View {
        
        VStack {
            List(pizzaVM.favorites) { pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(pizza.toppings) { topping in
                                Text(topping)
                            }
                        }
                    }
                }
            }
            .layoutPriority(1)
            
            
            Button("Add Pinapple") {
                pizzaVM.addPineapple()
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            
        
            Spacer()
                .layoutPriority(1)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//VStack {
    
//    List(pizzaVM.favorites) { pizza in
//        VStack(alignment: .leading) {
//            Text(pizza.name)
//                .font(.title)
//                .multilineTextAlignment(.leading)
//
//            HStack {
//                ForEach(pizza.toppings) { topping in
//                    Text(topping)
//                }
//            }
//        }
//    }
//
//            Button("Add Pineapple") {
//                pizzaVM.addPineapple()
//            }
//}
