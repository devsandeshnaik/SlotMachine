//
//  ContentView.swift
//  Slot Machine
//
//  Created by Sandesh on 17/08/20.
//  Copyright © 2020 devsandesh. All rights reserved.
//

import SwiftUI

 // MARK:- Properties
struct ContentView: View {
    // MARK:- Body
    
    var body: some View {
        ZStack {
            //MARK:- Background
            LinearGradient(gradient: Gradient(colors: [Color.colorPink, Color.colorPurple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            //MARK:- Interface
            VStack(alignment: .center, spacing: 5) {
                //MARK:- Header
                LogoView()
                Spacer()
                
                //MARK:- Score
                HStack {
                    HStack {
                        Text("Your \nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    
                    Spacer()
                    
                    HStack {
                        Text("200")
                        .scoreNumberStyle()
                        .modifier(ScoreNumberModifier())
                        
                        Text("High \nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                //MARK:- Slot Machine
                //MARK:- Footer
                
                Spacer()
            }
                //MARK:- Buttons
                .overlay(
                    //Reset
                    Button(action: {
                        print("Reset the Game")
                    }, label: {
                        Image(systemName: "arrow.2.circlepath.circle")
                    })
                        .modifier(ButtonModiFier()),
                    alignment: .topLeading
            )
                .overlay(
                        //Info
                        Button(action: {
                            print("Info View")
                        }, label: {
                            Image(systemName: "info.circle")
                        })
                            .modifier(ButtonModiFier()),
                        alignment: .topTrailing
                )
                .padding()
                .frame(maxWidth: 720)
            
            
            //MARK:- Popup
        }//ZStack
    }
}

// MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
