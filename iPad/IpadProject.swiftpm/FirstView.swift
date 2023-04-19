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
                    
                    
                    Text("MEC information").font(.system(size: 30))
                    Text("Educators from a university (UNILA) disclose a diagnosis of high school dropout in two schools").font(.system(size: 40)).bold()
                    
                    Text("\n▶︎ students ”don't understand the subjects of " + "math" + ", and fail after that they drop out of school”").font(.system(size: 30))
                    
                    Text("year of study: 2013").font(.system(size: 20)).padding(.bottom, 40)
                    
                    
                    Text("IPEC information").font(.system(size: 30))
                    Text("About 2 million children between 11 and 19 years old have dropped out of school in Brazil.").font(.system(size: 40)).bold()
                    
                    Text("They represent 11% of the total sample").font(.system(size: 30))
                    
                    Text("\n▶︎  30% of children say they left because they were  unable to follow the explanations or activities").font(.system(size: 30))
                    
                    Text("year of study: 2022").font(.system(size: 30)).bold()
                    
                    
                    NavigationLink{
                        SecondView()
                        
                    }label:{
                        Text("Next").font(.largeTitle.bold()).padding(30)
                            .background(Color.blue)
                        
                            .border(Color.black, width: 2)
                            .cornerRadius(20)
                    }.padding(20)
                        .padding(.top , 100)
                        .padding(.leading , 500)
                  
            
                }.padding(30)
                    .padding(.top, 40)
            }
            
            .ignoresSafeArea()
    }
    
}





