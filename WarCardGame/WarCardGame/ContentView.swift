//
//  ContentView.swift
//  WarCardGame
//
//  Created by Habibulloh on 08/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var ranNum1 = 4
    @State private var ranNum2 = 11
    @State private var Score1 = 0
    @State private var Score2 = 0

    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
        VStack {
                VStack {
                    Spacer() 
                    Image("logo")
                    Spacer()
                    
                    HStack{
                        Image("card" + String(ranNum1))
                        Image("card" + String(ranNum2))
                        
                    }
                    Spacer()
                    Button(action: {
                        //there is task it is our action
                        //WE need to randomize cards shuffling them
                        ranNum1 = Int.random(in: 2...14)
                        ranNum2 = Int.random(in: 2...14)
                        if self.ranNum1 > self.ranNum2
                        {
                            self.Score1 += 1
                        }
                        else if self.ranNum1 < self.ranNum2
                        {
                            self.Score2 += 1
                        }
                        else if self.ranNum1 == self.ranNum2
                        {
                            self.Score1 += 0
                            self.Score2 += 0
                        }
                          
                        
                    
                    })
                    {
                        Image("dealbutton").renderingMode(.original)
                    }
                
                    Spacer()
                    HStack
                    {
                        
                        VStack {
                            Text("Player")
                                .padding(.bottom, 20)
                                .bold()
                            Text(String(Score1))
                            
                                
                        }
                        .padding(.leading, 20)
                        .foregroundColor(.white)
                        
                        Spacer()
                        VStack {
                            Text("CPU")
                                .padding(.bottom, 20)
                                .bold()
                            
                            Text(String(Score2))
                            
                            
                        }
                        .padding(.trailing, 20)
                        .foregroundColor(.white)
                        
                      
                        .padding(.bottom)
                        
                    }
                    Spacer()
                    
                    
                    
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
