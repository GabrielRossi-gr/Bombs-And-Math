//
//  FirstView.swift
//  wwdcProject
//
//  Created by Gabriel Rossi on 06/04/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        
      
            
            ZStack{
                Color.init(red: 130/255, green: 190/255, blue: 255/255)
               
                VStack(alignment: .leading){
                    
                    NavigationLink{
                        SecondView()
                        
                    }label:{
                        Text("Next").font(.largeTitle.bold()).padding(30)
                            .background(Color.blue)
                        
                            .border(Color.black, width: 2)
                            .cornerRadius(20)
                    }.padding(20)
                        .padding(.top , 100)
//                        .padding(.leading , 500)
                    
                }.padding(30)
                    .padding(.top, 40)
            }
            
            .ignoresSafeArea()
    }
    
}





