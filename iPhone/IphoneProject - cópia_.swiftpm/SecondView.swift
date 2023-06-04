//
//  SecondView.swift
//  wwdcProject
//
//  Created by Gabriel Rossi on 08/04/23.
//

import SwiftUI
import SpriteKit

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.blue
            VStack{
                Text("Save as many pizzas as you can")
                
                NavigationLink{
                    ContentView()
                    
                }label:{
                    Text("Start Game").font(.largeTitle.bold()).padding(30)
                        .background(Color.white)
                    
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                }
            }
           // .ignoresSafeArea()
        }
    }
}


