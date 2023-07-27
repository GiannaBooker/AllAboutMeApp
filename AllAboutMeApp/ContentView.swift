//
//  ContentView.swift
//  AllAboutMeApp
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var funfact = ""
    @State private var imageName = "coolg"
    
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            
            
            VStack(alignment: .center, spacing: 20.0) {
                Text("All About Me!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    
                
                
                
                Image(imageName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(height: nil)
                    .cornerRadius(25)
                

                
                
                HStack(spacing: 20.0) {
                    Text("I am passionate about softball and I have been playing since I was 5 years old.")
                        .fontWeight(.regular)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        
                    
                    
                    
                }//closing hstack
                Text("")
                    .font(.caption)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                
                Button("Facts about me") {
                    funfact = "I will recieve my Associates degree in Computer Science this year!"
                    imageName = "cuteg"
                }.font(.title2)
                    .buttonStyle(.borderedProminent)
                    .tint(.black)
                    .multilineTextAlignment(.center)
                
                
                
                Text(funfact)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
            
            }//closing vstack
            
        }//closing zstack
        
    }//closing some view
}//closing content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

