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
            Color(hue: 0.092, saturation: 0.358, brightness: 0.247)

                .edgesIgnoringSafeArea(.all)
            VStack{
              Image("map")
                    .resizable()
                    .frame(width:350, height: 300)
                Text("Where would you like to go?")
                    .font(.title3)
                    .fontWeight(.semibold)
                    
                Text("click the icon that fits the location that you wish to visit")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                Button{
                    japanButt = true
                }label: {
                    Image("duckIcon")
                        .resizable()
                        .frame(width:100, height: 100)
                }
                Text("(Japan)")
                    .multilineTextAlignment(.center)
                
                
            }
        }
        .sheet(isPresented: $japanButt){
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
