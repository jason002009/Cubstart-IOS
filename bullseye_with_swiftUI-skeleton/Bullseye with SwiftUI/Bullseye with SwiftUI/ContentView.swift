//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State var num: Double = 50
    @State var toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding(20)
            }
            
            .padding(.top, 20)
            
            Spacer()
        }
        VStack() {
            Text("Move the slier to:")
            Text("25")
            Slider(value: $num, in: 0...100) {
                
            }
            Button("Check") {
            }
        }
        .padding(20)
        .padding(.bottom, 300)
        
        VStack() {
            Text("Exact Mode?")
            Toggle("", isOn: $toggle)
                .frame(width: 40)
        }
    }
}
