//
//  ContentView.swift
//  boatDuck
//
//  Created by Scholar on 6/27/23.
//yh

import SwiftUI

struct ContentView: View {
    @State private var japanButt = false
    @State private var cultureButt = false
    @State private var nestedCultureButt = false
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
                Text("✿-TOKYO-✿")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.061, brightness: 0.577))
                    .multilineTextAlignment(.center)
                
                
            }
        }
        .sheet(isPresented: $japanButt){
            ZStack{
                        Color("colorsheet")
                            .ignoresSafeArea(.all)
                VStack{
                    HStack{
                        Image("upperLeft")
                        .resizable()
                          .frame(width:150, height:150)
                        Button{
                            nestedCultureButt = true
                        }label: {
                            Image("upperRight")
                                .resizable()
                                .frame(width:150, height:150)
                        }
//                        NavigationStack{
//                            NavigationLink(destination:culture()){
//                                Text("upperRight")
//                            }
//                        }
                    }
                
                    HStack{
                        Image("leftBlue")
                        .resizable()
                          .frame(width:150, height:150)
                        Image("swimDuck")
                           .resizable()
                            .frame(width:100, height:100)
                        Image("rightBlue")
                            .resizable()
                        .frame(width:150, height:150)
                    }
                   
                    HStack{
                        Spacer()
                        Image("lowerLeft")
                        .resizable()
                          .frame(width:150, height:150)
                        Image("lowerRight")
                        .resizable()
                          .frame(width:150, height:150)
                        Spacer()
                    }
                }
                
//
                        }
        }//end of sheet
                    }//end of body
                }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
