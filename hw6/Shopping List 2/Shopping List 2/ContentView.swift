//
//  ContentView.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

class Items: Identifiable {
    
    var itemName: String
    
    var quantity: String
    
    init(itemName: String, quantity: String) {
        
        self.itemName = itemName
        
        self.quantity = quantity
    }
    
}

struct ContentView: View {
    
    @State var temItemName: String = ""
    @State var tempQuantity: String = ""
    
    var list = [
        Items(itemName: "Bananas", quantity: "3"),
        Items(itemName: "Apples", quantity: "4"),
        Items(itemName: "Eggs", quantity: "12")
    ]
    
    func addItem() {
        list.append(Items(itemName: tempItemName, quantity: tempQuantity))
    }
    
    func addItem() {
        list.append(Items(itemName: tempItemName, quantity:tempQuantity))
        tempItemName = ""
        
        tempQuantity = ""
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
                
                HStack {
                    TextField("Item Name", text: $temItemName)
                    
                    Spacer()
                    
                    TextField("Quantity", text: $tempQuantity)
                }
                
                Button("Add New Item") {
                    
                }
            }.navigationTitle("Shopping List")
        }
    }
}
