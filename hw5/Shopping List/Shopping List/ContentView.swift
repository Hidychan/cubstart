//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let imageName: String
    let itemName: String
    let quantityName: Int
    
    init(image: String, item: String, quantity: Int) {
        self.imageName = image
        self.itemName = item
        self.quantityName = quantity
    }
}

struct ContentView: View {
    
    var fruit_list = [
        Items(image: "banana", item: "Bananas", quantity: 3),
        Items(image: "apple", item: "Apples", quantity: 4),
        Items(image: "blueberry", item: "Blueberries", quantity: 5),
        Items(image: "strawberry", item: "Strawberries", quantity: 7),
    ]
    
    var veget_list = [
        Items(image: "cucumber", item: "Cucumbers", quantity: 7),
        Items(image: "spinach", item: "Spinaches", quantity: 2),
        Items(image: "tomato", item: "Tomatoes", quantity: 8),
    ]
    
    var dairy_list = [
        Items(image: "eggs", item: "Eggs", quantity: 9),
        Items(image: "cheese", item: "Cheese", quantity: 4),
        Items(image: "milk", item: "Milk", quantity: 2),
    ]
    
    var body: some View {
        NavigationView {
            List() {
                Section(header: Text("Fruits")) {
                    ForEach(fruit_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantityName)
                    }
                }
                Section(header: Text("Vegetables")) {
                    ForEach(veget_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantityName)
                    }
                }
                Section(header: Text("Dairy")) {
                    ForEach(dairy_list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantityName)
                    }
                }
            }.navigationTitle("Shopping List")
        }
    }
}
    
