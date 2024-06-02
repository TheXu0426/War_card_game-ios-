//
//  ContentView.swift
//  War Card Game
//
//  Created by Qinghe Xu on 27/5/2024.
//
//  Ackowledgement
//  Thanks to Chris for sharing the code
//  Youtuber: CodeWithChris
//  Reference: https://www.youtube.com/watch?v=K0t-RCSlasE
//

import SwiftUI

struct ContentView: View {
    
    @State var player_card = "card7"
    @State var cpu_card = "card13"
    
    @State var player_score = 0
    @State var cpu_score = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(player_card)
                    Spacer()
                    Image(cpu_card)
                    Spacer()
                }
                
                
                Spacer()
                
                
               
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player ")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(player_score)) //casting
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU ")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(cpu_score)) //casting
                            .font(.largeTitle)
                    }
                    Spacer()
                }.padding()
                    .foregroundColor(.white)
                Spacer()
                
            }
            .padding()
            
        }
        
        
        
    }
    
    func deal(){
        //randomize player cards
        let player_card_value = Int.random(in: 2...14)
        player_card = "card" + String(player_card_value)//string concatenation
        
        
        
        //random mize the cpu card
        let cpu_card_value = Int.random(in: 2...14)
        cpu_card = "card" + String(cpu_card_value)//string concatenation
        
        
        //updte score
        if player_card_value > cpu_card_value{
            player_score += 1
        }
        else if cpu_card_value > player_card_value{
            cpu_score += 1
        }
        
    }
    
}

#Preview {
    ContentView()
}
