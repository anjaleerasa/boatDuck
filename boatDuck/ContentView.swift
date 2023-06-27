//
//  ContentView.swift
//  boatDuck
//
//  Created by Scholar on 6/27/23.
//yh

import SwiftUI

struct ContentView: View {
    @State private var japanButt = false
    var body: some View {
        ZStack{
            Color("tessaColor")
                .edgesIgnoringSafeArea(.all)
            VStack{
              Image("map")
                    .resizable()
                    .frame(width:350, height: 300)
                Text("✿-where would you like to go?-✿")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.107, brightness: 0.565))
                    .font(.title3)
                    .fontWeight(.semibold)
                    
                Text("click the icon that fits the location that you wish to visit")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.112, brightness: 0.369))
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                Button{
                    japanButt = true
                }label: {
                    Image("duckIcon")
                        .resizable()
                        .frame(width:100, height: 100)
                }
                Text("✿-JAPAN-✿")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.061, brightness: 0.577))
                    .multilineTextAlignment(.center)
                
                
            }
        }
        .sheet(isPresented: $japanButt){
            ZStack{
                        Color("colorSheet")
                            .ignoresSafeArea(.all)
                        VStack{
                           
                            Text("-this is sailor-")
                                .font(.subheadline)
                                .foregroundColor(Color.white)
                            
                            Button{
                                japanButt = true
                            }label: {
                                Image("duckIcon")
                                    .resizable()
                                    .frame(width:100, height: 100)
                            }
                            .buttonStyle(.borderedProminent)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .tint(Color(hue: 0.075, saturation: 0.113, brightness: 0.481))
                       
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
