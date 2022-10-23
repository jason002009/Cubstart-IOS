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
    let quantity: Int
    
    init(imageName: String, itemName: String, quantity: Int){
        self.imageName = imageName
        self.itemName = itemName
        self.quantity = quantity
    }
}
struct ContentView: View {
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12) ]
    var listVegie = [
        Items(imageName: "broccoli", itemName: "Brocoli", quantity: 7),
        Items(imageName: "cabbage", itemName: "Cabbage", quantity: 2),
        Items(imageName: "tomatoes", itemName: "Tomatoes", quantity: 5) ]
    var listDrinks = [
        Items(imageName: "coke", itemName: "Coke", quantity: 4)]
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Fruits")) {
                    ForEach(list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)}.navigationTitle("Shopping List")
                    }
                Section(header: Text("Vegatables")) {
                    ForEach(listVegie) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)}.navigationTitle("Shopping List")
                    }
                Section(header: Text("Drinks")) {
                    ForEach(listDrinks) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity)}.navigationTitle("Shopping List")
                    }
                }
            }
        }
    }
    
