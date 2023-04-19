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
            
            
            
            Color.init(red: 130/255, green: 190/255, blue: 255/255)
            
            VStack{
                
                Text("Thinking about it, I decided to create an application that helps children, teaching math").padding(20)
                    .font(.system(size: 50))
                    .padding(.top , 100)
                
                Text("").padding(10)
                    .font(.system(size: 50))
                    
                
                
                
                
                
                Text("Save as many pizzas as you can")
                    .font(.system(size: 50))
                    .padding(.top , 10)

                HStack{
                    Image("pedaçoPizza")
                    Image("pedaçoPizza")
                }
                Text("With math questions!")
                    .font(.system(size: 50)).bold()
                
                
                NavigationLink{
                    ContentView()
                    
                }label:{
                    Text("Start Game").font(.largeTitle.bold()).padding(30)
                        .background(Color.blue)
                    
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                }.padding(20)
                .padding(.bottom , 100)
                
            }
        }
        .ignoresSafeArea()
        
    }

}


